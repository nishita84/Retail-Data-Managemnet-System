----------------------------------------Tables
Create table Customer 
(
CustomerID int  identity (1000,1) not null primary key,
CustFName varchar(30) not null,
CustLName varchar(30) not null,
CustGender char(1), --M or F
CustAddr varchar (50),
City varchar(20),
Zip int,
Phone bigint not null ,
Email varchar(100) not null,
DOB date not null

constraint uniq_phone unique (Phone)
);

Create table Employee
(EmployeeID int not null identity(100,1) Primary key,
SSN varchar (11) not null,
Fname varchar(30),
Lname varchar(30),
DOB date,
Gender char(1),
Salary float,
Deptno varchar(2),
Address_line1 varchar(100),
Address_line2 varchar(100),
city varchar(20),
State varchar(20),
ManagerID int );



Create table Store
(StoreNo int not null identity(1,1) Primary key,
LocationName varchar(20),
LManagerID int not null

constraint Manager_fk foreign key (LManagerID ) references dbo.Employee(EmployeeID))




Create table Department
(
Deptno varchar(2) not null primary key,
DeptName varchar(20),
ManagerID int not null,
StoreNo int not null



Constraint FKmanager_dept foreign key (ManagerID) references Employee(EmployeeID),
Constraint FKstore_dept foreign key (StoreNo) references Store(StoreNo)

)


Create table [Order]
(
OrderID int identity (1,1) not null primary key,
CustomerID int,
--PaymentID varchar(30),
OrderType varchar(30),
OrderDate date,
StoreNo int
CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID)
REFERENCES Customer(CustomerID),
CONSTRAINT FK_StoreNo FOREIGN KEY (StoreNo)
REFERENCES Store(StoreNo)
)

Create Table Payment
(
PaymentID int identity(100,1) not null primary key,
PaymentType varchar(30),
ChequeNumber bigint,--varbinary,  --encrypt
CardType varchar(20),
CExpiryDate date,
CNumber bigint,--varbinary,
TranscationDate date,
Amount int,
OrderID int
CONSTRAINT FK_OrderID FOREIGN KEY (OrderID)
REFERENCES [Order](OrderID)
)


CREATE TABLE Product 
(
ProductNo int not null identity(1,1) primary key,
ProductName varchar(30), ---ex Nike T-shirt Blue 
ProductType varchar(30), ----Sportswear
UnitPrice int
)

CREATE TABLE Warehouse
(
WareHouseID int identity(1,1) not null primary key,
StoreNo int ,
WareHouseName varchar(30),
StorageSpace int,
CONSTRAINT FK_StoreNoWarehouse FOREIGN KEY (StoreNo) REFERENCES Store(StoreNo)
)

CREATE TABLE StockProduct
(
WareHouseID int,
ProductNo int,
Quantity int,
ProductArrivalDate date,
CONSTRAINT FK_WareHouseID FOREIGN KEY (WareHouseID)
REFERENCES Warehouse(WareHouseID),
CONSTRAINT FK_ProductNoStockProduct FOREIGN KEY (ProductNo)
REFERENCES Product(ProductNo)
)



------------------ to be excuted after data entry is done in department
Alter table Employee
add constraint FKdeptNo foreign key (DeptNo) references Department(DeptNo)



------------------------------------------------------------------------------
------------------------check constraint ***
--select * from [OrderLine]

alter table [order]
add constraint chk_order check (OrderType in ('Online','Offline'))

--------------------------------------------------


-----------------------Nonclustered Index ****

create NonClustered index Order_date_Store 
      on [Order] (OrderDate desc, StoreNo )

----------------------------------------------------

---------------------------UDF used for Computed column(Amount) 

create function [dbo].[UnitPrice] (@ProdID int)

RETURNS int
AS BEGIN
   declare @result int
   select @result = UnitPrice 
   from Product
   where ProductNo = @ProdID

    RETURN @result
END
GO

----------table with computed column ***
Create Table Order_Line
(
OrderID int,
ProductNo int,
Quantity int,
Amount as dbo.UnitPrice (ProductNo) * Quantity,

CONSTRAINT FK_OrderIDOrderLine1 FOREIGN KEY (OrderID)
REFERENCES [Order](OrderID),
CONSTRAINT FK_ProductNo1 FOREIGN KEY (ProductNo)
REFERENCES Product(ProductNo)

)

----------------------------------------------

----------------------------view 1
CREATE VIEW Amount_50
AS
select c.CustFName, c.CustLName, o.OrderID
from 
order_line p
join [Order] o on p.orderId= o.orderId
join customer c on o.customerID=c.customerID
WHERE Amount >50;


--select * from Amount_50
-------------------------view 2
create view Multiple_visits as
select CustomerID, count(1) visits
from [Order]
group by CustomerID
having count(1) >1


--select * from Multiple_visits

----------------------------- View 3
create  View Store_abv_abs as
select LocationName,
(sum(Quantity) / Count(ol.orderID))  Average_Basket_Size,
(Sum(Amount)/count(ol.OrderID)) Average_Basket_Value
from [Order] o
join Order_Line ol  on o.OrderID = ol.OrderID
join Store s on o.StoreNo = s.StoreNo
group by LocationName 

--select * from Store_abv_abs

------------------------------------------
----------------Stored Procedures

-----------------Proc 1 warehouse update
Create Proc Update_Warehouse 
@WID int, @PID int, @Qty int as
begin

	if( @PID in (Select distinct ProductNo from StockProduct where WareHouseID = @WID))
	Begin 
	update StockProduct
	set Quantity = @Qty,
		ProductArrivalDate = GETDATE()
	where WareHouseID = @WID and ProductNo = @PID
	end
	
	Else
	Begin
	insert into StockProduct values
	(@WID, @PID,@Qty,GETDATE())
	End

end

---------------------------------

--------------------SP 2 Place order
----create user defined table type used in below sp

CREATE TYPE prodtype AS TABLE
(

prod int, Qty int
)





Create Proc Place_order 
(@CustID int , @OdType varchar(10), @Odate date,
@store int , @orderline prodtype Readonly )as
Begin
declare @temp int, @oid int

select @temp = WareHouseID from Warehouse where StoreNo = @store

	if 
	((select Count(1)
		from StockProduct a
		join @orderline b on a.ProductNo = b.prod
		where WareHouseID = @temp and
		Quantity > Qty) >= (select count(1) from @orderline))
	Begin
	
	insert into [Order]
	values
	(@CustID, @OdType, @Odate, @store)

	select @oid = max(OrderID) from [Order]

	insert into Order_Line
	select @oid , * from @orderline

	End

	else 
	begin
	print 'Products out of Stock'
	end


end

/* --execution 
begin tran

DECLARE @orderline1 prodtype 

INSERT INTO @orderline1 VALUES (1, 1)
--INSERT INTO @orderline VALUES (2, 1)

--select * into #a from @orderline
declare 
@CustID int   ,  @OdType varchar(10) , @Odate date ,
@store int 

set @CustID = 1010 set @OdType ='Online' set @Odate = '2021-02-01' set @store = 1

EXECUTE dbo.Place_order @CustID, @OdType, @Odate , @store, @orderline1

*/

---------------------------------------------------------------

------------SP 3 Create new customer ---used in UI

Create proc Customer_entry 
(@Fname varchar(30), @Lname varchar(30), @sex char,
 @Addr varchar(50), @city varchar(20), @zip int,
 @pno bigint, @mail varchar(100), @dob date) as
 Begin

 if (@pno not in (select distinct Phone from Customer))
	Begin
	Insert into Customer values
	(@Fname, @Lname, @sex, @Addr, @city, @zip, @pno, @mail, @dob)

	Select 'New Customer Added' as remark,* from Customer where CustomerID = (select max(CustomerID) from Customer)
	End
else 
	Begin
	

	select 'Customer Already Exists' as remark,* from Customer where Phone = @pno
	End

End

------------------------------
----------------------------------SP4 used in trigger

---------User defined table type used in trigger
Create type CustNames as table
(
Fname varchar(30)
)


Create Proc [dbo].[Return_Message] (@message CustNames Readonly )
as
Begin 

select * from  @message

END

--------------------------------------------------
-------------------------------------------------Trigger

Create TRIGGER bday_reminder ON dbo.[Order]
    FOR INSERT
AS
Begin
	  declare @Cust table
	  (fname varchar(80))
	  Insert into @Cust
	  SELECT   'Happy Birthday ' +c.CustFName
	  from Customer c
	  join inserted o on c.CustomerID = o.CustomerID
	  where DATEPART(day,OrderDate) = DATEPART(day,DOB) and 
	  DATEPART(month, OrderDate) = DATEPART(month, DOB)


	 If( (select count(1) from @Cust ) >0)
		begin
		declare @temp CustNames

		insert into @temp
		select * from @Cust

		exec [dbo].[Return_Message]  @temp
		end


	 End

------------------------------------------------------------------


