USE [OfficeSportsPool]
GO

/****** Object:  Table [dbo].[Game]    Script Date: 4/19/2018 3:31:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Game](
	[GameId] [nvarchar](50) NOT NULL CONSTRAINT [DF_Game_GameId]  DEFAULT (newid()),
	[HomeTeamId] [nvarchar](50) NOT NULL,
	[VisitingTeamId] [nvarchar](50) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[SportTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_SportType] FOREIGN KEY([SportTypeId])
REFERENCES [dbo].[SportType] ([SportTypeId])
GO

ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_SportType]
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Team] FOREIGN KEY([HomeTeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO

ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Team]
GO

ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Team1] FOREIGN KEY([VisitingTeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO

ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Team1]
GO


