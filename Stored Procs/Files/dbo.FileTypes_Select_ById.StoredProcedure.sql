USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[FileTypes_Select_ById]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 3/23/22
-- Description:	Select By ID Proc for FileTypes
-- Code Reviewer:


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[FileTypes_Select_ById]
						@Id int 

AS

/* TEST CODE
	
			Declare @Id int = 2
		
			Execute dbo.FileTypes_Select_ById
						@Id 

*/

BEGIN

			Select [Id]
			   	   ,[Name]

			From dbo.FileTypes
			Where Id = @Id

END


GO
