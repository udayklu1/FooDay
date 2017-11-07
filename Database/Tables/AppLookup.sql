USE [ZZZ]
GO

ALTER TABLE [dbo].[AppLookup] DROP CONSTRAINT [FK_AppLookup_SLUID_SysLookup_ID]
GO

/****** Object:  Table [dbo].[AppLookup]    Script Date: 11/1/2017 10:12:29 PM ******/
DROP TABLE [dbo].[AppLookup]
GO

/****** Object:  Table [dbo].[AppLookup]    Script Date: 11/1/2017 10:12:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AppLookup](
	[ID] [int] NOT NULL,
	[SLUID] [int] NOT NULL,
	[LookupValue] [nvarchar](max) NOT NULL,
	[ListPosition] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LMD] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[AppLookup]  WITH CHECK ADD  CONSTRAINT [FK_AppLookup_SLUID_SysLookup_ID] FOREIGN KEY([SLUID])
REFERENCES [dbo].[SysLookup] ([ID])
GO

ALTER TABLE [dbo].[AppLookup] CHECK CONSTRAINT [FK_AppLookup_SLUID_SysLookup_ID]
GO


