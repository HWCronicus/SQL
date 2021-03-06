USE [C114_alan.e.george86_gmail]
GO
/****** Object:  Table [dbo].[CodeingChallenge_Courses]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeingChallenge_Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[SeasonTermId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CodeingChallenge_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CodeingChallenge_Courses] ADD  CONSTRAINT [DF_CodeingChallenge_Courses_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[CodeingChallenge_Courses] ADD  CONSTRAINT [DF_CodeingChallenge_Courses_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[CodeingChallenge_Courses]  WITH CHECK ADD  CONSTRAINT [FK_CodeingChallenge_Courses_CodeingChallenge_SeasonTerms] FOREIGN KEY([SeasonTermId])
REFERENCES [dbo].[CodeingChallenge_SeasonTerms] ([Id])
GO
ALTER TABLE [dbo].[CodeingChallenge_Courses] CHECK CONSTRAINT [FK_CodeingChallenge_Courses_CodeingChallenge_SeasonTerms]
GO
ALTER TABLE [dbo].[CodeingChallenge_Courses]  WITH CHECK ADD  CONSTRAINT [FK_CodeingChallenge_Courses_CodeingChallenge_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[CodeingChallenge_Teachers] ([Id])
GO
ALTER TABLE [dbo].[CodeingChallenge_Courses] CHECK CONSTRAINT [FK_CodeingChallenge_Courses_CodeingChallenge_Teachers]
GO
