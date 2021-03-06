USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyQuestions_Delete_ById]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/8/22
-- Description:	Delete By ID for SurveyQuestions 
-- Code Reviewer: 


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyQuestions_Delete_ById]
									@Id int

AS

/* TEST CODE
	
			Declare @Id int = 3

			Execute dbo.SurveyQuestions_Select_ById 
									@Id 
		
			Execute dbo.SurveyQuestions_Delete_ById
									@Id 
											
			Execute dbo.SurveyQuestions_Select_ById 
									@Id 

*/

BEGIN

			DELETE FROM [dbo].[SurveyQuestions]
				  WHERE Id = @Id

END


GO
