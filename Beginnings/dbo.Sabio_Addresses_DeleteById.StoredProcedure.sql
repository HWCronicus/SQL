USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_DeleteById]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Sabio_Addresses_DeleteById]
			@Id int
/*

	declare @Id int = 1008
	Execute [dbo].[Sabio_Addresses_DeleteById] @Id

*/

as
BEGIN

	  DELETE
	  FROM [dbo].[Sabio_Addresses]
	  Where Id = @Id

END



GO
