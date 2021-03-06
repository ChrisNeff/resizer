USE [C:\USERS\ADMINISTRATOR\DOCUMENTS\RESIZER\SAMPLES\SQLREADERSAMPLE\APP_DATA\DATABASE.MDF]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 06/05/2011 17:25:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Images](
	[ImageID] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](256) NULL,
	[Extension] [varchar](50) NULL,
	[ContentLength] [int] NOT NULL,
	[Content] [varbinary](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Images2] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Images_CreatedDate]    Script Date: 06/05/2011 17:25:52 ******/
ALTER TABLE [dbo].[Images] ADD  CONSTRAINT [DF_Images_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
