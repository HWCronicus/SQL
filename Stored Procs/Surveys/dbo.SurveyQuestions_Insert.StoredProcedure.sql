USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[SurveyQuestions_Insert]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 4/8/22
-- Description:	Insert proc for SurveyQuestions
-- Code Reviewer:


-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[SurveyQuestions_Insert]
					@UserId int
				   ,@Question nvarchar(500)
				   ,@HelpText nvarchar(255) 
				   ,@IsRequired bit
				   ,@IsMultipleAllowed bit
				   ,@QuestionTypeId int
				   ,@SectionId int
				   ,@StatusId int
				   ,@SortOrder int
				   ,@Id int OUTPUT

AS

/* TEST CODE

			Declare @UserId int = 1
				    ,@Question nvarchar(500) = 'Test Question'
				    ,@HelpText nvarchar(255)  = 'Help Text'
				    ,@IsRequired bit = 1
				    ,@IsMultipleAllowed bit = 1
				    ,@QuestionTypeId int = 2
				    ,@SectionId int = 2
				    ,@StatusId int = 1
				    ,@SortOrder int = 1
				    ,@Id int

			Execute dbo.SurveyQuestions_Insert
					@UserId 
					,@Question
					,@HelpText
					,@IsRequired
					,@IsMultipleAllowed
					,@QuestionTypeId
					,@SectionId
					,@StatusId
					,@SortOrder
					,@Id OUTPUT

			Execute dbo.SurveyQuestions_Select_ById @Id

*/

BEGIN

		INSERT INTO [dbo].[SurveyQuestions]
				   ([UserId]
				   ,[Question]
				   ,[HelpText]
				   ,[IsRequired]
				   ,[IsMultipleAllowed]
				   ,[QuestionTypeId]
				   ,[SectionId]
				   ,[StatusId]
				   ,[SortOrder])

			 VALUES
				   (@UserId 
				   ,@Question
				   ,@HelpText
				   ,@IsRequired
				   ,@IsMultipleAllowed
				   ,@QuestionTypeId
				   ,@SectionId
				   ,@StatusId
				   ,@SortOrder)

			SET @Id = SCOPE_IDENTITY()
			
END
GO
