using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Person {
        private string _FirstName;
        private string _LastName;
        private Guid _Id;
        private string _HomePhone;
        private string _CellPhone;
        private string _ExternalOfficeWorkPhone;
        private string _InternalOfficeWorkPhone;
        private string _Email;

        public override int GetHashCode() {
            return _Id.GetHashCode();
        }
    }
}
