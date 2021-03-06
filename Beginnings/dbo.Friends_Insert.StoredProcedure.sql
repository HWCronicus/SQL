USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Insert]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Friends_Insert]
					@title nvarchar(120)
					,@bio nvarchar(700)
					,@summary nvarchar(255)
					,@headline nvarchar(80)
					,@slug nvarchar(120)
					,@statusId int
					,@PrimaryImageId nvarchar(50)
					,@id int OUTPUT

as

/*
		
			Declare @title nvarchar(120) = 'Alan George 3'
					,@bio nvarchar(700) = 'This is the test bio'
					,@summary nvarchar(255) = 'Summary'
					,@headline nvarchar(80) = 'GOAT'
					,@slug nvarchar(120) = 'GOAT'
					,@statusId int = 1
					,@PrimaryImageId int = 2
					,@id int = 1

			Execute dbo.Friends_Insert
					@title
					,@bio
					,@summary
					,@headline
					,@slug
					,@statusId
					,@PrimaryImageId
					,@id OUTPUT


			Select *
			From dbo.Friends
			Where id = @id

*/

Begin

			INSERT INTO [dbo].[Friends]
					([title]
					,[bio]
					,[summary]
					,[headline]
					,[slug]
					,[statusId]
					,[PrimaryImageId])


			VALUES
					(@title
					,@bio
					,@summary
					,@headline
					,@slug 
					,@statusId
					,@PrimaryImageId)

			SET @id = SCOPE_IDENTITY()

End
GO
