USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Insert_v4]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE proc [dbo].[Friends_Insert_v4]					
					@Title nvarchar(120)
					,@Bio nvarchar(700)
					,@Summary nvarchar(255)
					,@Headline nvarchar(80)
					,@Slug nvarchar(120)
					,@StatusId int
					,@Url nvarchar(100)
					,@TypeId int
					,@Skills dbo.Skills READONLY
					,@FriendId int OUTPUT


as

/*
			Declare @Skills dbo.Skills
			Insert into @Skills (Name)
			Values ('Master pokemon trainer') 
			Insert into @Skills (Name)
			Values ('Survived the army')
		
			Declare @Title nvarchar(120) = 'Alan George 3'
					,@Bio nvarchar(700) = 'This is the test bio'
					,@Summary nvarchar(255) = 'Summary'
					,@Headline nvarchar(80) = 'GOAT'
					,@Slug nvarchar(120) = 'GOAT'
					,@StatusId int = 1
					,@Url nvarchar(100) = 'www.google.com/image.jpg'
					,@ImageType int = 1
					,@FriendId int = 1
					

			Execute [dbo].[Friends_Insert_v4]			
					@Title
					,@Bio
					,@Summary
					,@Headline
					,@Slug
					,@StatusId
					,@Url
					,@ImageType		
					,@Skills
					,@FriendId OUTPUT

			Execute dbo.Friends_SelectByIdV3 @FriendId

*/



Begin

			Declare @ImageId int
		
			INSERT INTO dbo.Images
					(TypeId
					,Url)

			VALUES 
					(@TypeId
					,@Url)

			SET @ImageId = SCOPE_IDENTITY()


			INSERT INTO [dbo].[Friends]
					([Title]
					,[Bio]
					,[Summary]
					,[Headline]
					,[Slug]
					,[StatusId]
					,[PrimaryImageId])


			VALUES
					(@title
					,@bio
					,@summary
					,@headline
					,@slug 
					,@statusId
					,@ImageId)

			SET @FriendId = SCOPE_IDENTITY()

			Execute dbo.Skill_SkillsBatchInsertV2 @Skills
									              ,@FriendId

End
GO
