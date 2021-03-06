USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Update]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Users_Update]
			@firstName nvarchar(100)
			,@lastName nvarchar(100)
			,@email nvarchar(100)
			,@password nvarchar(64)
			,@passwordConfirm nvarchar(64)
			,@avatarUrl nvarchar(100)
			,@tenantId nvarchar(MAX)
			,@Id int

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

	Select *
	From dbo.Users
	Where Id = @Id

	Execute dbo.Users_Update
			@firstName
			,@lastName 
			,@email 
			,@password
			,@passwordConfirm
			,@avatarUrl
			,@tenantId
			,@Id



	Select *
	From dbo.Users
	Where Id = @Id



*/

Begin

		Declare @timeNow datetime2 = GETUTCDATE()

		UPDATE [dbo].[Users]
		SET [firstName] = @firstName
			,[lastName] = @lastName
			,[email] = @email
			,[password] = @password
			,[passwordConfirm] = @passwordConfirm
			,[avatartUrl] = @avatarUrl
			,[tenantId] = @tenantId
			,[DateModified] = @timeNow

		WHERE Id = @Id

 End

GO
