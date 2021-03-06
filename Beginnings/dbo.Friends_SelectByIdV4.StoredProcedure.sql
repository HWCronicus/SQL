USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectByIdV4]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SelectByIdV4]
			@Id int 

/*

Declare @Id int = 3
Execute dbo.Friends_SelectByIdV4 @Id



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
	  ,f.PrimaryImageId
	  ,i.Url
	  ,i.TypeId
	  ,SKills = (
				Select JSON_QUERY(s.Name, '$.Name') as Name
				From dbo.Skills as s inner join dbo.FriendSkills as fs
						on s.Id = fs.SkillId
				Where fs.FriendId = f.Id
				)
	  ,f.DateCreated
      ,f.DateModified




  FROM [dbo].[Friends] as f inner join dbo.Images as i
  on f.PrimaryImageId = i.Id

  Where f.Id = @Id


End


GO
