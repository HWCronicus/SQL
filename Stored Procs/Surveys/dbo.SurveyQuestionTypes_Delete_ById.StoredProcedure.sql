USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyQuestionTypes_Delete_ById]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/7/22
-- Description:	Delete By ID Proc for SurveyQuestionTypes
-- Code Reviewer: 


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyQuestionTypes_Delete_ById]
											@Id int 

AS

/* TEST CODE
	
			Declare @Id int = 8

			Execute dbo.SurveyQuestionTypes_Select_ById
											@Id 
		
			Execute dbo.SurveyQuestionTypes_Delete_ById
											@Id 

			Execute dbo.SurveyQuestionTypes_Select_ById 
											@Id 

*/


BEGIN

			DELETE FROM [dbo].SurveyQuestionTypes

			WHERE Id = @id

END


GO
