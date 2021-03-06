USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Presidents_Insert]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Presidents_Insert]
			@FirstName nvarchar(50)
           ,@LastName nvarchar(50)
           ,@InaugurationDate nvarchar(50)
           ,@FirstYearInOffice int
           ,@LastYearInOffic int
           ,@PartyAffiliation nvarchar(50)
		   ,@Id int OUTPUT

as
/*

	Declare	@FirstName nvarchar(50) = 'Barack'
           ,@LastName nvarchar(50) = 'Obama'
           ,@InaugurationDate nvarchar(50) = 'January 20, 2009'
           ,@FirstYearInOffice int = 2009
           ,@LastYearInOffic int = 2017
           ,@PartyAffiliation nvarchar(50) = 'Democratic'

	Execute dbo.Presidents_Insert
			@FirstName 
           ,@LastName
           ,@InaugurationDate 
           ,@FirstYearInOffice 
           ,@LastYearInOffic 
           ,@PartyAffiliation
		   ,@Id OUTPUT

	Select * 
	From dbo.Presidents
	Where Id = @Id



*/

Begin


INSERT INTO [dbo].[Presidents]
           ([FirstName]
           ,[LastName]
           ,[InaugurationDate]
           ,[FirstYearInOffice]
           ,[LastYearInOffic]
           ,[PartyAffiliation])
     VALUES
           (@FirstName
           ,@LastName
           ,@InaugurationDate
           ,@FirstYearInOffice
           ,@LastYearInOffic
           ,@PartyAffiliation)

End

GO
