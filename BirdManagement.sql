USE [BirdManagement]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 17/11/2023 22:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Role] [int] NULL,
	[Actice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountDetail]    Script Date: 17/11/2023 22:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountDetail](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 17/11/2023 22:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DateCheckOut] [date] NULL,
	[Total] [float] NULL,
	[Status] [int] NULL,
	[checked] [int] NULL,
	[StaffID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDescription]    Script Date: 17/11/2023 22:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDescription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BillID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[ImportPrice] [float] NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/11/2023 22:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[ImportPrice] [float] NULL,
	[Quantity] [int] NULL,
	[TypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 17/11/2023 22:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (1, N'sa', N'123', 1, 1)
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (2, N'user1', N'123', 2, 1)
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (3, N'user2', N'123', 2, 1)
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (4, N'staff1', N'123', 3, 1)
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (5, N'staff2', N'123', 3, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (1, N'Vy Khang', N'Tra Vinh', N'1234567890', N'admin@gmail.com')
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (2, N'Van A', N'Nguyen Trai, Tra Vinh', N'0559980063', N'user1@gmail.com')
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (3, N'Thuy Chung', N'Hai Phong', N'0332255332', N'user2@gmail.com')
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (4, N'Thi A', N'Ho Chi Minh City', N'0123330012', N'staff1@gmail.com')
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (5, N'Van B', N'Can Tho', N'0987654321', N'staff2@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (1, 2, CAST(N'2019-10-07' AS Date), 880000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (2, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (3, 3, CAST(N'2020-05-09' AS Date), 1926000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (4, 3, CAST(N'2020-11-27' AS Date), 2040000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (5, 2, CAST(N'2020-12-31' AS Date), 1200000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (6, 2, CAST(N'2021-03-15' AS Date), 3640000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (7, 3, CAST(N'2021-08-17' AS Date), 5185000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (8, 2, CAST(N'2021-10-25' AS Date), 2680000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (9, 3, CAST(N'2022-01-01' AS Date), 1300000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (10, 3, CAST(N'2022-06-05' AS Date), 2630000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (11, 2, CAST(N'2022-12-09' AS Date), 5000000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (12, 2, CAST(N'2022-12-21' AS Date), 4340000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (13, 2, CAST(N'2023-03-08' AS Date), 2880000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (14, 3, CAST(N'2023-06-01' AS Date), 4070000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (15, 2, CAST(N'2023-10-05' AS Date), 3600000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (16, 3, CAST(N'2023-11-17' AS Date), 4120000, 1, NULL, 5)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillDescription] ON 

INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (1, 1, 1, 3, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (2, 1, 3, 7, 21000, 40000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (3, 2, 2, 3, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (4, 2, 5, 3, 140000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (5, 2, 6, 20, 18000, 25000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (6, 3, 1, 2, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (7, 3, 2, 5, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (8, 3, 5, 4, 140000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (9, 4, 3, 1, 21000, 40000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (10, 4, 5, 10, 140000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (11, 5, 4, 20, 33000, 60000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (12, 6, 1, 15, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (13, 6, 2, 2, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (14, 6, 3, 10, 21000, 40000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (15, 7, 1, 12, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (16, 7, 2, 15, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (17, 7, 3, 8, 21000, 40000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (18, 7, 4, 9, 33000, 60000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (19, 7, 6, 5, 18000, 25000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (20, 8, 3, 17, 21000, 40000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (21, 8, 5, 12, 140000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (22, 9, 1, 2, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (23, 9, 2, 3, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (24, 9, 4, 9, 33000, 60000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (25, 10, 2, 20, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (26, 10, 3, 2, 21000, 40000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (27, 10, 6, 6, 18000, 25000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (28, 11, 1, 25, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (29, 12, 2, 1, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (30, 12, 3, 18, 21000, 40000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (31, 12, 5, 16, 140000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (32, 12, 6, 12, 18000, 25000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (33, 13, 2, 24, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (34, 14, 2, 20, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (35, 14, 4, 27, 33000, 60000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (36, 14, 6, 2, 18000, 25000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (37, 15, 1, 5, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (38, 15, 5, 13, 140000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (39, 16, 1, 10, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (40, 16, 2, 12, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (41, 16, 3, 17, 21000, 40000)
SET IDENTITY_INSERT [dbo].[BillDescription] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (1, N'Vet Bay Mau', 200000, 120000, 67, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (2, N'Chim Cuc cu', 120000, 60000, 79, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (3, N'Tu Hu', 40000, 21000, 85, 2)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (4, N'Chim Cut', 60000, 33000, 72, 3)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (5, N'Long go chim cao cap', 200000, 140000, 68, 4)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (6, N'Thuc an cao cap', 25000, 18000, 87, 5)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProduct] ON 

INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (1, N'Chim Canh')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (2, N'Chim Binh Thuong')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (3, N'Chim Đe Thit')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (4, N'Long Chim')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (5, N'Thuc An')
SET IDENTITY_INSERT [dbo].[TypeProduct] OFF
GO
ALTER TABLE [dbo].[AccountDetail]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[AccountDetail] ([ID])
GO
ALTER TABLE [dbo].[BillDescription]  WITH CHECK ADD FOREIGN KEY([BillID])
REFERENCES [dbo].[Bill] ([ID])
GO
ALTER TABLE [dbo].[BillDescription]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeProduct] ([ID])
GO
