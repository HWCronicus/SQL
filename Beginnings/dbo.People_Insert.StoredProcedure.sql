USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_Insert]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_Insert]

		 @PersonName nvarchar(50)
		,@Age int
		,@IsASmoker bit
		,@UserId nvarchar(128)
		,@Id int OUTPUT


/*---TEST CODE---


		Declare @PersonName nvarchar(50) = 'Chelsey'
			,@Age int = 28	
			,@IsASmoker bit = 0
			,@UserId nvarchar(128) = 'Cron42069'
			@Id int = 0;

		Execute dbo.People_Insert
								@PersonName
								,@Age 
								,@IsASmoker 
								,@UserId
								,@Id OUTPUT

			Select @Id

			Select *
			From dbo.People
			Where Id = @Id


*/


as 

BEGIN
	

	INSERT INTO [dbo].[People]
			   ([Name]
			   ,[Age]
			   ,[isSmoker]
			   ,[UserId])
		 VALUES
			   (@PersonName
			   ,@Age
			   ,@IsASmoker
			   ,@UserId)

		SET @Id = SCOPE_IDENTITY()

END
GO
