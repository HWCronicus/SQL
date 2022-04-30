USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_SelectAll]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Sabio_Addresses_SelectAll]
/*

	Execute [dbo].[Sabio_Addresses_SelectAll] 

*/

as
BEGIN

	SELECT 
	      [Id]
		  ,[LineOne]
		  ,[SuiteNumber]
		  ,[City]
		  ,[State]
		  ,[PostalCode]
		  ,[IsActive]
		  ,[Lat]
		  ,[Long]
	  FROM [dbo].[Sabio_Addresses]

END



GO
