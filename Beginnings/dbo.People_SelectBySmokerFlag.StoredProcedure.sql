USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_SelectBySmokerFlag]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_SelectBySmokerFlag]
		@SmokerFlag bit

as


/*
	Declare @SmokerFlag bit = 0

	Execute dbo.People_SelectBySmokerFlag @SmokerFlag

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
	 Where ([isSmoker] = @SmokerFlag)
			OR
			(@SmokerFlag IS NULL AND [isSmoker] IS NULL)

END
GO
