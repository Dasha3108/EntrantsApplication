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
        
        public static EntrantSpeciality[] _currentEntrantsSpeciality;

        public IEnumerable<Entrant> Entrants { get { return _entrantsContext.Entrants; } }
        public IEnumerable<Speciality> Specialities { get { return _entrantsContext.Specialities; } }

        public IEnumerable<Entrant> getEntrantsFromDatabaseBySpeciality(string specialityId)
        {
            specialityId = specialityId.Substring(2, specialityId.Length - 2);
            int specialityIdNumber = int.Parse(specialityId);
            return _entrantsContext.Entrants.Where(entrant => entrant.SpecialityId == specialityIdNumber).ToList();
        }

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
            var universityId = FindUniversityId(universityName);
            if (_currentEntrantsSpeciality == null)
            {
               educationFormsIds = _specialityContext.Specialities.Where(speciality => speciality.UniversityId == universityId)
                    .Select(speciality => speciality.EducationFormId).Distinct();
            }
            else
            {
               educationFormsIds = _currentEntrantsSpeciality.Where(speciality => speciality.UniversityId == universityId).
                    Select(speciality => speciality.EducationFormId).Distinct();
            }
            return _specialityContext.EducationForms.Where(form => educationFormsIds.Contains(form.EducationFormId)).
                Select(form => form.Name).ToArray();
        }

        public string[] getEducationPeriodsFromDatabase(string[] specialityInfo)
        {
            IEnumerable<int> educationPeriodsIds;
            var universityId = FindUniversityId(specialityInfo[0]);
            var educationFormId = FindEducationFormId(specialityInfo[1]);
            if (_currentEntrantsSpeciality == null)
            {
                educationPeriodsIds = _specialityContext.Specialities.Where(speciality => (speciality.UniversityId == universityId) &&
                (speciality.EducationFormId == educationFormId)).Select(speciality => speciality.EducationPeriodId).Distinct();
            }
            else
            {
                educationPeriodsIds = _currentEntrantsSpeciality.Where(speciality => speciality.UniversityId == universityId &&
                (speciality.EducationFormId == educationFormId)).Select(speciality => speciality.EducationPeriodId).Distinct();
            }
            return _specialityContext.EducationPeriods.Where(period => educationPeriodsIds.Contains(period.EducationPeriodId)).
                Select(period => period.Name).ToArray();
        }

        public string[] getEducationFeesFromDatabase(string[] specialityInfo)
        {
            IEnumerable<int> educationFeesIds;
            var universityId = FindUniversityId(specialityInfo[0]);
            var educationFormId = FindEducationFormId(specialityInfo[1]);
            var educationPeriodId = FindEducationPeriodId(specialityInfo[2]);
            if (_currentEntrantsSpeciality == null)
            {
                educationFeesIds = _specialityContext.Specialities.Where(speciality => (speciality.UniversityId == universityId) &&
                (speciality.EducationFormId == educationFormId) && (speciality.EducationPeriodId == educationPeriodId))
                .Select(speciality => speciality.EducationFeeId).Distinct();
            }
            else
            {
                educationFeesIds = _currentEntrantsSpeciality.Where(speciality => speciality.UniversityId == universityId &&
                (speciality.EducationFormId == educationFormId) && (speciality.EducationPeriodId == educationPeriodId))
                .Select(speciality => speciality.EducationFeeId).Distinct();
            }
            return _specialityContext.EducationFees.Where(fee => educationFeesIds.Contains(fee.EducationFeeId)).
                Select(fee => fee.Name).ToArray();
        }

        public string[] getSpecialitiesFromDatabase(string[] specialityInfo)
        {
            var universityId = FindUniversityId(specialityInfo[0]);
            var educationFormId = FindEducationFormId(specialityInfo[1]);
            var educationPeriodId = FindEducationPeriodId(specialityInfo[2]);
            var educationFeeId = FindEducationFeeId(specialityInfo[3]);
            IEnumerable<int> specialityNamesIds;
            if (_currentEntrantsSpeciality == null)
            {
                specialityNamesIds = _specialityContext.Specialities.Where(speciality => (speciality.UniversityId == universityId) &&
                 (speciality.EducationFormId == educationFormId) && (speciality.EducationPeriodId == educationPeriodId)
                 && (speciality.EducationFeeId == educationFeeId)).Select(speciality => speciality.SpecialityNameId).Distinct();
            }
            else
            {
                specialityNamesIds = _currentEntrantsSpeciality.Where(speciality => (speciality.UniversityId == universityId) &&
                (speciality.EducationFormId == educationFormId) && (speciality.EducationPeriodId == educationPeriodId)
                && (speciality.EducationFeeId == educationFeeId)).Select(speciality => speciality.SpecialityNameId).Distinct();
            }
            return _specialityContext.SpecialityNames.Where(name => specialityNamesIds.Contains(name.SpecialityNameId)).
                Select(name => name.Name).ToArray();
        }

        public IEnumerable<EntrantSpeciality> getGroupSpecialities(string[] specialityInfo)
        {
            List<EntrantSpeciality> _groupSpecialities;
            var universityId = FindUniversityId(specialityInfo[0]);
            var educationFormId = FindEducationFormId(specialityInfo[1]);
            var educationPeriodId = FindEducationPeriodId(specialityInfo[2]);
            var educationFeeId = FindEducationFeeId(specialityInfo[3]);
            var specialityName = specialityInfo[4];
            var specialityNameInfo = _specialityContext.SpecialityNames.Where(name => name.Name == specialityName).
                Select(name => new { name.SpecialityNameId, name.SpecialityGroupId }).FirstOrDefault();
            var currentSpecialityId = _specialityContext.Specialities.Where(speciality => (speciality.UniversityId == universityId) &&
             (speciality.EducationFormId == educationFormId) && (speciality.EducationPeriodId == educationPeriodId)
             && (speciality.EducationFeeId == educationFeeId) && (speciality.SpecialityNameId == 
             specialityNameInfo.SpecialityNameId)).FirstOrDefault().SpecialityId;
            var currentSpeciality = _specialityContext.Specialities.Where(speciality => speciality.SpecialityId == currentSpecialityId).FirstOrDefault();
            var specialitiesNamesIds = _specialityContext.SpecialityNames.Where(name => (name.SpecialityGroupId == specialityNameInfo.SpecialityGroupId)).
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
            if (IsValid(application))
            {
                _specialityContext.Applications.Add(application);
                _specialityContext.SaveChanges();
            }
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

        private int FindUniversityId(string universityName)
        {
            return _specialityContext.Universities.Where(university => university.Name == universityName).
                   Select(university => university.UniversityId).FirstOrDefault();
        }

        private int FindEducationFormId(string educationFormName)
        {
            return _specialityContext.EducationForms.Where(form => form.Name == educationFormName).
            Select(form => form.EducationFormId).FirstOrDefault();
        }

        private int FindEducationPeriodId(string educationPeriodName)
        {
            return _specialityContext.EducationPeriods.Where(period => period.Name == educationPeriodName).
              Select(period => period.EducationPeriodId).FirstOrDefault();
        }

        private int FindEducationFeeId(string educationFeeName)
        {
            return _specialityContext.EducationFees.Where(fee => fee.Name == educationFeeName).
                Select(fee => fee.EducationFeeId).FirstOrDefault();
        }

        private bool IsValid(EntrantApplication application)
        {
            try
            {
                var properties = typeof(EntrantApplication).GetProperties();
                var length = properties.Length - 1;
                var specialitiesValues = new int[length];
                for (int counter = 0; counter < length; counter++)
                {
                    specialitiesValues[counter] = (int)properties[counter + 1].GetValue(application);
                }
                return (specialitiesValues.Length == specialitiesValues.Distinct().Count());
            }
            catch 
            {
                return false;
            }
        }
    }
}
