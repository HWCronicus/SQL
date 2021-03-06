USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectById]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SelectById]
	@Id int


/*

Declare @Id int = 2
Execute dbo.Friends_SelectById @Id

*/

as

Begin

SELECT [id]
      ,[title]
      ,[bio]
      ,[summary]
      ,[headline]
      ,[slug]
      ,[statusId]
      ,[PrimaryImageId]
	  ,[DateCreated]
      ,[dateModified]
  FROM [dbo].[Friends]
  Where Id = @Id

End


GO
