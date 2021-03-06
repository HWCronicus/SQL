USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectAll_With_Skill_v3]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SelectAll_With_Skill_v3]


/*

Execute dbo.Friends_SelectAll_With_Skill_v3

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
	  ,SKills = (
				Select  s.Id as Id
						,s.Name as Name
				From dbo.Skills as s inner join dbo.FriendSkills as fs
						on s.Id = fs.SkillId
				Where fs.FriendId = f.Id
				For JSON AUTO
				)
	  ,f.DateCreated
      ,f.DateModified



  FROM [dbo].[Friends] as f inner join dbo.Images as i
  on f.PrimaryImageId = i.Id

    Where Exists ( 
				select 1
				From dbo.FriendSkills as fs
				Where fs.FriendId = f.Id
				)

End


GO
