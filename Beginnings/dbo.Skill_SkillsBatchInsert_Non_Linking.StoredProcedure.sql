USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Skill_SkillsBatchInsert_Non_Linking]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Skill_SkillsBatchInsert_Non_Linking]
				@SkillsList dbo.Skills READONLY
				
as

/*
		Declare @newSkills dbo.Skills

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
		
		Select *
		from @newSkills


		Execute dbo.Skill_SkillsBatchInsert_Non_Linking @newSkills
											   

		Select *
		from dbo.Skills
*/

begin


	Insert into dbo.Skills (Name)

	Select sl.Name
	From @SkillsList as sl
	where not Exists (select 1 
						from dbo.Skills as st
						where sl.Name = st.Name)

End
GO
