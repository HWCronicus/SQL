USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_SelectRandom50]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Sabio_Addresses_SelectRandom50]

/*

	Execute [dbo].[Sabio_Addresses_SelectRandom50]

*/

as
BEGIN

	SELECT top 50 
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
	  Order By NEWID()

END



GO
