USE [ZZZ]
GO

ALTER TABLE [dbo].[AppSessionLog] DROP CONSTRAINT [FK_AppSessionLog_SLUID_SysLookup_ID]
GO

ALTER TABLE [dbo].[AppSessionLog] DROP CONSTRAINT [FK_AppSessionLog_AppSessionID_AppSession_ID]
GO

/****** Object:  Table [dbo].[AppSessionLog]    Script Date: 11/1/2017 10:13:21 PM ******/
DROP TABLE [dbo].[AppSessionLog]
GO

/****** Object:  Table [dbo].[AppSessionLog]    Script Date: 11/1/2017 10:13:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AppSessionLog](
	[ID] [int] NOT NULL,
	[AppSessionID] [uniqueidentifier] NOT NULL,
	[SLUID] [int] NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[TimeLogged] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[AppSessionLog]  WITH CHECK ADD  CONSTRAINT [FK_AppSessionLog_AppSessionID_AppSession_ID] FOREIGN KEY([AppSessionID])
REFERENCES [dbo].[AppSession] ([ID])
GO

ALTER TABLE [dbo].[AppSessionLog] CHECK CONSTRAINT [FK_AppSessionLog_AppSessionID_AppSession_ID]
GO

ALTER TABLE [dbo].[AppSessionLog]  WITH CHECK ADD  CONSTRAINT [FK_AppSessionLog_SLUID_SysLookup_ID] FOREIGN KEY([SLUID])
REFERENCES [dbo].[SysLookup] ([ID])
GO

ALTER TABLE [dbo].[AppSessionLog] CHECK CONSTRAINT [FK_AppSessionLog_SLUID_SysLookup_ID]
GO


