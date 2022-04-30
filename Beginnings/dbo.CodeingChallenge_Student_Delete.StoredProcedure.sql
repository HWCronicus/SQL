USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[CodeingChallenge_Student_Delete]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[CodeingChallenge_Student_Delete]
			@Id int

as
/*
		Declare @Id int = 39

		Select *
		From dbo.CodeingChallenge_Students
		Where Id = @Id
		Select *
		From dbo.CodeingChallenge_StudentCourses
		Where StudentId = @Id
		
		Execute dbo.CodeingChallenge_Student_Delete @Id

		Select *
		From dbo.CodeingChallenge_Students
		Where Id = @Id
		Select *
		From dbo.CodeingChallenge_StudentCourses
		Where StudentId = @Id


*/
BEGIN

		Delete dbo.CodeingChallenge_StudentCourses
		Where StudentId = @Id

		Delete dbo.CodeingChallenge_Students
		Where Id = @Id

END
GO
