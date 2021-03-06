USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Search]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Users_Search]
					@Query nvarchar(100)

as

/*

Declare @Query nvarchar(100) = 'George'

Execute dbo.Users_Search @Query

*/

Begin

SELECT [Id]
      ,[firstName]
      ,[lastName]
      ,[email]
      ,[password]
      ,[passwordConfirm]
      ,[avatartUrl]
      ,[tenantId]
      ,[DateAdded]
      ,[DateModified]
  FROM [dbo].[Users]

    WHERE (firstName LIKE '%' + @Query + '%' OR 
         lastName LIKE '%' + @Query + '%')

End
GO
