USE [OfficeSportsPool]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 4/20/2018 3:29:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Person](
	[PersonId] [nvarchar](50) NOT NULL CONSTRAINT [DF_Person_PersonId]  DEFAULT (newid()),
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[HomePhone] [nvarchar](50) NULL,
	[CellPhone] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[ExternalOfficeWorkPhone] [nvarchar](50) NULL,
	[InternalOfficeWorkPhone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

