USE [OfficeSportsPool]
GO

/****** Object:  Table [dbo].[Bet]    Script Date: 4/20/2018 3:28:47 PM ******/
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


