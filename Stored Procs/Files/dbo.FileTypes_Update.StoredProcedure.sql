USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[FileTypes_Update]    Script Date: 4/30/2022 11:11:10 AM ******/
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

CREATE proc [dbo].[FileTypes_Update]
					@Name nvarchar(50)
					,@Id int

AS

/* TEST CODE

			Declare @Name nvarchar(50) = 'JPG'
					,@Id int = 5

			Execute dbo.FileTypes_Select_ById @Id

			Execute dbo.FileTypes_Update
					 @Name
					,@Id

			Execute dbo.FileTypes_Select_ById @Id

*/

BEGIN

			UPDATE [dbo].[FileTypes]
			   SET [Name] = @Name

			WHERE Id = @Id

END


GO
