USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectAll_v2]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SelectAll_v2]


/*

Execute dbo.Friends_SelectAll_v2

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

End


GO
