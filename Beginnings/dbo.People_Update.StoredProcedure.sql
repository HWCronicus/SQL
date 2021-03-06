USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_Update]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[People_Update]

		 @PersonName nvarchar(50)
		,@Age int
		,@IsASmoker bit
		,@UserId nvarchar(128)
		,@Id int 

as

/*

		Declare @PersonName nvarchar(50) = 'Chelsey'
			,@Age int = 28	
			,@IsASmoker bit = 0
			,@UserId nvarchar(128) = 'Cron42069'
			@Id int = 0;

		Select *
		From dbo.People
		Where Id = @Id

		Execute dbo.People_Update
								@PersonName
								,@Age 
								,@IsASmoker 
								,@UserId
								,@Id 


			Select *
			From dbo.People
			Where Id = @Id


*/


Begin

	Declare @NowDate datetime2 = GETUTCDATE()

	 UPDATE [dbo].[People]
		SET [Name] = @PersonName
		   ,[Age] = @Age
	       ,[isSmoker] = @IsASmoker
	       ,[DateModified] = @NowDate
	       ,[UserId] = @UserId

	  WHERE Id = @Id

END
GO
