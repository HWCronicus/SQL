USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyQuestions_Select_ById]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/8/22
-- Description:	Select By ID for SurveyQuestions 
-- Code Reviewer: 


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyQuestions_Select_ById]
									@Id int

AS

/* TEST CODE

			Declare 
				@Id int = 1

			Execute dbo.SurveyQuestions_Select_ById
					@Id 

*/

BEGIN

		SELECT sq.[Id]
			  ,[UserId]
			  ,[Question]
			  ,[HelpText]
			  ,[IsRequired]
			  ,[IsMultipleAllowed]
			  ,sqt.[Name] as [QuestionType]
			  ,[SectionId]
			  ,ss.[Name] as [Status]
			  ,[SortOrder]
			  ,[DateCreated]
			  ,[DateModified]

		  FROM [dbo].[SurveyQuestions] as sq inner join dbo.SurveyStatus as ss 
					on sq.StatusId = ss.Id
				inner join dbo.SurveyQuestionTypes as sqt
					on sq.QuestionTypeId = sqt.Id

		  WHERE sq.Id = @Id

END


GO
