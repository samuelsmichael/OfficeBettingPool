using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Person {
        private string _FirstName;
        private string _LastName;
        private Guid _Id;
        private ContactInfo _ContactInfo;
        public override int GetHashCode() {
            return _Id.GetHashCode();
        }
    }
}
