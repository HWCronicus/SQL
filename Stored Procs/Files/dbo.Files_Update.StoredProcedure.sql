USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[Files_Update]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 3/23/22
-- Description:	Update Proc for Files
-- Code Reviewer: Nathan Ortiz


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================
CREATE proc [dbo].[Files_Update]
					@Url nvarchar(255)
					,@FileTypeId int
					,@CreatedBy int
					,@Id int

AS

/* TEST CODE

			Declare @Url nvarchar(255) = 'www.ISgoogle.com'
					,@FileTypeId int = 1
					,@CreatedBy int = 69
					,@Id int = 7

			Execute dbo.Files_Select_ById @Id

			Execute dbo.Files_Update
					 @Url
					,@FileTypeId 
					,@CreatedBy
					,@Id

			Execute dbo.Files_Select_ById @Id

*/

BEGIN
			Declare @TimeNow datetime2 = GETUTCDATE()

			UPDATE [dbo].[Files]
			   SET [Url] = @Url
				  ,[FileTypeId] = @FileTypeId
				  ,[CreatedBy] = @CreatedBy
				  ,[DateModified] = @TimeNow

			WHERE Id = @Id

END


GO
