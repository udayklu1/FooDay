USE [FD_Database]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FX_InsertUserData]') AND type in (N'U'))  
DROP TABLE [dbo].[FX_InsertUserData] 
GO
/*
----------------------------------------------------------------------------------------------------------------------
Uday: 2017-11-05 20:54:05.023
----------------------------------------------------------------------------------------------------------------------
*/

CREATE PROCEDURE [dbo].[FX_InsertUserData]
@UserName		NVARCHAR(128),
@UserPassword	NVARCHAR(128),
@FirstName		NVARCHAR(128),
@LastName		NVARCHAR(128),
@MobileNumber	NVARCHAR(128),
@AlternateNumber NVARCHAR(128),
@EmailAddress	NVARCHAR(128),
@Gender			INT,
@IsActive		BIT
AS
BEGIN
SET NOCOUNT ON;

INSERT INTO [ApplicationUser]([UserName],[UserPassword],[FirstName],[LastName],[Gender],[MobileNumber],[AlternateNumber],[EmailAddress],[IsActive],
			[LMD])
VALUES(@UserName,@UserPassword,@FirstName,@LastName,@Gender,@MobileNumber,@AlternateNumber,@EmailAddress,,@IsActive,GETDATE())

SELECT SCOPE_IDENTITY() AS UserID

END