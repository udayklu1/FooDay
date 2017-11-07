USE FD_Database
GO

/****** Object:  Table [dbo].[ApplicationUser]    Script Date: 11/1/2017 10:11:12 PM ******/
--DROP TABLE [dbo].[ApplicationUser]
--GO

/****** Object:  Table [dbo].[ApplicationUser]    Script Date: 11/1/2017 10:11:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ApplicationUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[MobileNumber] [bigint] NOT NULL,
	[AlternateNumber] [bigint] NOT NULL,
	[EmailAddress] [nvarchar](1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LMD] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


