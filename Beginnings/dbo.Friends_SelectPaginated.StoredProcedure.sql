USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectPaginated]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE proc [dbo].[Friends_SelectPaginated]    
						@pageIndex int 
                        ,@pageSize int


As

/*


Declare @pageIndex int = 2
		,@pageSize int = 5

Execute dbo.Friends_SelectPaginated @pageIndex 
									,@pageSize   


*/

Begin


   Declare @offset int = @pageIndex * @pageSize

        SELECT   [id]
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

        FROM    dbo.Friends
        ORDER BY id

	OFFSET @offset Rows
	Fetch Next @pageSize Rows ONLY

End
GO
