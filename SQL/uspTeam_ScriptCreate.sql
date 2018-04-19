USE [OfficeSportsPool]
GO

/****** Object:  Table [dbo].[Team]    Script Date: 4/19/2018 3:32:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Team](
	[TeamId] [nvarchar](50) NOT NULL CONSTRAINT [DF_Team_TeamId]  DEFAULT (newid()),
	[SportTypeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_SportType] FOREIGN KEY([SportTypeId])
REFERENCES [dbo].[SportType] ([SportTypeId])
GO

ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_SportType]
GO


