using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsApplication.Domain.Abstract;
using EntrantsApplication.Domain.Entities;

namespace EntrantsApplication.Domain.Concrete
{
    public class EFEntrantsRepository: IEntrantsRepository
    {
        private EFDbContext _entrantsContext = new EFDbContext();

        public IEnumerable<Entrant> Entrants { get { return _entrantsContext.Entrants; } }
        public IEnumerable<Speciality> Specialities { get { return _entrantsContext.Specialities; } }

        public IEnumerable<Entrant> getEntrantsFromDatabaseBySpeciality(string specialityId)
        {
            specialityId = specialityId.Substring(2, specialityId.Length - 2);
            int specialityIdNumber = int.Parse(specialityId);
            return _entrantsContext.Entrants.Where(entrant => entrant.SpecialityId == specialityIdNumber).ToList();
        }

        //public IEnumerable<Entrant> getEntrantsFromDatabaseByEducationFee(string educationFee)
        //{
        //    var freeSpecialities = _entrantsContext.Specialities.Where(speciality => speciality.IsFree).ToList();
        //    var paidSpecialities = _entrantsContext.Specialities.Where(speciality => !speciality.IsFree).ToList();
        //    var entrants = new List<Entrant>();
        //    if (educationFee == "Free")
        //    {
        //        foreach (var speciality in freeSpecialities)
        //        {
        //            entrants.AddRange(_entrantsContext.Entrants.Where(entrant => entrant.Speciality == speciality.SpecialityName).ToList());
        //        }
        //        return entrants;
        //    }
        //    else if (educationFee == "Paid")
        //    {
        //        foreach (var speciality in paidSpecialities)
        //        {
        //            entrants.AddRange(_entrantsContext.Entrants.Where(entrant => entrant.Speciality == speciality.SpecialityName).ToList());
        //        }
        //        return entrants;
        //    }
        //    return null;
        //}

        //public IEnumerable<Entrant> getEntrantsFromDatabaseByFaculty(string facultyName)
        //{
        //    var facultyEntrants = new List<Entrant>();
        //    var chosenFaculty = _entrantsContext.Faculties.Where(faculty => faculty.FacultyName == facultyName).FirstOrDefault();
        //    var facultySpecialities = _entrantsContext.Specialities.Where(speciality => speciality.FacultyId == chosenFaculty.FacultyId).ToList();
        //    var entrants = new List<Entrant>();
        //    foreach (var speciality in facultySpecialities)
        //    {
        //        entrants.AddRange(_entrantsContext.Entrants.Where(entrant => entrant.Speciality == speciality.SpecialityName).ToList());
        //    }
        //    return entrants;
        //}

        public void EditEntrant(Entrant entrant)
        {
            bool isFree = entrant.EducationFee == "Free";
            entrant.SpecialityId = findSpecialityId(entrant.SpecialityName, isFree);
            _entrantsContext.Entry(entrant).State = System.Data.Entity.EntityState.Modified;
            _entrantsContext.SaveChanges();
        }

        public void SaveEntrant(Entrant entrant)
        {
            bool isFree = entrant.EducationFee == "Free";
            entrant.SpecialityId = findSpecialityId(entrant.SpecialityName, isFree);
            _entrantsContext.Entrants.Add(entrant);
            _entrantsContext.SaveChanges();
        }

        public void RemoveEntrant(Entrant entrant)
        {
            var removingEntrant = _entrantsContext.Entrants.FirstOrDefault(x => x.EntrantId == entrant.EntrantId);
            if (removingEntrant != null)
            {
                _entrantsContext.Entrants.Remove(removingEntrant);
                _entrantsContext.SaveChanges();
            }
        }

        private int findSpecialityId(string specialityName, bool isFree)
        {
            return _entrantsContext.Specialities.Where(speciality =>
            (speciality.SpecialityName == specialityName) && (speciality.IsFree == isFree)).FirstOrDefault().SpecialityId;
        }
    }
}
