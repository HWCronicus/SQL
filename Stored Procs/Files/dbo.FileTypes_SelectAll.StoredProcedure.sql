USE [Trainsquare]
GO
/****** Object:  StoredProcedure [dbo].[FileTypes_SelectAll]    Script Date: 4/30/2022 11:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alan George
-- Create date: 3/23/22
-- Description:	Select All Proc for Files
-- Code Reviewer:Nathan Ortiz


-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: 
-- Note: 
-- =============================================

CREATE proc [dbo].[FileTypes_SelectAll]
						@pageIndex int 
                        ,@pageSize int

AS

/* TEST CODE
	
			Declare @pageIndex int = 0
					,@pageSize int = 5
		
			Execute FileTypes_SelectAll
						@pageIndex 
                        ,@pageSize 

*/

BEGIN

		Declare @offset int = @pageIndex * @pageSize

		SELECT [Id]
			  ,[Name]
			  ,[TotalCount] = COUNT(1) OVER()

		FROM [dbo].[FileTypes]
		ORDER BY id

		OFFSET @offset Rows
		Fetch Next @pageSize Rows ONLY

END


GO
