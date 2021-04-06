USE [dbNavTech]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 06-04-2021 19:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MobileNo] [varchar](10) NULL,
	[Email] [varchar](50) NOT NULL,
	[City] [varchar](50) NULL,
	[PinCode] [varchar](10) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 06-04-2021 19:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Manufacturer] [varchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 06-04-2021 19:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[CustomerId] [int] NULL,
	[Quantity] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[customer] ON 
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Vamshi', N'Krishna', N'9177443376', N'vamshim.net@gmail.com', N'Hyderabad', N'508206', 0, CAST(N'2021-03-26T17:12:55.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (2, N'Abhilash', N'Kumar', N'709589134', N'abhig@gmail.com', N'Pune', N'502201', 0, CAST(N'2021-03-26T17:12:55.150' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (3, N'Ramesh', N'Kumar', N'9542405399', N'ramesh.k@gmail.com', N'Banglore', N'522211', 0, CAST(N'2021-03-26T17:12:55.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (4, N'Shiva', N'Krishna', N'8899112212', N'shiva.k23@gmail.com', N'Hyderabad', N'522622', 0, CAST(N'2021-03-26T17:12:55.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (5, N'Rizwan', N'Shaik', N'7898123411', N'rizwan.khan@gmail.com', N'Mumbai', N'521342', 0, CAST(N'2021-03-26T17:12:55.163' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (6, N'Krishna', N'Mohan', N'8855443312', N'mohan.k234@gmail.com', N'Hyderabad', N'508206', 0, CAST(N'2021-03-26T17:12:55.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (7, N'Ranjith', N'Kumar', N'8912762212', N'ranjith.k5673@gmail.com', N'Hyderabad', N'500081', 0, CAST(N'2021-03-26T17:17:20.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (8, N'Madhu', N'Sudhan', N'6745231234', N'madhu.sudhank@gmail.com', N'Pune', N'502201', 0, CAST(N'2021-03-26T17:17:20.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (9, N'Sujith', N'Kumar', N'6545123423', N'sujith.k21@gmail.com', N'Banglore', N'523678', 0, CAST(N'2021-03-26T17:17:20.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (10, N'Sandhya', N'Rani', N'6548923122', N'sandhya.rani@gmail.com', N'Mumbai', N'543389', 0, CAST(N'2021-03-26T17:17:20.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (11, N'Ganesh', N'Kumar', N'9676452312', N'ganesh.k345@gmail.com', N'Chennai', N'513829', 0, CAST(N'2021-03-26T17:17:20.047' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (12, N'Krishna', N'Prasad', N'9676422312', N'Krishna.p56@gmail.com', N'Hyderabad', N'553206', 0, CAST(N'2021-03-26T17:17:20.047' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (13, N'Reuma', N'Akthar', N'9112452376', N'reuma.ak34@gmail.com', N'Hyderabad', N'508206', 0, CAST(N'2021-03-26T17:22:50.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (14, N'Jairam', N'Kumar', N'7023987641', N'jai234@gmail.com', N'Pune', N'502201', 0, CAST(N'2021-03-26T17:22:50.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (15, N'Sathish', N'Kumar', N'9542234399', N'sathish.k891@gmail.com', N'Banglore', N'522211', 0, CAST(N'2021-03-26T17:22:50.847' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (16, N'Raheem', N'Shaik', N'8823452127', N'raheem.shaik@gmail.com', N'Hyderabad', N'522622', 0, CAST(N'2021-03-26T17:22:50.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (17, N'Nissar', N'Ahmed', N'7889123411', N'nissar.ahmed@gmail.com', N'Mumbai', N'521342', 0, CAST(N'2021-03-26T17:22:50.857' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (18, N'Subash', N'Krishna', N'9189326576', N'subash.k56@gmail.com', N'Hyderabad', N'512656', 0, CAST(N'2021-03-26T17:26:55.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (19, N'Vijay', N'Krishna', N'9848987641', N'vijay@4Kitegmail.com', N'Pune', N'567121', 0, CAST(N'2021-03-26T17:26:55.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (20, N'Ravichandra', N'Edara', N'9177234399', N'ravi.mail2me@gmail.com', N'Banglore', N'534651', 0, CAST(N'2021-03-26T17:26:55.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (21, N'Karim', N'Shaik', N'6231452127', N'Karim.shaik@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:26:55.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (22, N'Venkata', N'Ramaiah', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:26:55.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (23, N'Vinod', N'Kumar', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:30:27.480' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (24, N'Charan', N'Sai', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:30:27.497' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (25, N'Kumar', N'Shekar', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:30:27.497' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (26, N'Suneetha', N'K', N'9440024441', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:30:27.497' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (27, N'A', N'B', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:34:03.813' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (28, N'C', N'D', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:34:03.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (29, N'E', N'F', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:34:03.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (30, N'G', N'H', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:34:03.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (31, N'I', N'J', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:34:03.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (32, N'K', N'L', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:34:03.847' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (33, N'M', N'N', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:34:03.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (34, N'O', N'P', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:34:03.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (35, N'Q', N'R', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:34:03.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (36, N'S', N'T', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:34:03.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (37, N'U', N'V', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:34:03.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (38, N'W', N'X', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:34:03.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (39, N'Y', N'Z', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:34:03.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (40, N'A', N'N', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:35:27.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (41, N'B', N'O', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:35:27.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (42, N'C', N'P', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:35:27.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (43, N'D', N'Q', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:35:27.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (44, N'E', N'R', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:35:27.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (45, N'F', N'S', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:35:27.957' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (46, N'G', N'T', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:35:27.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (47, N'H', N'U', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:35:27.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (48, N'I', N'V', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:35:27.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (49, N'J', N'T', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:35:27.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (50, N'K', N'W', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:35:27.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (51, N'L', N'X', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:35:27.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (52, N'M', N'Y', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:35:27.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (53, N'M', N'Z', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:35:27.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (54, N'AA', N'BB', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:37:29.563' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (55, N'CC', N'DD', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:37:29.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (56, N'EE', N'FF', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:37:29.597' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (57, N'GG', N'H', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:37:29.597' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (58, N'II', N'JJ', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:37:29.597' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (59, N'KK', N'LL', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:37:29.597' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (60, N'MM', N'NN', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:37:29.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (61, N'OO', N'PP', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:37:29.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (62, N'QQ', N'RR', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:37:29.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (63, N'SS', N'TT', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:37:29.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (64, N'UU', N'VV', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:37:29.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (65, N'WW', N'XX', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:37:29.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (66, N'YY', N'ZZ', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:37:29.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (67, N'AA1', N'BB1', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:38:31.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (68, N'CC1', N'DD1', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:38:31.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (69, N'EE1', N'FF1', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:38:31.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (70, N'GG1', N'H1', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:38:31.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (71, N'II1', N'JJ1', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:38:31.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (72, N'KK1', N'LL1', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:38:31.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (73, N'MM1', N'NN1', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:38:31.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (74, N'OO1', N'PP1', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:38:31.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (75, N'QQ1', N'RR1', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:38:31.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (76, N'SS1', N'TT1', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:38:31.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (77, N'UU1', N'VV1', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:38:31.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (78, N'WW1', N'XX1', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:38:31.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (79, N'YY1', N'ZZ1', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:38:31.113' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (80, N'AA11', N'BB11', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:39:22.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (81, N'CC11', N'DD13', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:39:22.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (82, N'EE11', N'FF12', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:39:22.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (83, N'GG12', N'H12', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:39:22.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (84, N'II13', N'JJ17', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:39:22.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (85, N'KK14', N'LL15', N'9848432141', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:39:22.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (86, N'MM41', N'NN14', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:39:22.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (87, N'OO14', N'PP14', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:39:22.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (88, N'QQ44', N'RR14', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:39:22.787' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (89, N'SS14', N'TT14', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:39:22.787' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (90, N'UU14', N'VV14', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:39:22.800' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (91, N'WW14', N'XX14', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:39:22.800' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (92, N'YY14', N'ZZ14', N'8318734530', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:39:22.817' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (93, N'AA222', N'BB222', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:40:20.670' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (95, N'EE222', N'FF12', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:40:20.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (97, N'II13', N'JJ17', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:40:20.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (99, N'MM221', N'NN122', N'9177291799', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:40:20.753' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (106, N'AA222', N'BB222', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:41:06.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (107, N'CC222', N'DD13', N'6312897623', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:41:06.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (108, N'EE222', N'FF12', N'6312897623', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:41:06.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (109, N'GG12', N'H12', N'6312897623', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:41:06.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (110, N'II13', N'JJ17', N'6312897623', N'venkat.mail2me@gmail.com', N'Mumbai', N'561022', 0, CAST(N'2021-03-26T17:41:06.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (111, N'KK122', N'LL15', N'6312897623', N'vinod.kumar@gmail.com', N'Pune', N'566521', 0, CAST(N'2021-03-26T17:41:06.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (112, N'MM221', N'NN122', N'6312897623', N'charan.sai@gmail.com', N'Banglore', N'532171', 0, CAST(N'2021-03-26T17:41:06.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (113, N'OO122', N'PP122', N'6312897623', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:41:06.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (114, N'QQ2222', N'RR122', N'6312897623', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:41:06.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (115, N'SS122', N'TT122', N'6312897623', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:41:06.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (116, N'UU122', N'VV122', N'6312897623', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:41:06.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (117, N'WW122', N'XX122', N'6312897623', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:41:06.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (118, N'YY122', N'ZZ122', N'6312897623', N'kumarm.net@gmail.com', N'Hyderabad', N'598212', 0, CAST(N'2021-03-26T17:41:06.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (121, N'kiwi', N'Krishna', N'8885515959', N'kiwi1269@gmail.com', N'Hyderabad', N'34567', 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (123, N'teste', N'234', N'8885515959', N'4523@gmail.com', N'Hyderabad', N'34567', 0, CAST(N'2021-03-30T21:55:37.890' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[customer] ([CustomerId], [FirstName], [LastName], [MobileNo], [Email], [City], [PinCode], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (124, N'teste', N'234', N'8885515959', N'shabari@gmail.com', N'Hyderabad', N'34567', 0, CAST(N'2021-03-30T22:03:31.530' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[item] ON 
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Laptop', N'Dell', CAST(12000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (2, N'Laptop', N'Samsung', CAST(80000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (3, N'Laptop', N'HP', CAST(42000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (4, N'Laptop', N'Lenovo', CAST(32000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (5, N'Laptop', N'MI', CAST(12000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (6, N'Laptop', N'Samsung', CAST(22000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (7, N'Laptop', N'Dell', CAST(45000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (8, N'Mobile', N'Samsung', CAST(12000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (9, N'Mobile', N'Apple', CAST(80000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (10, N'Mobile', N'Lenovo', CAST(42000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.610' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (11, N'Mobile', N'One Plus', CAST(32000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (12, N'Mobile', N'Real me', CAST(12000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (13, N'Mobile', N'Oppo', CAST(22000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[item] ([ItemId], [Name], [Manufacturer], [Price], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (14, N'Mobile', N'Samsubg', CAST(45000.00 AS Decimal(18, 2)), 0, CAST(N'2021-03-26T17:48:29.630' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[item] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (1, 1, 1, 1, 0, CAST(N'2021-03-30T22:33:15.540' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (2, 2, 11, 5, 0, CAST(N'2021-03-30T22:33:15.560' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (3, 3, 12, 1, 0, CAST(N'2021-03-30T22:33:15.563' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (4, 4, 12, 1, 0, CAST(N'2021-03-30T22:33:15.563' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (5, 5, 12, 1, 0, CAST(N'2021-03-30T22:33:15.567' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (6, 6, 12, 2, 0, CAST(N'2021-03-30T22:33:15.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (7, 7, 21, 1, 0, CAST(N'2021-03-30T22:33:15.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (8, 8, 13, 1, 0, CAST(N'2021-03-30T22:33:15.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (9, 9, 11, 6, 0, CAST(N'2021-03-30T22:33:15.583' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (10, 10, 11, 1, 0, CAST(N'2021-03-30T22:33:15.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (11, 11, 31, 1, 0, CAST(N'2021-03-30T22:33:15.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (12, 12, 41, 1, 0, CAST(N'2021-03-30T22:33:15.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (13, 1, 51, 2, 0, CAST(N'2021-03-30T22:33:15.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (14, 1, 71, 1, 0, CAST(N'2021-03-30T22:33:15.600' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (15, 3, 31, 4, 0, CAST(N'2021-03-30T22:33:15.603' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (16, 4, 21, 2, 0, CAST(N'2021-03-30T22:33:15.607' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (17, 5, 12, 1, 0, CAST(N'2021-03-30T22:33:15.607' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (18, 6, 15, 1, 0, CAST(N'2021-03-30T22:33:15.607' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (19, 7, 18, 2, 0, CAST(N'2021-03-30T22:33:15.617' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (20, 8, 19, 1, 0, CAST(N'2021-03-30T22:33:15.620' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (21, 9, 21, 1, 0, CAST(N'2021-03-30T22:33:15.623' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (22, 1, 14, 1, 0, CAST(N'2021-03-30T22:33:15.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (23, 2, 61, 2, 0, CAST(N'2021-03-30T22:33:15.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (24, 1, 81, 1, 0, CAST(N'2021-03-30T22:33:15.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (25, 5, 21, 1, 0, CAST(N'2021-03-30T22:33:15.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (26, 7, 41, 1, 0, CAST(N'2021-03-30T22:33:15.640' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (27, 8, 51, 1, 0, CAST(N'2021-03-30T22:33:15.643' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (28, 1, 71, 1, 0, CAST(N'2021-03-30T22:33:15.650' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (29, 2, 11, 1, 0, CAST(N'2021-03-30T22:33:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (30, 3, 13, 1, 0, CAST(N'2021-03-30T22:33:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (31, 4, 61, 1, 0, CAST(N'2021-03-30T22:33:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (32, 14, 91, 2, 0, CAST(N'2021-03-30T22:33:15.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (33, 1, 19, 1, 0, CAST(N'2021-03-30T22:33:15.673' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (34, 1, 19, 1, 0, CAST(N'2021-03-30T22:33:15.673' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (35, 2, 21, 1, 0, CAST(N'2021-03-30T22:33:15.673' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (36, 3, 14, 1, 0, CAST(N'2021-03-30T22:33:15.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (37, 4, 61, 2, 0, CAST(N'2021-03-30T22:33:15.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (38, 5, 81, 1, 0, CAST(N'2021-03-30T22:33:15.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (39, 6, 21, 1, 0, CAST(N'2021-03-30T22:33:15.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (40, 7, 41, 1, 0, CAST(N'2021-03-30T22:33:15.693' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (41, 8, 51, 1, 0, CAST(N'2021-03-30T22:33:15.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (42, 9, 71, 1, 0, CAST(N'2021-03-30T22:33:15.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (43, 10, 11, 1, 0, CAST(N'2021-03-30T22:33:15.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (44, 11, 13, 1, 0, CAST(N'2021-03-30T22:33:15.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (45, 12, 61, 1, 0, CAST(N'2021-03-30T22:33:15.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (46, 13, 91, 2, 0, CAST(N'2021-03-30T22:33:15.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (47, 14, 19, 1, 0, CAST(N'2021-03-30T22:33:15.727' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (48, 1, 1, 1, 0, CAST(N'2021-03-30T22:33:15.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (49, 2, 2, 1, 0, CAST(N'2021-03-30T22:33:15.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (50, 3, 3, 1, 0, CAST(N'2021-03-30T22:33:15.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (51, 4, 3, 2, 0, CAST(N'2021-03-30T22:33:15.747' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (52, 5, 5, 1, 0, CAST(N'2021-03-30T22:33:15.750' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (53, 6, 6, 1, 0, CAST(N'2021-03-30T22:33:15.760' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (54, 7, 7, 1, 0, CAST(N'2021-03-30T22:33:15.763' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (55, 8, 8, 1, 0, CAST(N'2021-03-30T22:33:15.770' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (56, 9, 9, 1, 0, CAST(N'2021-03-30T22:33:15.777' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (57, 10, 10, 1, 0, CAST(N'2021-03-30T22:33:15.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (58, 11, 11, 1, 0, CAST(N'2021-03-30T22:33:15.783' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (59, 12, 12, 1, 0, CAST(N'2021-03-30T22:33:15.790' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (60, 13, 13, 2, 0, CAST(N'2021-03-30T22:33:15.793' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (61, 14, 14, 1, 0, CAST(N'2021-03-30T22:33:15.800' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (62, 11, 1, 1, 0, CAST(N'2021-03-30T22:33:15.803' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (63, 12, 2, 1, 0, CAST(N'2021-03-30T22:33:15.807' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (64, 12, 3, 1, 0, CAST(N'2021-03-30T22:33:15.810' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (65, 11, 3, 2, 0, CAST(N'2021-03-30T22:33:15.817' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (66, 10, 5, 1, 0, CAST(N'2021-03-30T22:33:15.820' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (67, 9, 6, 1, 0, CAST(N'2021-03-30T22:33:15.823' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (68, 8, 7, 1, 0, CAST(N'2021-03-30T22:33:15.830' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (69, 7, 8, 1, 0, CAST(N'2021-03-30T22:33:15.833' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (70, 6, 9, 1, 0, CAST(N'2021-03-30T22:33:15.837' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (71, 5, 10, 1, 0, CAST(N'2021-03-30T22:33:15.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (72, 4, 11, 1, 0, CAST(N'2021-03-30T22:33:15.847' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (73, 3, 12, 1, 0, CAST(N'2021-03-30T22:33:15.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (74, 2, 13, 2, 0, CAST(N'2021-03-30T22:33:15.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (75, 1, 14, 1, 0, CAST(N'2021-03-30T22:33:15.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (76, 14, 19, 1, 0, CAST(N'2021-03-30T22:33:15.857' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (77, 13, 21, 1, 0, CAST(N'2021-03-30T22:33:15.860' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (78, 12, 14, 1, 0, CAST(N'2021-03-30T22:33:15.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (79, 11, 61, 2, 0, CAST(N'2021-03-30T22:33:15.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (80, 10, 81, 1, 0, CAST(N'2021-03-30T22:33:15.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (81, 9, 21, 1, 0, CAST(N'2021-03-30T22:33:15.877' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (82, 8, 41, 1, 0, CAST(N'2021-03-30T22:33:15.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (83, 7, 51, 1, 0, CAST(N'2021-03-30T22:33:15.890' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (84, 6, 71, 1, 0, CAST(N'2021-03-30T22:33:15.900' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (85, 5, 11, 1, 0, CAST(N'2021-03-30T22:33:15.907' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (86, 4, 13, 1, 0, CAST(N'2021-03-30T22:33:15.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (87, 3, 61, 1, 0, CAST(N'2021-03-30T22:33:15.920' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (88, 2, 91, 2, 0, CAST(N'2021-03-30T22:33:15.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (89, 1, 19, 1, 0, CAST(N'2021-03-30T22:33:15.933' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (90, 11, 1, 1, 0, CAST(N'2021-03-30T22:33:15.943' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (91, 12, 2, 1, 0, CAST(N'2021-03-30T22:33:15.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (92, 13, 3, 1, 0, CAST(N'2021-03-30T22:33:15.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (93, 14, 3, 2, 0, CAST(N'2021-03-30T22:33:15.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (94, 5, 5, 1, 0, CAST(N'2021-03-30T22:33:15.967' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (95, 6, 6, 1, 0, CAST(N'2021-03-30T22:33:15.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (96, 7, 7, 1, 0, CAST(N'2021-03-30T22:33:15.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (97, 8, 8, 1, 0, CAST(N'2021-03-30T22:33:15.987' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (98, 9, 9, 1, 0, CAST(N'2021-03-30T22:33:15.987' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (99, 1, 10, 1, 0, CAST(N'2021-03-30T22:33:15.990' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (100, 1, 11, 1, 0, CAST(N'2021-03-30T22:33:15.993' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (101, 2, 12, 1, 0, CAST(N'2021-03-30T22:33:16.003' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (102, 3, 13, 2, 0, CAST(N'2021-03-30T22:33:16.003' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (103, 4, 14, 1, 0, CAST(N'2021-03-30T22:33:16.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (104, 1, 1, 1, 0, CAST(N'2021-03-30T22:33:16.017' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (105, 2, 2, 1, 0, CAST(N'2021-03-30T22:33:16.017' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (106, 2, 3, 1, 0, CAST(N'2021-03-30T22:33:16.017' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (107, 1, 3, 2, 0, CAST(N'2021-03-30T22:33:16.023' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (108, 2, 5, 1, 0, CAST(N'2021-03-30T22:33:16.033' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (109, 9, 6, 1, 0, CAST(N'2021-03-30T22:33:16.033' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (110, 8, 7, 1, 0, CAST(N'2021-03-30T22:33:16.033' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (111, 7, 8, 1, 0, CAST(N'2021-03-30T22:33:16.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (112, 6, 9, 1, 0, CAST(N'2021-03-30T22:33:16.063' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (113, 5, 10, 1, 0, CAST(N'2021-03-30T22:33:16.070' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (114, 14, 11, 1, 0, CAST(N'2021-03-30T22:33:16.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (115, 13, 12, 1, 0, CAST(N'2021-03-30T22:33:16.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (116, 12, 13, 2, 0, CAST(N'2021-03-30T22:33:16.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (117, 11, 14, 1, 0, CAST(N'2021-03-30T22:33:16.087' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[order] ([OrderId], [ItemId], [CustomerId], [Quantity], [CreatedBy], [CreatedOn], [UpdatedOn], [UpdatedBy]) VALUES (118, 1, 22, 2, 0, CAST(N'2021-03-31T17:31:35.283' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[order] OFF
GO
ALTER TABLE [dbo].[customer] ADD  CONSTRAINT [DF_customer_CreatedBy]  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[customer] ADD  CONSTRAINT [DF_customer_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[item] ADD  CONSTRAINT [DF_item_CreatedBy]  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[item] ADD  CONSTRAINT [DF_item_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_CreatedBy]  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[customer] ([CustomerId])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_customer]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[item] ([ItemId])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_item]
GO
