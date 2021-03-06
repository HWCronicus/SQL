USE [C114_alan.e.george86_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_DeleteV2]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_DeleteV2]
			@Id int

as

/*	
		Execute dbo.Friends_SelectAll_V3
		
		Declare @Id int = 42	
		Execute dbo.Friends_SelectByIdV3 @Id

		Execute dbo.Friends_DeleteV2 @Id

		Execute dbo.Friends_SelectByIdV3 @Id

		Select *
		From dbo.FriendSkills
		Select *
		From dbo.Images

*/

Begin

Declare @deletedIds table (ImageId int)

Delete dbo.FriendSkills 
where FriendId = @Id

DELETE dbo.Friends	
output deleted.PrimaryImageId into @deletedIds
where Id = @Id

DELETE dbo.Images
from dbo.Images as i inner join @deletedIds as d on i.Id = d.ImageId 
End


GO
