USE [C114_alan.e.george86_gmail]
GO
/****** Object:  UserDefinedTableType [dbo].[SkillsUpdate]    Script Date: 4/30/2022 11:26:56 AM ******/
CREATE TYPE [dbo].[SkillsUpdate] AS TABLE(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL
)
GO
