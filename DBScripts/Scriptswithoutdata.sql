USE [dbNavTech]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 06-04-2021 19:12:42 ******/
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
/****** Object:  Table [dbo].[item]    Script Date: 06-04-2021 19:12:43 ******/
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
/****** Object:  Table [dbo].[order]    Script Date: 06-04-2021 19:12:43 ******/
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
