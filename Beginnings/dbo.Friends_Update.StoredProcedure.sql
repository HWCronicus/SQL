USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Update]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Friends_Update]
					@title nvarchar(120)
					,@bio nvarchar(700)
					,@summary nvarchar(255)
					,@headline nvarchar(80)
					,@slug nvarchar(120)
					,@statusId int
					,@primaryImageId int
					,@id int

as

/*

			Declare @title nvarchar(120) = 'Alan George 3'
					,@bio nvarchar(700) = 'This is the test bio'
					,@summary nvarchar(255) = 'Summary'
					,@headline nvarchar(80) = 'GOAT'
					,@slug nvarchar(120) = 'GOAT'
					,@statusId int = 1
					,@primaryImageId int = 3
					,@id int = 1

			Select *
			From dbo.Friends
			Where id = @id

			Execute dbo.Friends_Update
					@title
					,@bio
					,@summary
					,@headline
					,@slug
					,@statusId
					,@primaryImageId
					,@id



			Select *
			From dbo.Friends
			Where id = @id

*/

Begin

Declare @timeNow datetime2 = GETUTCDATE()

UPDATE [dbo].[Friends]
   SET [dateModified] = @timeNow
      ,[title] = @title
      ,[bio] = @bio
      ,[summary] = @summary
      ,[headline] = @headline
      ,[slug] = @slug
      ,[statusId] = @statusId
      ,[PrimaryImageId] = @primaryImageId

 WHERE id = @id

End


GO
