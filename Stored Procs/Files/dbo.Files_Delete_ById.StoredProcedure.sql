USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[Files_Delete_ById]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 3/23/22
-- Description:	Delete By ID Proc for Files
-- Code Reviewer:


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[Files_Delete_ById]
						@Id int 

AS

/* TEST CODE
	
			Declare @Id int = 3

			Select *
			From dbo.Files
			Where Id = @Id
		
			Execute dbo.Files_Delete_ById
						@Id 

			Select *
			From dbo.Files
			Where Id = @Id

*/

BEGIN

			DELETE FROM dbo.Files

			WHERE Id = @id

END


GO
