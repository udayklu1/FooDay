USE [ZZZ]
GO

ALTER TABLE [dbo].[AppSession] DROP CONSTRAINT [FK_AppSession_UserID_ApplicationUser_UserID]
GO

/****** Object:  Table [dbo].[AppSession]    Script Date: 11/1/2017 10:12:54 PM ******/
DROP TABLE [dbo].[AppSession]
GO

/****** Object:  Table [dbo].[AppSession]    Script Date: 11/1/2017 10:12:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AppSession](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [int] NOT NULL,
	[MachineName] [nvarchar](max) NOT NULL,
	[MachineIP] [nvarchar](max) NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[AppSession]  WITH CHECK ADD  CONSTRAINT [FK_AppSession_UserID_ApplicationUser_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[ApplicationUser] ([UserID])
GO

ALTER TABLE [dbo].[AppSession] CHECK CONSTRAINT [FK_AppSession_UserID_ApplicationUser_UserID]
GO


