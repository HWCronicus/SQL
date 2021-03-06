USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Skill_SkillsBatchInsert]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Skill_SkillsBatchInsert]
				@SkillsList dbo.SkillsInsert READONLY
				,@FriendId int
as

/*
		Declare @newSkills dbo.SkillsInsert
		Declare @FriendId int = 15

		Insert into @newSkills (Name)
		Values ('Test again') 

		Insert into @newSkills (Name)
		Values ('Brand Ambassadorship')

		Insert into @newSkills (Name)
		Values ('PWA')

		Insert into @newSkills (Name)
		Values ('Glogic')

		Insert into @newSkills (Name)
		Values ('F#')
 

		Execute dbo.Skill_SkillsBatchInsert @newSkills
											 ,@FriendId

		Select *
		From dbo.Skills as st inner join @newSkills as sl on st.name = sl.Name 

		Select *
		from dbo.FriendSkills

		Select *
		from dbo.Skills
*/

begin

	Declare @SkillIdTable table (SkillId int)

	Insert into dbo.Skills (Name)
	Output inserted.Id into @SkillIdTable (SkillId)

	Select sl.Name
	From @SkillsList as sl
	where not Exists (select 1 
						from dbo.Skills as st
						where sl.Name = st.Name)

	select *
	from @SkillIdTable

	--Insert into dbo.FriendSkills (FriendId, SkillId)
	--select @FriendId
	--	   ,sk.SkillId
	--From @SkillIdTable as sk



	--Insert into dbo.FriendSkills (FriendId, SkillId) 
	--select @FriendId
	--	   ,st.Id

	--From @SkillsList as sl inner join dbo.Skills as st on sl.Name = st.Name
	--Where not exists (select 1 from dbo.FriendSkills as fs 
	--					where fs.FriendId = @FriendId 
	--					and fs.SkillId = st.Id  ) 


End
GO
