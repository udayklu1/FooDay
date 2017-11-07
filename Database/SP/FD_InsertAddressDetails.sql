USE [FD_Database]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FDView_GetUserDetails]') AND type in (N'U'))  
DROP TABLE [dbo].[FDView_GetUserDetails] 
GO 
/*
----------------------------------------------------------------------------------------------------------------------
Uday: 2017-11-05 20:54:05.023
----------------------------------------------------------------------------------------------------------------------
*/

CREATE PROCEDURE [dbo].[FD_InsertAddressDetails]
	@UserID		INT,
	@Address1   NVARCHAR(128),
	@Address2   NVARCHAR(128),
	@Address3   NVARCHAR(128),
	@City       NVARCHAR(32),
	@State      NVARCHAR(32),
	@Country    NVARCHAR(32),
	@IsActive   BIT,
	@Pincode    NVARCHAR(64)
AS
BEGIN

	IF EXISTS (SELECT 1 FROM ApplicationUser WHERE USERID = @UserID)
	BEGIN
		SET NOCOUNT ON;

		INSERT INTO [dbo].[AddressDetail]([UserID],[Address1],[Address2],[Address3],[City],[State],[Country],
					[IsActive],[LMD],[Pincode])
		VALUES (@UserID,@Address1,@Address2,@Address3,@City,@State,@Country,@IsActive,@Pincode,GETDATE())
	
		SELECT '200'
	END
	ELSE
	BEGIN
		SELECT '404'
	END
END