USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectByIdV2]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SelectByIdV2]
			@Id int


/*
Declare @Id int = 3
Execute dbo.Friends_SelectByIdV2 @Id

*/

as

Begin

SELECT f.Id
      ,f.Title
      ,f.Bio
      ,f.Summary
      ,f.Headline
      ,f.Slug
      ,f.StatusId
	  ,i.Url
	  ,i.TypeId
	  ,f.DateCreated
      ,f.DateModified


  FROM [dbo].[Friends] as f inner join dbo.Images as i
  on f.PrimaryImageId = i.Id

  WHERE f.Id = @Id

End


GO
