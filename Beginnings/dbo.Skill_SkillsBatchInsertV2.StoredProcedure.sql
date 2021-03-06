USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Skill_SkillsBatchInsertV2]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Skill_SkillsBatchInsertV2]
				@SkillsList dbo.Skills READONLY
				,@FriendId int
as

/*
		Declare @newSkills dbo.SkillsInsert
		Declare @FriendId int = 15

		Insert into @newSkills (Name)
		Values ('Magic') 

		Insert into @newSkills (Name)
		Values ('Brand Ambassadorship')

		Insert into @newSkills (Name)
		Values ('PWA')

		Insert into @newSkills (Name)
		Values ('Glogic')
 

		Execute dbo.Skill_SkillsBatchInsertV2 @newSkills
											 ,@FriendId

		Select *
		From dbo.Skills as st inner join @newSkills as sl on st.name = sl.Name 

		Select *
		from dbo.FriendSkills

		Select *
		from dbo.Skills
*/

begin

	Delete from dbo.FriendSkills
	where FriendId = @FriendId

	Insert into dbo.Skills (Name)

	Select sl.Name
	From @SkillsList as sl
	where not Exists (select 1 
						from dbo.Skills as st
						where sl.Name = st.Name)

	Insert into dbo.FriendSkills (FriendId, SkillId) 
	select @FriendId
		   ,st.Id
	From @SkillsList as sl inner join dbo.Skills as st on sl.Name = st.Name


End
GO
