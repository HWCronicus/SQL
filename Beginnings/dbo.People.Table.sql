USE [C114_alan.e.george86_gmail]
GO
/****** Object:  Table [dbo].[People]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[isSmoker] [bit] NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[People] ADD  CONSTRAINT [DF_People_DateAdded]  DEFAULT (getutcdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[People] ADD  CONSTRAINT [DF_People_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
