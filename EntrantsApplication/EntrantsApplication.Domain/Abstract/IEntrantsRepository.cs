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
        string[] getUniversitiesFromDatabase();
        string[] getEducationFormsFromDatabase(string universityName);
        string[] getEducationPeriodsFromDatabase(string[] specialityInfo);
        string[] getEducationFeesFromDatabase(string[] specialityInfo);
        string[] getSpecialitiesFromDatabase(string[] specialityInfo);
        IEnumerable<EntrantSpeciality> getGroupSpecialities(string[] specialityInfo);
        string[] getUniversitiesFromDatabase(EntrantSpeciality[] specialities);

        void EditEntrant(Entrant entrant);

        void SaveEntrant(Entrant entrant);

        void SaveApplication(EntrantApplication application);

        void RemoveEntrant(Entrant entrant);
    }
}
