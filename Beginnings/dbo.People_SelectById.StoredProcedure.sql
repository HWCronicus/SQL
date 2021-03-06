USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_SelectById]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_SelectById]
		@Id int

as


/*
	Declare @Id int = 2

	Execute dbo.People_SelectById @Id

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
	 Where Id = @Id

END
GO
