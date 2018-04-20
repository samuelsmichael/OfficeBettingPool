using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class SportEvent {
        public Team HomeTeam {get; set; }
        public Team VisitingTeam {get; set; }
        public DateTime Date {get; set; }
        public Sport _Sport {get; set; }
        public Guid SportEventId {get; set; }
        public List<Game> Games { get; set; }
        public SportEvent(Team homeTeam, Team visitingTeam, DateTime date, Sport sport, Guid sportEventId, List<Game> games) {
            HomeTeam = homeTeam;
            VisitingTeam = visitingTeam;
            Date = date;
            _Sport = sport;
            SportEventId = SportEventId;
            Games = games;
        }
    }
}
