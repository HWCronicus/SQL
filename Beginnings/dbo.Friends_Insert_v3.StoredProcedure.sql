USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Insert_v3]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_Insert_v3]
					@Url nvarchar(100)
					,@ImageType int					
					,@title nvarchar(120)
					,@bio nvarchar(700)
					,@summary nvarchar(255)
					,@headline nvarchar(80)
					,@slug nvarchar(120)
					,@statusId int
					,@Id int OUTPUT
					,@ImageId int OUTPUT

as

/*
		
			Declare @Url nvarchar(100) = 'www.google.com/image.jpg'
					,@ImageType int = 2
					,@title nvarchar(120) = 'Alan George 3'
					,@bio nvarchar(700) = 'This is the test bio'
					,@summary nvarchar(255) = 'Summary'
					,@headline nvarchar(80) = 'GOAT'
					,@slug nvarchar(120) = 'GOAT'
					,@statusId int = 1
					

			Execute dbo.Friends_Insert_v2
					@Url
					,@ImageType
					,@title
					,@bio
					,@summary
					,@headline
					,@slug
					,@statusId
					


			Select *
			From dbo.Friends as f inner join dbo.Images as i
			on f.PrimaryImageId = i.Id
			Where f.Id = @id

*/



Begin

			INSERT INTO dbo.Images
					(TypeId
					,Url)

			VALUES 
					(@ImageType
					,@Url)

			SET @ImageId = SCOPE_IDENTITY()


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
					,@ImageId)

			SET @Id = SCOPE_IDENTITY()

			Select *
			From dbo.Friends as f inner join dbo.Images as i
			on f.PrimaryImageId = i.Id
			Where f.Id = @Id


			

End
GO
