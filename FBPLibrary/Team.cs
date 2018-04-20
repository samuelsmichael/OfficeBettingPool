using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Team {
        public string Name { get; set; }
        public Sport Sport { get; set; }
        private Guid TeamId { get; set; }
        public Team(string name, Sport sport, Guid id) {
            Name = name;
            Sport = sport;
            TeamId = id;
        }
    }
}
