using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public enum SportTypes {
        football = 0,
        basketball = 1,
        baseball = 2
    }
    public class Sport {
        public SportTypes _SportsType {get; set;}
        public Sport(SportTypes st) {
            _SportsType=st;
        }
    }
}
