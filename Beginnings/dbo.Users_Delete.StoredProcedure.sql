USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Delete]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Users_Delete]
	@Id int

/*	
		Declare @Id int = 2

		Select *
		From dbo.Users
		Where Id = @Id

		Execute dbo.Users_Delete @Id

		Select *
		From dbo.Users
		Where Id = @Id

*/

as

Begin

	DELETE FROM [dbo].[Users]
		  WHERE Id = @Id

End


GO
