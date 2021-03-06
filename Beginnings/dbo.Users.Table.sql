USE [C114_alan.e.george86_gmail]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/30/2022 11:26:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](100) NOT NULL,
	[lastName] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](64) NOT NULL,
	[passwordConfirm] [nvarchar](64) NOT NULL,
	[avatartUrl] [nvarchar](max) NOT NULL,
	[tenantId] [nvarchar](30) NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DateAdded]  DEFAULT (getutcdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
