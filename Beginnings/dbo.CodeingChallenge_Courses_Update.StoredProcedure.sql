USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[CodeingChallenge_Courses_Update]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[CodeingChallenge_Courses_Update]
					@Name nvarchar(100)
					,@Description nvarchar(1000)					
					,@SeasonTermId int
					,@TeacherId int
					,@Id int


as

/*
			select * 
			From dbo.CodeingChallenge_Courses
			
			Declare @Name nvarchar(100) = 'Mathmatics 101'
					,@Description nvarchar(1000) = 'It is a normal math class'					
					,@SeasonTermId int = 2
					,@TeacherId int = 5
					,@Id int = 15

			Execute dbo.CodeingChallenge_Courses_Update
					@Name
					,@Description				
					,@SeasonTermId 
					,@TeacherId 
					,@Id
					
					
			select * 
			From dbo.CodeingChallenge_Courses

*/



Begin
			Declare @timeNow datetime2 = GETUTCDATE()

			Update dbo.CodeingChallenge_Courses
					SET [Name] = @Name
						,[Description] = @Description
						,SeasonTermId = @TeacherId
						,TeacherId = @TeacherId
						,DateModified = @timeNow 

			Where Id = @Id
		

End
GO
