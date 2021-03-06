USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyQuestionAnswerOptions_Delete_ById]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/8/22
-- Description:	Delete By ID for SurveyQuestionAnswerOptions
-- Code Reviewer: 


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyQuestionAnswerOptions_Delete_ById]
													@Id int

AS

/* TEST CODE
	
			Declare @Id int = 3

			Execute dbo.SurveyQuestionAnswerOptions_Select_ById 
													@Id 
		
			Execute dbo.SurveyQuestionAnswerOptions_Delete_ById
													@Id 
											
			Execute dbo.SurveyQuestionAnswerOptions_Select_ById 
													@Id 

*/

BEGIN

			DELETE FROM [dbo].[SurveyQuestionAnswerOptions]
				  WHERE Id = @Id

END


GO
