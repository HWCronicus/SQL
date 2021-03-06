USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Users_Insert]

			@firstName nvarchar(100)
			,@lastName nvarchar(100)
			,@email nvarchar(100)
			,@password nvarchar(64)
			,@passwordConfirm nvarchar(64)
			,@avatarUrl nvarchar(100)
			,@tenantId nvarchar(MAX)
			,@Id int OUTPUT


as 

/*

		Declare @firstName nvarchar(100) = 'Alan'
			,@lastName nvarchar(100) = 'George'
			,@email nvarchar(100) = 'Brosurf00@yahoo.com'
			,@password nvarchar(64)	= 'password'
			,@passwordConfirm nvarchar(64) = 'password'
			,@avatarUrl nvarchar(MAX) = 'www.google.com'
			,@tenantId nvarchar(30)	= 'Cron42069'
			,@Id int = 1;

		Execute dbo.Users_Insert
								@firstName
								,@lastName 
								,@email 
								,@password
								,@passwordConfirm
								,@avatarUrl
								,@tenantId
								,@Id OUTPUT


			Select *
			From dbo.Users
			Where Id = @Id




*/


BEGIN

INSERT INTO [dbo].[Users]
           ([firstName]
           ,[lastName]
           ,[email]
           ,[password]
           ,[passwordConfirm]
           ,[avatartUrl]
           ,[tenantId])
     VALUES
           (@firstName 
           ,@lastName
           ,@email
           ,@password
           ,@passwordConfirm
           ,@avatarUrl
           ,@tenantId)

		SET @Id = SCOPE_IDENTITY()


END
GO
