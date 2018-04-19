using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Bet {
        private Decimal _Amount;
        private Person _Person;
        public Decimal Amount {
            get {
                return _Amount;
            }
            set {
                _Amount = value;
            }
        }
        public Person Person {
            get {
                return _Person;
            }
            set {
                Person = value;
            }
        }
    }
}
