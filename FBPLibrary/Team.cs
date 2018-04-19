using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Team {
        private string _Name;
        private Sport _Sport;
        private Guid _Id;
        public Team(string name, Sport sport, Guid id) {
            _Name = name;
            _Sport = sport;
            _Id = id;
        }
    }
}
