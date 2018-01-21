using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsApplication.Domain.Entities;

namespace EntrantsApplication.Domain.Abstract
{
    public interface IEntrantsRepository
    {
        IEnumerable<Entrant> Entrants { get; }
        IEnumerable<Speciality> Specialities { get; }

        IEnumerable<Entrant> getEntrantsFromDatabaseBySpeciality(string specialityName);
       // IEnumerable<Entrant> getEntrantsFromDatabaseByEducationFee(string educationFee);
       // IEnumerable<Entrant> getEntrantsFromDatabaseByFaculty(string facultyName);

        void EditEntrant(Entrant entrant);

        void SaveEntrant(Entrant entrant);

        void RemoveEntrant(Entrant entrant);
    }
}
