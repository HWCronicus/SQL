USE [C114_alan.e.george86_gmail]
GO
/****** Object:  UserDefinedTableType [dbo].[FriendSkills]    Script Date: 4/30/2022 11:26:56 AM ******/
CREATE TYPE [dbo].[FriendSkills] AS TABLE(
	[FriendId] [int] NOT NULL,
	[SkillId] [int] NOT NULL
)
GO
