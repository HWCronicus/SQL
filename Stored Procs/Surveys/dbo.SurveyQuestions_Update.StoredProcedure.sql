USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyQuestions_Update]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/8/22
-- Description:	Update for SurveyQuestions
-- Code Reviewer:


-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyQuestions_Update]
					@UserId int
					,@Question nvarchar(500)
					,@HelpText nvarchar(255) 
					,@IsRequired bit
					,@IsMultipleAllowed bit
					,@QuestionTypeId int
					,@SectionId int
					,@StatusId int
					,@SortOrder int
					,@Id int

AS

/* TEST CODE

			Declare @UserId int = 2
				    ,@Question nvarchar(500) = 'Test Question Update'
				    ,@HelpText nvarchar(255)  = 'Help Text Update'
				    ,@IsRequired bit = 0
				    ,@IsMultipleAllowed bit = 0
				    ,@QuestionTypeId int = 1
				    ,@SectionId int = 1
				    ,@StatusId int = 2
				    ,@SortOrder int = 2
				    ,@Id int = 1

			Execute dbo.SurveyQuestions_Select_ById @Id

			Execute dbo.SurveyQuestions_Update
					@UserId 
					,@Question
					,@HelpText
					,@IsRequired
					,@IsMultipleAllowed
					,@QuestionTypeId
					,@SectionId
					,@StatusId
					,@SortOrder
					,@Id 

			Execute dbo.SurveyQuestions_Select_ById @Id

*/

BEGIN

			Declare @TimeNow datetime2 = GETUTCDATE()

			UPDATE [dbo].[SurveyQuestions]
		
			SET [UserId] = @UserId 
				,[Question] = @Question
				,[HelpText] = @HelpText
				,[IsRequired] = @IsRequired
				,[IsMultipleAllowed] = @IsMultipleAllowed
				,[QuestionTypeId] = @QuestionTypeId
				,[SectionId] = @SectionId
				,[StatusId] = @StatusId
				,[SortOrder] = @SortOrder
				,[DateModified] = @TimeNow

			WHERE Id = @Id
		
END
GO
