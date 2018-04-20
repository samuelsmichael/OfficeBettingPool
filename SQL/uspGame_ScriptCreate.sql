USE [OfficeSportsPool]
GO

/****** Object:  Table [dbo].[Game]    Script Date: 4/20/2018 3:29:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Game](
	[GameId] [nvarchar](50) NOT NULL CONSTRAINT [DF_Game_GameId]  DEFAULT (newid()),
	[SportEventId] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL
) ON [PRIMARY]

GO

