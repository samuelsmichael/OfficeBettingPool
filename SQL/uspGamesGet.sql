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
	SELECT 
		se.SportEventId,g.GameId,  HomeTeamId, VisitingTeamId, [DateTime], ht.[Name] as HomeTeamName, vt.[Name] as VisitingTeamName, st.[Name] as Sport, st.SportTypeId,
		p.PersonId, FirstName, LastName, Email, HomePhone,CellPhone, ExternalOfficeWorkPhone, InternalOfficeWorkPhone,
		b.Amount
	FROM 
		SportEvent se inner join
		Game g on se.sporteventid=g.sporteventid INNER JOIN
		Team ht on se.HomeTeamId=ht.TeamId INNER JOIN
		Team vt on se.VisitingTeamId=vt.TeamId INNER JOIN
		SportType st on se.SportTypeId=st.SportTypeId INNER JOIN
		Bet b on g.gameid=b.gameid INNER JOIN
		Person p on b.personid=p.personid
	ORDER BY
		SportEventId,GameId,  PersonId
END
GO
