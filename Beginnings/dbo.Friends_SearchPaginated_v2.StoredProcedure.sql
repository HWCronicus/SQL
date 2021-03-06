USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SearchPaginated_v2]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SearchPaginated_v2]
			@Index int
			,@PageSize int
			,@Query nvarchar(100)


/*

Declare @Index int = 0
		,@PageSize int = 4
		,@Query nvarchar(100) = 'a'

Execute dbo.Friends_SearchPaginated_v2 @Index
									   ,@PageSize
									   ,@Query

*/

as

Begin

Declare @offset int = @Index * @PageSize

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
