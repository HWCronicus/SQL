USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyQuestionTypes_SelectAll]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/7/22
-- Description:	Select All Proc for SurveyQuestionTypes
-- Code Reviewer:


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyQuestionTypes_SelectAll]


AS

/* TEST CODE
		
			Execute SurveyQuestionTypes_SelectAll

*/


BEGIN

		SELECT [Id]
			  ,[Name]

		FROM [dbo].[SurveyQuestionTypes]
		ORDER BY id

END


GO
