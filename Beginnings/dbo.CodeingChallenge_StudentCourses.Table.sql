USE [C114_alan.e.george86_gmail]
GO
/****** Object:  Table [dbo].[CodeingChallenge_StudentCourses]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeingChallenge_StudentCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CodeingChallenge_StudentCourses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CodeingChallenge_StudentCourses] ADD  CONSTRAINT [DF_CodeingChallenge_StudentCourses_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[CodeingChallenge_StudentCourses] ADD  CONSTRAINT [DF_CodeingChallenge_StudentCourses_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[CodeingChallenge_StudentCourses]  WITH CHECK ADD  CONSTRAINT [FK_CodeingChallenge_StudentCourses_CodeingChallenge_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[CodeingChallenge_Courses] ([Id])
GO
ALTER TABLE [dbo].[CodeingChallenge_StudentCourses] CHECK CONSTRAINT [FK_CodeingChallenge_StudentCourses_CodeingChallenge_Courses]
GO
ALTER TABLE [dbo].[CodeingChallenge_StudentCourses]  WITH CHECK ADD  CONSTRAINT [FK_CodeingChallenge_StudentCourses_CodeingChallenge_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[CodeingChallenge_Students] ([Id])
GO
ALTER TABLE [dbo].[CodeingChallenge_StudentCourses] CHECK CONSTRAINT [FK_CodeingChallenge_StudentCourses_CodeingChallenge_Students]
GO
