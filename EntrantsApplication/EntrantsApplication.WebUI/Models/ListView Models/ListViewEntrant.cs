using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using EntrantsApplication.Domain.Entities;

namespace EntrantsApplication.WebUI.Models.ListView_Models
{
    public class ListViewEntrant
    {
        private Entrant _databaseEntrant;

        public ListViewEntrant(Entrant databaseEntrant)
        {
            _databaseEntrant = databaseEntrant;
        }

        public int EntrantId { get { return _databaseEntrant.EntrantId; } }
        
        public string EntrantName { get { return string.Join(" ",  _databaseEntrant.Name,
                    _databaseEntrant.SecondName, _databaseEntrant.Surname); } }

        //[Required(ErrorMessage = "Please enter the date of your birth")]
        //[DataType(DataType.Date, ErrorMessage = "Please enter a valid date")]
        [DisplayFormat(DataFormatString = "{0:d.MM.yyyy}")]
        public DateTime DateOfTheBirth { get { return _databaseEntrant.DateOfTheBirth; } }

        public string EducationFee { get { return _databaseEntrant.EducationFee; } }
        public string Speciality { get { return _databaseEntrant.SpecialityName; } }
        //[Required(ErrorMessage = "Please enter your home address")]
        public string HomeAddress { get { return _databaseEntrant.HomeAddress; } }
        //[Required(ErrorMessage = "Please enter your mobile phone")]
        //[DataType(DataType.PhoneNumber, ErrorMessage = "Please enter a valid phone number")]
        public string MobilePhone { get { return _databaseEntrant.MobilePhone; } }
        //[Required(ErrorMessage = "Please specify if you have any privileges")]
        public bool HasPrivileges { get { return _databaseEntrant.HasPrivileges; } }
        public string Privileges { get { return _databaseEntrant.Privileges; } }
        //[Required(ErrorMessage = "Please specify your need in dormitory")]
        public bool NeedsDormitory { get { return _databaseEntrant.NeedsDormitory; } }
        
        public string School { get { return _databaseEntrant.School; } }
        public int YearOfFinishingTheSchool { get { return _databaseEntrant.YearOfFinishingTheSchool; } }
        public double AverageSchoolScore { get { return _databaseEntrant.AverageSchoolScore; } }
        public string ForeignLanguage { get { return _databaseEntrant.ForeignLanguage; } }

        public bool SelectedEntrant { get; set; } = false;
    }
}