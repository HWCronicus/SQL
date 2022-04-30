USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_SelectAll]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_SelectAll]

as


/*

	Execute dbo.People_SelectAll

*/

BEGIN

	SELECT [Id]
		  ,[Name]
		  ,[Age]
		  ,[isSmoker]
		  ,[DateAdded]
		  ,[DateModified]
		  ,[UserId]
	 FROM [dbo].[People]

END
GO
