using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Bet {
        public Decimal Amount {get; set; }
        public Person _Person {get; set; }
        public Guid GameId {get; set; }
        public Guid BetId {get; set; }
        public Bet(decimal amount, Person person, Guid gameid, Guid betid) {
            Amount = amount;
            _Person = person;
            GameId = gameid;
            BetId = betid;
        }
    }
}
