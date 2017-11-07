USE [ZZZ]
GO

/****** Object:  Table [dbo].[SysDefault]    Script Date: 11/1/2017 10:13:43 PM ******/
DROP TABLE [dbo].[SysDefault]
GO

/****** Object:  Table [dbo].[SysDefault]    Script Date: 11/1/2017 10:13:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysDefault](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ListValues] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LMD] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


