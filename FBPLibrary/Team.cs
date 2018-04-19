using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Team {
        private string _Name;
        private Sport _Sport;
        private Guid _Id;
        public Team(string name, Sport sport) {
            _Name = name;
            _Sport = sport;
        }
    }
}
