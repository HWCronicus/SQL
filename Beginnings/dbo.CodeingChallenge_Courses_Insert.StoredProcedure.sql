USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[CodeingChallenge_Courses_Insert]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[CodeingChallenge_Courses_Insert]
					@Name nvarchar(100)
					,@Description nvarchar(1000)					
					,@SeasonTermId int
					,@TeacherId int
					,@Id int OUTPUT


as

/*
		
			Declare @Name nvarchar(100) = 'Mathmatics 101'
					,@Description nvarchar(1000) = 'It is a normal math class'					
					,@SeasonTermId int = 2
					,@TeacherId int = 5
					,@Id int = 1

			Execute dbo.CodeingChallenge_Courses_Insert
					@Name
					,@Description				
					,@SeasonTermId 
					,@TeacherId 
					,@Id OUTPUT
					
					


			Select *
			From dbo.CodeingChallenge_Courses

*/



Begin


			INSERT INTO dbo.CodeingChallenge_Courses
					([Name]
					,[Description]
					,SeasonTermId
					,TeacherId)


			VALUES
					(@Name
					,@Description				
					,@SeasonTermId 
					,@TeacherId)

			SET @Id = SCOPE_IDENTITY()

			--Select *
			--From dbo.CodeingChallenge_Courses
			--Where Id =  @Id


			

End
GO
