using EntrantsApplication.Domain.Entities;
using EntrantsApplication.Domain.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Reflection;

namespace EntrantsApplication.WebUI.Models.ApplicationModels
{
    public class ListApplication
    {
        private EntrantApplication _databaseEntrant;

        private string[][] _specialities;
        public int ApplicationId { get { return _databaseEntrant.ApplicationId; } }

        public ListApplication(EntrantApplication databaseEntrantApplication)
        {
            _databaseEntrant = databaseEntrantApplication;
            _specialities = new string[(typeof(EntrantApplication).GetProperties().Count() - 1)][];
        }

        private string[] getSpeciality(int specialityId)
        {
            var c = new SpecialityDbContext();
            var speciality = c.Specialities.Find(specialityId);
            var universityName = c.Universities.Find(speciality.UniversityId).Name;
            var educationForm = c.EducationForms.Find(speciality.EducationFormId).Name;
            var educationPeriod = c.EducationPeriods.Find(speciality.EducationPeriodId).Name;
            var educationFee = c.EducationFees.Find(speciality.EducationFeeId).Name;
            var specialityName = c.SpecialityNames.Find(speciality.SpecialityNameId).Name;
            return new[]{universityName, string.Join(" ", new[] { educationForm, educationPeriod, educationFee }),
                specialityName };
        }

        public string[][] getSpecialities()
        {
            var length = _specialities.Length;
            var specialityIdValues = typeof(EntrantApplication).GetProperties();
            for (int counter = 0; counter < length; counter++)
            {
                var value = specialityIdValues[counter + 1].GetValue(_databaseEntrant);
                if (value != null)
                    _specialities[counter] = getSpeciality((int)value);
            }
            return _specialities;
        }

    }
}