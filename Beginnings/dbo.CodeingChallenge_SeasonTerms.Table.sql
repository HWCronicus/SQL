USE [C114_alan.e.george86_gmail]
GO
/****** Object:  Table [dbo].[CodeingChallenge_SeasonTerms]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeingChallenge_SeasonTerms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Term] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CodeingChallenge_SeasonTerms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
