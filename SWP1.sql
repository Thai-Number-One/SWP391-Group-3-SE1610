CREATE database [TestProject4]
USE [TestProject4]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Feedback_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Feedback_status] [int] NOT NULL,
	[Star] [int] NULL,
	[Date_Feedback] [date] NOT NULL,
	[Reservation_ID] [int] NOT NULL,
 CONSTRAINT [PK__Feedback__CD3992F8AE89380D] PRIMARY KEY CLUSTERED 
(
	[Feedback_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[Medicine_ID] [int] NOT NULL,
	[Medicine_name] [nvarchar](255) NOT NULL,
	[Price] [float] NOT NULL,
	[country] [nvarchar](255) NOT NULL,
	[Expiry_date] [date] NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Medicine_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Post_ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[User_ID] [int] NULL,
	[Image] [nvarchar](255) NOT NULL,
	[Service_ID] [int] NULL,
	[Date] [date] NOT NULL,
	[Status] [int] NULL,
	[Category] [nvarchar](255) NULL,
 CONSTRAINT [PK__Post__5875F74D616B147A] PRIMARY KEY CLUSTERED 
(
	[Post_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[Prescription_ID] [int] NOT NULL,
	[User_ID] [int] NULL,
	[Medicine_ID] [int] NULL,
	[Amount] [int] NOT NULL,
	[Note] [nvarchar](max) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[Reservation_ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [int] NOT NULL,
	[Begin_Time] [date] NOT NULL,
	[Total_cost] [float] NOT NULL,
 CONSTRAINT [PK__Reservat__17302A8D9E17263E] PRIMARY KEY CLUSTERED 
(
	[Reservation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation_detail]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation_detail](
	[Prescription_ID] [int] NOT NULL,
	[Reservation_ID] [int] NOT NULL,
	[Service_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Staff_ID] [int] NOT NULL,
	[Name_Sale] [nvarchar](max) NULL,
	[Children_Name] [nvarchar](225)  NULL,
	[Age] [int]  NULL,
 CONSTRAINT [PK__Reservat__E82EBD58B5D7987C] PRIMARY KEY CLUSTERED 
(
	[Prescription_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_ID] [int] NOT NULL,
	[Role_Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Service_ID] [int] NOT NULL,
	[Service_Name] [nvarchar](255) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](255) NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Price] [float] NOT NULL,
	[Discount] [int] NOT NULL,
	[Rate] [float] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK__Service__BD1A239CFFF81979] PRIMARY KEY CLUSTERED 
(
	[Service_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Setting_ID] [int] NOT NULL,
	[Type_ID] [int] NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK__Setting__04909305988DC37C] PRIMARY KEY CLUSTERED 
(
	[Setting_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Slider_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[BackLink] [nvarchar](255) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Slider_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Type_ID] [int] NOT NULL,
	[Type_name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/24/2022 3:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_ID] [int] NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Date] [date] NOT NULL,
	[Date_New] [date] NULL,
	[User_Name] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Avatar] [nvarchar](255) NULL,
	[Gender] [int] NOT NULL,
	[Role_ID] [int] NOT NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK__Feedback__Reserv__38996AB5] FOREIGN KEY([Reservation_ID])
REFERENCES [dbo].[Reservation] ([Reservation_ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK__Feedback__Reserv__38996AB5]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK__Feedback__User_I__398D8EEE] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK__Feedback__User_I__398D8EEE]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK__Post__Service_ID__3A81B327] FOREIGN KEY([Service_ID])
REFERENCES [dbo].[Service] ([Service_ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK__Post__Service_ID__3A81B327]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK__Post__User_ID__3B75D760] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK__Post__User_ID__3B75D760]
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD FOREIGN KEY([Medicine_ID])
REFERENCES [dbo].[Medicine] ([Medicine_ID])
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [FK__Prescript__Presc__3D5E1FD2] FOREIGN KEY([Prescription_ID])
REFERENCES [dbo].[Reservation_detail] ([Prescription_ID])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK__Prescript__Presc__3D5E1FD2]
GO
ALTER TABLE [dbo].[Reservation_detail]  WITH CHECK ADD  CONSTRAINT [FK__Reservati__Reser__3F466844] FOREIGN KEY([Reservation_ID])
REFERENCES [dbo].[Reservation] ([Reservation_ID])
GO
ALTER TABLE [dbo].[Reservation_detail] CHECK CONSTRAINT [FK__Reservati__Reser__3F466844]
GO
ALTER TABLE [dbo].[Reservation_detail]  WITH CHECK ADD  CONSTRAINT [FK__Reservati__Servi__403A8C7D] FOREIGN KEY([Service_ID])
REFERENCES [dbo].[Service] ([Service_ID])
GO
ALTER TABLE [dbo].[Reservation_detail] CHECK CONSTRAINT [FK__Reservati__Servi__403A8C7D]
GO
ALTER TABLE [dbo].[Reservation_detail]  WITH CHECK ADD  CONSTRAINT [FK__Reservati__User___412EB0B6] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Reservation_detail] CHECK CONSTRAINT [FK__Reservati__User___412EB0B6]
GO
ALTER TABLE [dbo].[Setting]  WITH CHECK ADD  CONSTRAINT [FK__Setting__Type_ID__440B1D61] FOREIGN KEY([Type_ID])
REFERENCES [dbo].[Type] ([Type_ID])
GO
ALTER TABLE [dbo].[Setting] CHECK CONSTRAINT [FK__Setting__Type_ID__440B1D61]
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Role] ([Role_ID])
GO
