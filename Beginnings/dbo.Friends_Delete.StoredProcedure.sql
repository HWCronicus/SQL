USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Delete]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_Delete]
			@Id int

as

/*	
		Declare @Id int = 20


		Select *
		From dbo.Friends

		Execute dbo.Friends_Delete @Id

		Select *
		From dbo.Friends

*/

Begin

DELETE FROM [dbo].[Friends]
      WHERE id = @Id

End


GO
