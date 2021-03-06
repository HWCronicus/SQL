USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_UpdateV2]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Friends_UpdateV2]
					@Title nvarchar(120)
					,@Bio nvarchar(700)
					,@Summary nvarchar(255)
					,@Headline nvarchar(80)
					,@Slug nvarchar(120)
					,@StatusId int
					,@PrimaryImageId int
					,@Url nvarchar(100)
					,@typeId int	
					,@Skills dbo.Skills READONLY
					,@Id int

as

/*

			Declare @Skills dbo.Skills
			Insert into @Skills (Name)
			Values ('Master pokemon trainer') 
			Insert into @Skills (Name)
			Values ('Brand Name Follower')

			Declare	@Title nvarchar(120) = 'Alan George 420'
					,@Bio nvarchar(700) = 'This is the test bio'
					,@Summary nvarchar(255) = 'Summary2'
					,@Headline nvarchar(80) = 'GOAT2'
					,@Slug nvarchar(120) = 'GOAT2'
					,@StatusId int = 1
					,@PrimaryImageId int = 32
					,@Url nvarchar(100) = 'www.gg.game.org.net/plus'
					,@typeId int	 = 1
					,@Id int = 41

			Execute dbo.Friends_SelectByIdV3 @Id

			Execute dbo.Friends_UpdateV2				
					@Title
					,@Bio
					,@Summary
					,@Headline
					,@Slug
					,@StatusId
					,@PrimaryImageId
					,@Url
					,@typeId	
					,@Skills
					,@id

		 Execute dbo.Friends_SelectByIdV3 @Id

*/

Begin

	Declare @timeNow datetime2 = GETUTCDATE()


	Update dbo.Images
		SET [Url] = @Url
			,TypeId = @typeId
			,DateAdded = @timeNow
		Where @PrimaryImageId = Id

	UPDATE [dbo].[Friends] 

		SET DateModified = @timeNow 
			,Title = @title 
			,Bio = @bio
			,Summary = @summary 
			,Headline = @headline
			,Slug = @slug
			,StatusId = @statusId
			,PrimaryImageId = @primaryImageId
         

			Where Id = @Id

	 
	 Execute dbo.Skill_SkillsBatchInsertV2 @Skills
										   ,@Id

End


GO
