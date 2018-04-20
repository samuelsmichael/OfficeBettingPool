using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FBPLibrary {
    public class Person {
        private string FirstName;
        private string LastName;
        private Guid PersonId;
        private string HomePhone;
        private string CellPhone;
        private string ExternalOfficeWorkPhone;
        private string InternalOfficeWorkPhone;
        private string Email;
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
