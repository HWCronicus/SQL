USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[CodeingChallenge_Courses_Select_ByCourseId]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[CodeingChallenge_Courses_Select_ByCourseId]
			@Id int 

/*

Declare @Id int = 3
Execute dbo.CodeingChallenge_Courses_Select_ByCourseId @Id

*/

as

Begin

SELECT c.Id
      ,c.Name
      ,c.Description
	  ,s.Term as SeasonTerm
	  ,t.Name as Teacher
	  ,Students = (Select s.Id as Id
						  ,s.Name as Name
					From dbo.CodeingChallenge_Students as s inner join dbo.CodeingChallenge_StudentCourses as sc
					on s.Id = sc.StudentId
					Where c.Id = sc.CourseId
					For JSON AUTO)


  FROM dbo.CodeingChallenge_Courses as c inner join CodeingChallenge_Teachers as t
										 on c.TeacherId = t.Id
										 inner join dbo.CodeingChallenge_SeasonTerms as s
										 on s.Id = c.SeasonTermId
  Where c.Id = @Id


End


GO
