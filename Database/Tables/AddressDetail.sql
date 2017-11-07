USE [FD_Database]
GO

--ALTER TABLE [dbo].[AddressDetail] DROP CONSTRAINT [FK_AddressDetail_UserID_ApplicationUser_UserID]
--GO

/****** Object:  Table [dbo].[AddressDetail]    Script Date: 11/1/2017 10:12:03 PM ******/
DROP TABLE [dbo].[AddressDetail]
GO

/****** Object:  Table [dbo].[AddressDetail]    Script Date: 11/1/2017 10:12:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AddressDetail](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Address1] [nvarchar](256) NOT NULL,
	[Address2] [nvarchar](256) ,
	[Address3] [nvarchar](256) ,
	[City] [NVARCHAR](256),
	[State] [NVARCHAR](128),
	[Country][NVARCHAR](128),
	[IsActive] [bit] NOT NULL,
	[LMD] [datetime] NOT NULL,
PRIMARY KEY ([AddressID])
)
GO

ALTER TABLE [dbo].[AddressDetail]  WITH CHECK ADD  CONSTRAINT [FK_AddressDetail_UserID_ApplicationUser_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[ApplicationUser] ([UserID])
GO

ALTER TABLE [dbo].[AddressDetail] CHECK CONSTRAINT [FK_AddressDetail_UserID_ApplicationUser_UserID]
GO



select * from AddressDetail

select * from ApplicationUser

ALTER TABLE ApplicationUser ADD  [Gender] [INT] 
ALTER TABLE ApplicationUser DROP COLUMN [Gender ] [INT] 

ALTER TABLE AddressDetail ADD  [Pincode] [NVARCHAR](32) 