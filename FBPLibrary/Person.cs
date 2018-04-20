using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Person {
        public string FirstName;
        public string LastName;
        public Guid PersonId;
        public string HomePhone;
        public string CellPhone;
        public string ExternalOfficeWorkPhone;
        public string InternalOfficeWorkPhone;
        public string Email;
        public Person(string firstName, string lastName, Guid personId, string homePhone, string cellPhone, string extOffPhone, string intOfficePhone, string email) {
            FirstName = firstName;
            LastName = lastName;
            PersonId = personId;
            HomePhone = homePhone;
            CellPhone = cellPhone;
            ExternalOfficeWorkPhone = extOffPhone;
            InternalOfficeWorkPhone = intOfficePhone;
            Email = email;
        }
    }
}
