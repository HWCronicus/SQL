USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectPaginated]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Users_SelectPaginated] 
					@pageIndex int
					,@pageSize int

as

/*

Declare @pageIndex int = 0
		,@pageSize int = 2

Execute dbo.Users_SelectPaginated @pageIndex 
								  ,@pageSize


*/

Begin

   Declare @offset int = @pageIndex * @pageSize

        SELECT   [Id]
      ,[firstName]
      ,[lastName]
      ,[email]
      ,[password]
      ,[passwordConfirm]
      ,[avatartUrl]
      ,[tenantId]
      ,[DateAdded]
      ,[DateModified]
      , TotalCount = COUNT(1) OVER() -- this the quick way of doing the count. (see below)
        FROM    dbo.Users 
        ORDER BY Id

	OFFSET @offSet Rows
	Fetch Next @pageSize Rows ONLY

End
GO
