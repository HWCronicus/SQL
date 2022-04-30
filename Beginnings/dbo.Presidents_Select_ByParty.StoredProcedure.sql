USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Presidents_Select_ByParty]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Presidents_Select_ByParty]
			@PartyAffiliation nvarchar(50) 

AS

/*	TEST CODE
Republican
Democratic

Declare @PartyAffiliation nvarchar(50)  = 'Democratic'

Execute dbo.Presidents_Select_ByParty @PartyAffiliation

*/

BEGIN


SELECT [FirstName]
      ,[LastName]

  FROM [dbo].[Presidents]
  Where PartyAffiliation = @PartyAffiliation


END

GO
