USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyAnswers_SelectAll]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/9/22
-- Description:	Select All for SurveyAnswers 
-- Code Reviewer: 


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyAnswers_SelectAll]
									@pageIndex int 
									,@pageSize int
AS

/* TEST CODE

			Declare 
					@pageIndex int = 0
					,@pageSize int = 10

			Execute dbo.SurveyAnswers_SelectAll
					@pageIndex
					,@pageSize

*/

BEGIN

			Declare @offset int = @pageIndex * @pageSize

			SELECT [Id]
				  ,[InstanceId]
				  ,[QuestionId]
				  ,[AnswerOptionId]
				  ,[Answer]
				  ,[AnswerNumber]
				  ,[DateCreated]
				  ,[DateModified]
				  ,[TotalCount] = COUNT(1) OVER()
			  FROM [dbo].[SurveyAnswers]

			ORDER BY id

			OFFSET @offset Rows
			Fetch Next @pageSize Rows ONLY

END


GO
