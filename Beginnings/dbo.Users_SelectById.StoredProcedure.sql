USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectById]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Users_SelectById]
	@Id int

as
/*
	Declare @Id int = 2
	Execute dbo.Users_SelectById @Id


*/

BEGIN


SELECT [Id]
      ,[firstName]
      ,[lastName]
      ,[email]
      ,[password]
      ,[passwordConfirm]
      ,[avatartUrl]
      ,[tenantId]
      ,[DateAdded]
      ,[DateModified]
  FROM [dbo].[Users]
  Where Id = @Id

END

GO
