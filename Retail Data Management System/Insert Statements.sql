USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/1/2021 10:46:18 AM ******/

SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1010, N'Heer', N'Mehta', N'F', N'7 Huntington Ave', N'Boston', 2115, 8573138813, N'mehta.hee@northeastern.edu', CAST(N'1997-09-27' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1011, N'Nirmiti ', N'Patil', N'F', N'32 Washtington Street', N'Boston', 2114, 8759632141, N'patil.nir@northeastern.edu', CAST(N'1997-10-01' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1012, N'Saswato', N'Bhattarcharya', N'M', N'890 Huntington Ave', N'Boston', 2115, 8574129963, N'bhattacharyya.sa@northeastern.edu', CAST(N'1995-04-23' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1013, N'Nishita', N'Upadhyay', N'F', N'12 Mission Hill', N'Boston', 2113, 8574785521, N'upadhyay.ni@northeastern.edu', CAST(N'1996-11-20' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1014, N'Gaurav', N'Thorat', N'M', N'31 Jvue Appartments', N'Boston', 2114, 8759657745, N'mehta.hee@northeastern.edu', CAST(N'1994-12-15' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1015, N'Dhruv', N'Patel', N'M', N'145 Harrington Road', N'Boston', 2111, 8974561231, N'patil.nir@northeastern.edu', CAST(N'1997-11-05' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1016, N'Yash', N'Shah', N'M', N'13 Bolyton Street', N'Boston', 2110, 4567891231, N'bhattacharyya.sa@northeastern.edu', CAST(N'1991-01-22' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1017, N'Drishti', N'Sabhaya', N'F', N'2 Worthington Street', N'Boston', 2120, 8896548545, N'upadhyay.ni@northeastern.edu', CAST(N'1994-02-23' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1018, N'Dhwani ', N'Patel', N'F', N'10 Ruggles Street', N'Boston', 2114, 8579633318, N'mehta.hee@northeastern.edu', CAST(N'1992-03-27' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1019, N'Pankti', N'Shah', N'F', N'2 Washington Street', N'Boston', 2113, 8574511147, N'patil.nir@northeastern.edu', CAST(N'1990-09-13' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1020, N'Rock', N'Johnson', N'M', N'23 Street', N'New York', 2116, 9823406214, N'bhattacharyya.sa@northeastern.edu', CAST(N'1996-11-01' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1021, N'Clarison', N'Dsilva', N'M', N'115 st stephen', N'Boston', 2115, 2233445566, N'shashb10@gmail.com', CAST(N'1999-01-02' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1022, N'Dimitri', N'Vegas', N'M', N'115 St Stephen', N'Boston', 2115, 9988221128, N'bhattacharyya.sa@northeastern.edu', CAST(N'1996-02-01' AS Date))
INSERT [dbo].[Customer] ([CustomerID], [CustFName], [CustLName], [CustGender], [CustAddr], [City], [Zip], [Phone], [Email], [DOB]) VALUES (1023, N'Amar', N'Jha', N'M', N'115 St Stephen', N'Boston', 2115, 91919191990, N'bhattacharyya.sa@northeastern.edu', CAST(N'1996-02-01' AS Date))
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO


USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/1/2021 10:46:18 AM ******/

INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'1', N'D1', 111, 1)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'10', N'D10', 120, 10)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'2', N'D2', 112, 2)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'3', N'D3', 113, 3)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'4', N'D4', 114, 4)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'5', N'D5', 115, 5)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'6', N'D6', 116, 6)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'7', N'D7', 117, 7)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'8', N'D8', 118, 8)
INSERT [dbo].[Department] ([Deptno], [DeptName], [ManagerID], [StoreNo]) VALUES (N'9', N'D9', 119, 9)
GO

USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/1/2021 10:46:18 AM ******/

SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (111, N'409-58-5441', N'Vaishnavi', N'Shah', CAST(N'2000-11-24' AS Date), N'F', 33315, N'1', N'145 Beacon Street', N'Apt 6', N'Boston', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (112, N'741-58-6325', N'Krishna', N'Mayavat', CAST(N'2000-08-25' AS Date), N'F', 58449, N'2', N'40 Bolyston Street', N'Apt 4', N'Boston', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (113, N'987-58-8965', N'Daiveek', N'Nair', CAST(N'1993-07-12' AS Date), N'M', 43788, N'3', N'145 Harrington Road', N'Apt 1', N'Waltham', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (114, N'412-74-8952', N'Shashwat', N'Rathod', CAST(N'1999-07-27' AS Date), N'M', 55359, N'4', N'32 Addison Street', N'Apt 4', N'Worcester', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (115, N'123-56-7894', N'Nidhi', N'Patel', CAST(N'1994-04-15' AS Date), N'F', 23140, N'5', N'3 Washington Street', N'Apt 3', N'Boston', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (116, N'339-58-7412', N'Srushti', N'Ladani', CAST(N'1995-03-30' AS Date), N'F', 50774, N'6', N'12 Ruggles Street', N'Apt 7', N'Boston', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (117, N'741-89-2589', N'Nikita', N'patil', CAST(N'1988-02-02' AS Date), N'F', 54038, N'7', N'896 Huntington Avenue', N'Apt 4', N'Waltham', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (118, N'987-56-8897', N'Archie', N'Sanghvi', CAST(N'1997-01-14' AS Date), N'F', 37517, N'8', N'12 Moody Street', N'Apt 3', N'Waltham', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (119, N'321-71-8513', N'Jaynil', N'Patel', CAST(N'1985-12-12' AS Date), N'M', 51360, N'9', N'892 Huntington Avenue', N'Apt 2', N'Boston', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (120, N'958-74-4521', N'Yatharth', N'Desai', CAST(N'1981-11-15' AS Date), N'M', 43939, N'10', N'456 Brussels Street', N'Apt 7', N'Worcester', N'Massachusetts', 121)
INSERT [dbo].[Employee] ([EmployeeID], [SSN], [Fname], [Lname], [DOB], [Gender], [Salary], [Deptno], [Address_line1], [Address_line2], [city], [State], [ManagerID]) VALUES (121, N'123-45-7878', N'Boss', N'Man', CAST(N'1989-02-01' AS Date), N'M', 80000, NULL, N'12 Symphony Street', N'Apt99', N'Boston', N'Massachusetts', NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO

USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/1/2021 10:46:18 AM ******/

SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (1, 1012, N'Online', CAST(N'2021-11-01' AS Date), 1)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (2, 1013, N'Online', CAST(N'2021-11-04' AS Date), 2)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (3, 1016, N'Offline', CAST(N'2021-10-05' AS Date), 3)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (4, 1010, N'Online', CAST(N'2021-10-27' AS Date), 4)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (5, 1017, N'Offline', CAST(N'2021-11-15' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (6, 1019, N'Offline', CAST(N'2021-11-15' AS Date), 6)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (7, 1012, N'Online', CAST(N'2021-11-20' AS Date), 7)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (8, 1010, N'Offline', CAST(N'2021-10-30' AS Date), 8)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (9, 1015, N'Online', CAST(N'2021-10-31' AS Date), 9)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (10, 1014, N'Offline', CAST(N'2021-11-02' AS Date), 10)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (12, 1010, N'Offline', CAST(N'2021-08-09' AS Date), 5)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (13, 1017, N'Online', CAST(N'2021-07-02' AS Date), 7)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (14, 1014, N'Online', CAST(N'2021-07-12' AS Date), 1)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (15, 1013, N'Offline', CAST(N'2021-05-11' AS Date), 3)
INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderType], [OrderDate], [StoreNo]) VALUES (16, 1016, N'Online', CAST(N'2021-12-12' AS Date), 10)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO

USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Order_Line]    Script Date: 12/1/2021 10:46:18 AM ******/

INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (1, 3, 2)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (2, 8, 3)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (3, 10, 5)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (4, 1, 4)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (5, 9, 1)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (6, 6, 2)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (7, 2, 3)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (8, 10, 5)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (9, 7, 7)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (10, 10, 4)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (16, 1, 1)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (12, 8, 3)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (13, 2, 2)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (14, 10, 4)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (15, 7, 2)
INSERT [dbo].[Order_Line] ([OrderID], [ProductNo], [Quantity]) VALUES (16, 8, 3)
GO

USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 12/1/2021 10:46:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (100, N'Cash', NULL, NULL, NULL, NULL, NULL, 32, 1)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (101, N'Card', NULL, N'Visa', CAST(N'2026-06-12' AS Date), 972847, NULL, 51, 2)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (102, N'Card', NULL, N'MasterCard', CAST(N'2028-11-12' AS Date), 140550, NULL, 45, 3)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (103, N'Cash', NULL, NULL, NULL, NULL, NULL, 76, 4)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (104, N'Cash', NULL, NULL, NULL, NULL, NULL, 11, 5)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (105, N'Card', NULL, N'Visa', CAST(N'2029-12-03' AS Date), 376882, NULL, 58, 6)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (106, N'Cash', NULL, NULL, NULL, NULL, NULL, 45, 7)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (107, N'Cash', NULL, NULL, NULL, NULL, NULL, 45, 8)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (108, N'Card', NULL, N'Visa', CAST(N'2027-05-02' AS Date), 942390, NULL, 126, 9)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (109, N'Card', NULL, N'Visa', CAST(N'2029-11-11' AS Date), 751977, NULL, 36, 10)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (120, N'Cash', NULL, NULL, NULL, NULL, NULL, 70, 16)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (121, N'Card', NULL, N'Visa', CAST(N'2029-01-12' AS Date), 675432, NULL, 51, 12)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (122, N'Card', NULL, N'MasterCard', CAST(N'2028-01-12' AS Date), 987234, NULL, 30, 13)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (123, N'Cash', NULL, NULL, NULL, NULL, NULL, 36, 14)
INSERT [dbo].[Payment] ([PaymentID], [PaymentType], [ChequeNumber], [CardType], [CExpiryDate], [CNumber], [TranscationDate], [Amount], [OrderID]) VALUES (124, N'Card', NULL, N'Visa', CAST(N'2027-04-08' AS Date), 187523, NULL, 36, 15)
SET IDENTITY_INSERT [dbo].[Payment] OFF
go

USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/1/2021 10:46:18 AM ******/

SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (1, N'Nike T-Shirt ', N'Sportswear', 19)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (2, N'Nike Shorts', N'Sportswear', 15)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (3, N'Adidas Shorts', N'Sportswear', 16)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (4, N'Puma Shorts', N'Sportswear', 15)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (5, N'Allen Solly Shirt', N'Formals', 23)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (6, N'Allen Solly Trousers', N'Formals', 29)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (7, N'Adidas T-shirt ', N'Sportswear', 18)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (8, N'Puma T-Shirt ', N'Sportswear', 17)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (9, N'Allen Solly Tie', N'Formals', 11)
INSERT [dbo].[Product] ([ProductNo], [ProductName], [ProductType], [UnitPrice]) VALUES (10, N'Adidas Socks', N'Sportswear', 9)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[StockProduct]    Script Date: 12/1/2021 10:46:18 AM ******/

INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (1, 1, 2, CAST(N'2021-11-12' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (2, 2, 3, CAST(N'2020-07-07' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (3, 3, 5, CAST(N'2021-05-04' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (4, 4, 4, CAST(N'2021-04-09' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (5, 5, 1, CAST(N'2021-06-04' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (6, 6, 2, CAST(N'2021-12-12' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (7, 7, 3, CAST(N'2021-11-11' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (8, 8, 5, CAST(N'2020-10-11' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (9, 9, 7, CAST(N'2021-01-11' AS Date))
INSERT [dbo].[StockProduct] ([WareHouseID], [ProductNo], [Quantity], [ProductArrivalDate]) VALUES (10, 10, 4, CAST(N'2021-03-12' AS Date))
GO

USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 12/1/2021 10:46:18 AM ******/

SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (1, N'Beacon Street', 111)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (2, N'Bolyston Street', 112)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (3, N'Huntington Avenue', 113)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (4, N'Brookline Avenue', 114)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (5, N'Ruggles Street', 115)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (6, N'Washington Street', 116)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (7, N'Arlington Street', 117)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (8, N'Fenway Park', 118)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (9, N'Commonwealth Avenue', 119)
INSERT [dbo].[Store] ([StoreNo], [LocationName], [LManagerID]) VALUES (10, N'Park Drive', 120)
SET IDENTITY_INSERT [dbo].[Store] OFF
GO

USE [DMDD_PROJECT]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 12/1/2021 10:46:18 AM ******/

SET IDENTITY_INSERT [dbo].[Warehouse] ON 

INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (1, 1, N'Unit A', 754)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (2, 2, N'Unit B', 980)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (3, 3, N'Unit C', 1147)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (4, 4, N'Unit D', 761)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (5, 5, N'Unit E', 942)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (6, 6, N'Unit F', 668)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (7, 7, N'Unit G', 601)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (8, 8, N'Unit H', 635)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (9, 9, N'Unit I', 729)
INSERT [dbo].[Warehouse] ([WareHouseID], [StoreNo], [WareHouseName], [StorageSpace]) VALUES (10, 10, N'Unit J', 501)
SET IDENTITY_INSERT [dbo].[Warehouse] OFF
GO

