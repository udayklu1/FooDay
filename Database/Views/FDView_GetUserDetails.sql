IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FDView_GetUserDetails]') AND type in (N'U'))  
DROP TABLE [dbo].[FDView_GetUserDetails]  
GO 
/*---------------------------------------------------------------------------------------------------------------------------------------
UDAY: 2017-11-04 21:40:31.707
---------------------------------------------------------------------------------------------------------------------------------------*/
CREATE VIEW [dbo].[FDView_GetUserDetails]
AS
select AU.UserID,AU.UserName,AU.UserPassword,AU.FirstName,AU.LastName,AU.MobileNumber,AU.AlternateNumber,AU.EmailAddress,AU.IsActive,
AU.Gender,AD.AddressID,AD.Address1,AD.Address2,AD.Address3,AD.City,AD.State,AD.Country,AD.Pincode 
from ApplicationUser AU JOIN AddressDetail AD on AU.UserID = AD.UserID


