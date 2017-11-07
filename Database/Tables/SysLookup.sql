USE [ZZZ]
GO

/****** Object:  Table [dbo].[SysLookup]    Script Date: 11/1/2017 10:14:08 PM ******/
DROP TABLE [dbo].[SysLookup]
GO

/****** Object:  Table [dbo].[SysLookup]    Script Date: 11/1/2017 10:14:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysLookup](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LookupValue] [nvarchar](max) NOT NULL,
	[LMD] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


