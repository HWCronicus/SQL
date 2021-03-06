USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Search]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Friends_Search]
						@pageIndex int 
                        ,@pageSize int
						,@Query nvarchar(100)

as

/*
Declare @pageIndex int = 0
		,@pageSize int = 5
		,@Query nvarchar(100) = '3'

Execute dbo.Friends_Search 
						@pageIndex 
						,@pageSize  
						,@Query

*/

Begin

    Declare @offset int = @pageIndex * @pageSize

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
		  , TotalCount = COUNT(1) OVER()

	  FROM [dbo].[Friends]

		WHERE (title LIKE '%' + @Query + '%' OR 
			 headline LIKE '%' + @Query + '%' OR 
			 slug LIKE '%' + @Query + '%')

	  ORDER BY id
	  OFFSET @offset Rows
		Fetch Next @pageSize Rows ONLY
End
GO
