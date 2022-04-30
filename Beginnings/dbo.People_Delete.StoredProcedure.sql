USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_Delete]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[People_Delete]
	@Id int

/*
		Declare @Id int = 7

		Select *
			From dbo.People
			WHERE Id = @Id

		Execute dbo.People_Delete

		Select *
			From dbo.People
			WHERE Id = @Id

*/

as 

BEGIN

		DELETE FROM [dbo].[People]
			WHERE Id = @Id


END
GO
