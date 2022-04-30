USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyQuestionAnswerOptions_SelectALl]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/8/22
-- Description:	Select ALl for SurveyQuestionAnswerOptions 
-- Code Reviewer: 


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyQuestionAnswerOptions_SelectALl]
											@pageIndex int 
											,@pageSize int
AS

/* TEST CODE

			Declare 
					@pageIndex int = 0
					,@pageSize int = 10

			Execute dbo.SurveyQuestionAnswerOptions_SelectALl
					@pageIndex
					,@pageSize

*/

BEGIN
			Declare @offset int = @pageIndex * @pageSize

			SELECT [Id]
				  ,[QuestionId]
				  ,[Text]
				  ,[Value]
				  ,[AdditionalInfo]
				  ,[CreatedBy]
				  ,[DateCreated]
				  ,[DateModified]
				  ,[TotalCount] = COUNT(1) OVER()

			  FROM [dbo].[SurveyQuestionAnswerOptions]

			ORDER BY id

			OFFSET @offset Rows
			Fetch Next @pageSize Rows ONLY

END


GO
