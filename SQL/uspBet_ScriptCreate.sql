USE [OfficeSportsPool]
GO

/****** Object:  Table [dbo].[Bet]    Script Date: 4/19/2018 3:31:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bet](
	[BetId] [nvarchar](50) NOT NULL CONSTRAINT [DF_Bet_BetId]  DEFAULT (newid()),
	[PersonId] [nvarchar](50) NOT NULL,
	[GameId] [nvarchar](50) NOT NULL,
	[Amount] [money] NOT NULL,
 CONSTRAINT [PK_Bet] PRIMARY KEY CLUSTERED 
(
	[BetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Bet]  WITH CHECK ADD  CONSTRAINT [FK_Bet_Game] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([GameId])
GO

ALTER TABLE [dbo].[Bet] CHECK CONSTRAINT [FK_Bet_Game]
GO

ALTER TABLE [dbo].[Bet]  WITH CHECK ADD  CONSTRAINT [FK_Bet_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO

ALTER TABLE [dbo].[Bet] CHECK CONSTRAINT [FK_Bet_Person]
GO


