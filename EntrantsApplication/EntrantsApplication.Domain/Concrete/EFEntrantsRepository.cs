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
        private SpecialityDbContext _specialityContext = new SpecialityDbContext();

        private static int _universityId;
        private static int _educationFormId;
        private static int _educationPeriodId;
        private static int _educationFeeId;
        public static EntrantSpeciality[] _currentEntrantsSpeciality;

        public IEnumerable<Entrant> Entrants { get { return _entrantsContext.Entrants; } }
        public IEnumerable<Speciality> Specialities { get { return _entrantsContext.Specialities; } }

        public IEnumerable<Entrant> getEntrantsFromDatabaseBySpeciality(string specialityId)
        {
            specialityId = specialityId.Substring(2, specialityId.Length - 2);
            int specialityIdNumber = int.Parse(specialityId);
            return _entrantsContext.Entrants.Where(entrant => entrant.SpecialityId == specialityIdNumber).ToList();
        }

        //public string[] getSpecialitiesInfoFromDatabase()
        //{

        //}
        public string[] getUniversitiesFromDatabase()
        {
            var universitiesIds = _specialityContext.Specialities.Select(speciality => speciality.UniversityId).Distinct();
            return _specialityContext.Universities.Where(university => universitiesIds.Contains(university.UniversityId)).
                Select(university => university.Name).ToArray();
        }

        public string[] getUniversitiesFromDatabase(EntrantSpeciality[] specialities)
        {
            _currentEntrantsSpeciality = specialities;
            var universitiesIds = specialities.Select(speciality => speciality.UniversityId);
            return _specialityContext.Universities.Where(university => universitiesIds.Contains(university.UniversityId)).
                Select(university => university.Name).ToArray();
        }

        public string[] getEducationFormsFromDatabase(string universityName)
        {
            IEnumerable<int> educationFormsIds;
            _universityId = _specialityContext.Universities.Where(university => university.Name == universityName).
                   Select(university => university.UniversityId).FirstOrDefault();
            if (_currentEntrantsSpeciality == null)
            {
               educationFormsIds = _specialityContext.Specialities.Where(speciality => speciality.UniversityId == _universityId)
                    .Select(speciality => speciality.EducationFormId).Distinct();
            }
            else
            {
               educationFormsIds = _currentEntrantsSpeciality.Where(speciality => speciality.UniversityId == _universityId).
                    Select(speciality => speciality.EducationFormId).Distinct();
            }
            return _specialityContext.EducationForms.Where(form => educationFormsIds.Contains(form.EducationFormId)).
                Select(form => form.Name).ToArray();
        }

        public string[] getEducationPeriodsFromDatabase(string educationFormName)
        {
            IEnumerable<int> educationPeriodsIds;
            _educationFormId = _specialityContext.EducationForms.Where(form => form.Name == educationFormName).
            Select(form => form.EducationFormId).FirstOrDefault();
            if (_currentEntrantsSpeciality == null)
            {
                educationPeriodsIds = _specialityContext.Specialities.Where(speciality => (speciality.UniversityId == _universityId) &&
                (speciality.EducationFormId == _educationFormId)).Select(speciality => speciality.EducationPeriodId).Distinct();
            }
            else
            {
                educationPeriodsIds = _currentEntrantsSpeciality.Where(speciality => speciality.UniversityId == _universityId &&
                (speciality.EducationFormId == _educationFormId)).Select(speciality => speciality.EducationPeriodId).Distinct();
            }
            return _specialityContext.EducationPeriods.Where(period => educationPeriodsIds.Contains(period.EducationPeriodId)).
                Select(period => period.Name).ToArray();
        }

        public string[] getEducationFeesFromDatabase(string educationPeriodName)
        {
            IEnumerable<int> educationFeesIds;
            _educationPeriodId = _specialityContext.EducationPeriods.Where(period => period.Name == educationPeriodName).
              Select(period => period.EducationPeriodId).FirstOrDefault();
            if (_currentEntrantsSpeciality == null)
            {
                educationFeesIds = _specialityContext.Specialities.Where(speciality => (speciality.UniversityId == _universityId) &&
                (speciality.EducationFormId == _educationFormId) && (speciality.EducationPeriodId == _educationPeriodId))
                .Select(speciality => speciality.EducationFeeId).Distinct();
            }
            else
            {
                educationFeesIds = _currentEntrantsSpeciality.Where(speciality => speciality.UniversityId == _universityId &&
                (speciality.EducationFormId == _educationFormId) && (speciality.EducationPeriodId == _educationPeriodId))
                .Select(speciality => speciality.EducationFeeId).Distinct();
            }
            return _specialityContext.EducationFees.Where(fee => educationFeesIds.Contains(fee.EducationFeeId)).
                Select(fee => fee.Name).ToArray();
        }

        public string[] getSpecialitiesFromDatabase(string educationFeeName)
        {
            _educationFeeId = _specialityContext.EducationFees.Where(fee => fee.Name == educationFeeName).
                Select(fee => fee.EducationFeeId).FirstOrDefault();
            IEnumerable<int> specialityNamesIds;
            if (_currentEntrantsSpeciality == null)
            {
                specialityNamesIds = _specialityContext.Specialities.Where(speciality => (speciality.UniversityId == _universityId) &&
                 (speciality.EducationFormId == _educationFormId) && (speciality.EducationPeriodId == _educationPeriodId)
                 && (speciality.EducationPeriodId == _educationPeriodId) && (speciality.EducationFeeId == _educationFeeId))
                 .Select(speciality => speciality.SpecialityNameId).Distinct();
            }
            else
            {
                specialityNamesIds = _currentEntrantsSpeciality.Where(speciality => (speciality.UniversityId == _universityId) &&
                (speciality.EducationFormId == _educationFormId) && (speciality.EducationPeriodId == _educationPeriodId)
                && (speciality.EducationPeriodId == _educationPeriodId) && (speciality.EducationFeeId == _educationFeeId))
                .Select(speciality => speciality.SpecialityNameId).Distinct();
            }
            return _specialityContext.SpecialityNames.Where(name => specialityNamesIds.Contains(name.SpecialityNameId)).
                Select(name => name.Name).ToArray();
        }

        public IEnumerable<EntrantSpeciality> getGroupSpecialities(string specialityName)
        {
            List<EntrantSpeciality> _groupSpecialities;
            var specialityInfo = _specialityContext.SpecialityNames.Where(name => name.Name == specialityName).
                Select(name => new { name.SpecialityNameId, name.SpecialityGroupId }).FirstOrDefault();
            var currentSpecialityId = _specialityContext.Specialities.Where(speciality => (speciality.UniversityId == _universityId) &&
             (speciality.EducationFormId == _educationFormId) && (speciality.EducationPeriodId == _educationPeriodId)
             && (speciality.EducationPeriodId == _educationPeriodId) && (speciality.EducationFeeId == _educationFeeId)
             && (speciality.SpecialityNameId == specialityInfo.SpecialityNameId)).FirstOrDefault().SpecialityId;
            var currentSpeciality = _specialityContext.Specialities.Where(speciality => speciality.SpecialityId == currentSpecialityId).FirstOrDefault();
            var specialitiesNamesIds = _specialityContext.SpecialityNames.Where(name => (name.SpecialityGroupId == specialityInfo.SpecialityGroupId)).
                Select(name => name.SpecialityNameId);         
            if (_currentEntrantsSpeciality == null)
            {
                _groupSpecialities = _specialityContext.Specialities.Where(speciality => specialitiesNamesIds.Contains(speciality.SpecialityNameId)
                    && (speciality.SpecialityId != currentSpecialityId)).ToList();
            }
            else
            {
                _groupSpecialities = _currentEntrantsSpeciality.Where(speciality => specialitiesNamesIds.Contains(speciality.SpecialityNameId)
                    && (speciality.SpecialityId != currentSpecialityId)).ToList();
            }
            _groupSpecialities.Add(currentSpeciality);
            return _groupSpecialities;
        }


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

        public void SaveApplication(EntrantApplication application)
        {
            _specialityContext.Applications.Add(application);
            _specialityContext.SaveChanges();
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
