USE [db_MedicalCrab]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/24/2015 20:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](500) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[RegTime] [datetime] NOT NULL,
	[SignDiscription] [nvarchar](500) NOT NULL,
	[UserImage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([ID], [UserName], [Password], [Phone], [Email], [Address], [RegTime], [SignDiscription], [UserImage]) VALUES (N'67258c8e-87d3-4c3d-ab04-d079c6948fc2', N'dreamzoom', N'123456', N'', N'1036199213@qq.com', N'', CAST(0x0000A499000959AD AS DateTime), N'我有一剑，可斩漫天神佛；我有一镜，可窥人心鬼蜮。', N'')
INSERT [dbo].[User] ([ID], [UserName], [Password], [Phone], [Email], [Address], [RegTime], [SignDiscription], [UserImage]) VALUES (N'9d9a55bb-1572-49cb-8e68-44ce8e0945c7', N'wxllzf', N'123456', N'18200465675', N'1036199213@qq.com', N'', CAST(0x0000A4980187EE71 AS DateTime), N'我喜欢打酱油，呵呵', N'/upload/handimage/wxllzf.jpg')
/****** Object:  Table [dbo].[PositionLog]    Script Date: 05/24/2015 20:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionLog](
	[ID] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Latitude] [decimal](18, 8) NOT NULL,
	[Longitude] [decimal](18, 8) NOT NULL,
	[Altitude] [decimal](18, 8) NOT NULL,
	[Accuracy] [decimal](18, 8) NOT NULL,
	[AltitudeAccuracy] [decimal](18, 8) NOT NULL,
	[Heading] [decimal](18, 8) NOT NULL,
	[Speed] [decimal](18, 8) NOT NULL,
	[AddTime] [datetime] NOT NULL,
 CONSTRAINT [PK_PositionLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'精度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'海拔高度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'Altitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'精确度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'Accuracy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'海拔精确度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'AltitudeAccuracy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动方向' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'Heading'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动速度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'Speed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PositionLog', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
INSERT [dbo].[PositionLog] ([ID], [UserName], [Latitude], [Longitude], [Altitude], [Accuracy], [AltitudeAccuracy], [Heading], [Speed], [AddTime]) VALUES (N'3e1c52ae-4a38-49ce-8611-ca798d9e37e5', N'wxllzf', CAST(30.53411800 AS Decimal(18, 8)), CAST(104.04831600 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(100.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0x0000A4A20141066D AS DateTime))
INSERT [dbo].[PositionLog] ([ID], [UserName], [Latitude], [Longitude], [Altitude], [Accuracy], [AltitudeAccuracy], [Heading], [Speed], [AddTime]) VALUES (N'61282810-38dd-49a3-8b4f-a69a534ceda2', N'wxllzf', CAST(30.53413700 AS Decimal(18, 8)), CAST(104.04830500 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(100.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0x0000A4A2010F473E AS DateTime))
INSERT [dbo].[PositionLog] ([ID], [UserName], [Latitude], [Longitude], [Altitude], [Accuracy], [AltitudeAccuracy], [Heading], [Speed], [AddTime]) VALUES (N'799c816a-1b1f-4bb5-a712-e90eb3aa1908', N'wxllzf', CAST(30.53411800 AS Decimal(18, 8)), CAST(104.04831600 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(100.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0x0000A4A20140C5DE AS DateTime))
INSERT [dbo].[PositionLog] ([ID], [UserName], [Latitude], [Longitude], [Altitude], [Accuracy], [AltitudeAccuracy], [Heading], [Speed], [AddTime]) VALUES (N'9d9a55bb-1572-49cb-8e68-44ce8e0945c7', N'wxllzf', CAST(30.53415900 AS Decimal(18, 8)), CAST(104.04801100 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(150.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0x0000A4A200A9AAC9 AS DateTime))
INSERT [dbo].[PositionLog] ([ID], [UserName], [Latitude], [Longitude], [Altitude], [Accuracy], [AltitudeAccuracy], [Heading], [Speed], [AddTime]) VALUES (N'a2195cc1-fbdd-421a-b3a2-1c9deae1b375', N'wxllzf', CAST(30.53413700 AS Decimal(18, 8)), CAST(104.04830500 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(100.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0x0000A4A2010EF710 AS DateTime))
INSERT [dbo].[PositionLog] ([ID], [UserName], [Latitude], [Longitude], [Altitude], [Accuracy], [AltitudeAccuracy], [Heading], [Speed], [AddTime]) VALUES (N'a5aa4814-82e1-4a09-9c06-39dd76ec9be3', N'wxllzf', CAST(30.53413700 AS Decimal(18, 8)), CAST(104.04830500 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(100.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0x0000A4A20111D593 AS DateTime))
INSERT [dbo].[PositionLog] ([ID], [UserName], [Latitude], [Longitude], [Altitude], [Accuracy], [AltitudeAccuracy], [Heading], [Speed], [AddTime]) VALUES (N'e3563aeb-fb5c-4790-a8d8-ee672b8d00a4', N'wxllzf', CAST(30.53411800 AS Decimal(18, 8)), CAST(104.04831600 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(100.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0.00000000 AS Decimal(18, 8)), CAST(0x0000A4A20140DC7A AS DateTime))
/****** Object:  Table [dbo].[Message]    Script Date: 05/24/2015 20:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [nvarchar](128) NOT NULL,
	[MsgForm] [nvarchar](50) NOT NULL,
	[MsgTo] [nvarchar](50) NOT NULL,
	[MsgContent] [nvarchar](max) NOT NULL,
	[SendTime] [datetime] NOT NULL,
	[MsgType] [int] NOT NULL,
	[Buttons] [nvarchar](500) NOT NULL,
	[CallBackApi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Friends]    Script Date: 05/24/2015 20:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friends](
	[ID] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[FriendName] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[AddTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Message_MsgType]    Script Date: 05/24/2015 20:56:00 ******/
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_Message_MsgType]  DEFAULT ((0)) FOR [MsgType]
GO
/****** Object:  Default [DF_PositionLog_AddTime]    Script Date: 05/24/2015 20:56:00 ******/
ALTER TABLE [dbo].[PositionLog] ADD  CONSTRAINT [DF_PositionLog_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_User_RegTime]    Script Date: 05/24/2015 20:56:00 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_RegTime]  DEFAULT (getdate()) FOR [RegTime]
GO
/****** Object:  Default [DF_User_SignDiscription]    Script Date: 05/24/2015 20:56:00 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_SignDiscription]  DEFAULT ('') FOR [SignDiscription]
GO
/****** Object:  Default [DF_User_Icon]    Script Date: 05/24/2015 20:56:00 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Icon]  DEFAULT ('') FOR [UserImage]
GO
