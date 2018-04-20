USE [OfficeSportsPool]
GO

/****** Object:  Table [dbo].[SportEvent]    Script Date: 4/20/2018 3:30:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SportEvent](
	[SportEventId] [nvarchar](50) NOT NULL CONSTRAINT [DF_SportEvent_SportEventId]  DEFAULT (newid()),
	[HomeTeamId] [nvarchar](50) NOT NULL,
	[VisitingTeamId] [nvarchar](50) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[SportTypeId] [int] NOT NULL
) ON [PRIMARY]

GO

