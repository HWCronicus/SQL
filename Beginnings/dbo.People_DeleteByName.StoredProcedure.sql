USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_DeleteByName]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[People_DeleteByName]
	@Name nvarchar(50)

/*
		Declare @Name nvarchar(50) = 'George'

		Select *
			From dbo.People
			WHERE Name = @Name

		Execute dbo.People_DeleteByName @Name

		Select *
			From dbo.People
			WHERE Name = @Name

*/

as 

BEGIN

		DELETE FROM [dbo].[People]
			WHERE Name = @Name


END
GO
