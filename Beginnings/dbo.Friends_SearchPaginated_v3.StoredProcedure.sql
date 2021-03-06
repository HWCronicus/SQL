USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SearchPaginated_v3]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SearchPaginated_v3]
			@pageIndex int
			,@pageSize int
			,@Query nvarchar(100)


/*

Declare @pageIndex int = 0
		,@pageSize int = 4
		,@Query nvarchar(100) = 'a'

Execute dbo.Friends_SearchPaginated_v3 @pageIndex
									   ,@pageSize
									   ,@Query

*/

as

Begin

Declare @offset int = @pageIndex * @pageSize

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
				Select  s.Id as Id
						,s.Name as Name
				From dbo.Skills as s inner join dbo.FriendSkills as fs
						on s.Id = fs.SkillId
				Where fs.FriendId = f.Id
				For JSON AUTO
				)
	  ,f.DateCreated
      ,f.DateModified
	  , TotalCount = COUNT(1) OVER()


  FROM [dbo].[Friends] as f inner join dbo.Images as i
  on f.PrimaryImageId = i.Id

	WHERE (f.Title LIKE '%' + @Query + '%' OR 
		f.Headline LIKE '%' + @Query + '%' OR 
		f.Slug LIKE '%' + @Query + '%')

  ORDER BY id

  	OFFSET @offset Rows
	Fetch Next @pageSize Rows ONLY


End


GO
