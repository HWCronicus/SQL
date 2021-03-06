USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyAnswers_ByCreatedBy]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/9/22
-- Description:	Select By Created By for SurveyAnswers 
-- Code Reviewer: 


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyAnswers_ByCreatedBy]
									@UserId int
									,@pageIndex int 
									,@pageSize int
AS

/* TEST CODE

			Declare 
					@UserId int = 1
					,@pageIndex int = 0
					,@pageSize int = 10

			Execute dbo.SurveyAnswers_ByCreatedBy
					@UserId 
					,@pageIndex
					,@pageSize

*/

BEGIN

			Declare @offset int = @pageIndex * @pageSize

			SELECT sa.[Id]
				  ,sq.UserId as CreatedBy
				  ,[InstanceId]
				  ,[QuestionId]
				  ,[AnswerOptionId]
				  ,[Answer]
				  ,[AnswerNumber]
				  ,sa.[DateCreated]
				  ,sa.[DateModified]
				  ,[TotalCount] = COUNT(1) OVER()
			  FROM [dbo].[SurveyAnswers] as sa inner join dbo.SurveyQuestions as sq
										on sa.QuestionId = sq.Id

			  WHERE sq.UserId = @UserId

			ORDER BY id

			OFFSET @offset Rows
			Fetch Next @pageSize Rows ONLY

END


GO
