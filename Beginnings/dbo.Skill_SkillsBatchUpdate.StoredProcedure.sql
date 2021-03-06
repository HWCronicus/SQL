USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Skill_SkillsBatchUpdate]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Skill_SkillsBatchUpdate]
				@SkillsList dbo.SkillsUpdate READONLY
				,@FriendId int
as

/*
		Declare @newSkills dbo.SkillsUpdate
		Declare @FriendId int = 15

		Insert into @newSkills (Id, Name)
		Values (35, 'Test again') 

		Insert into @newSkills (Id, Name)
		Values (23, 'Brand Ambassadorship')

		Insert into @newSkills (Id, Name)
		Values (24, 'PWA')

		Insert into @newSkills (Id, Name)
		Values (33, 'Glogic')

		Insert into @newSkills (Id, Name)
		Values (10, 'F#')

		Execute dbo.Skill_Skill_SkillsBatchUpdate @newSkills
											      ,@FriendId

		Select *
		from dbo.Friends

		Select *
		from dbo.FriendSkills

		Select *
		from dbo.Skills
*/

begin
	
	Declare @SkillIdTable table (SkillId int)
 
	--- Delete Linked Skills That are not used anymore
	Delete From dbo.FriendSkills
	From dbo.FriendSkills as fs inner join dbo.Skills as st on fs.skillId = st.Id
	inner join @SkillsList as sl on sl.name = st.name
	Where fs.friendId = @FriendId and fs.skillId != sl.Id


	--- Insert New Into Skill Table and Link
	Insert into dbo.Skills (Name)
	Output inserted.Id into @SkillIdTable (SkillId)

	Select sl.Name
	From @SkillsList as sl
	where not Exists (select 1 
						from dbo.Skills as st
						where sl.Name = st.Name)

	Insert into dbo.FriendSkills (FriendId, SkillId)
	select @FriendId
		   ,sk.SkillId
	From @SkillIdTable as sk


	-- Insert Existing Skills into Friend Link
	Insert into dbo.FriendSkills (FriendId, SkillId) 
	select @FriendId
		   ,st.Id

	From @SkillsList as sl inner join dbo.Skills as st on sl.Name = st.Name
	Where not exists (select 1 from dbo.FriendSkills as fs where fs.FriendId = @FriendId and fs.SkillId = st.Id  ) 


End
GO
