-- ================================================
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* =============================================
	uspGamesGet
   ============================================= */
ALTER PROCEDURE dbo.uspGamesGet 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT GameId, HomeTeamId, VisitingTeamId, [DateTime], ht.[Name] as HomeTeamName, vt.[Name] as VisitingTeamName, st.[Name] as Sport
	FROM 
		Game g INNER JOIN
		Team ht on g.HomeTeamId=ht.TeamId INNER JOIN
		Team vt on g.VisitingTeamId=vt.TeamId INNER JOIN
		SportType st on g.SportTypeId=st.SportTypeId
END
GO
