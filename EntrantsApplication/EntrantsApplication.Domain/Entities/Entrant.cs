using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Entities
{
    public enum Gender
    {
        Male,
        Female
    }

    public class Entrant
    {
        [Key]
        public int EntrantId { get; set; }
        [Required(ErrorMessage = "Please enter your name")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Please enter your second name")]
        public string SecondName { get; set; }
        [Required(ErrorMessage = "Please enter your surname")]
        public string Surname { get; set; }
        [DisplayFormat(DataFormatString = "{0:d.MM.yyyy}", ApplyFormatInEditMode = true)]
        public DateTime DateOfTheBirth { get; set; }
        public string EducationFee { get; set; }
        public int SpecialityId { get; set; }
        public string SpecialityName { get; set; }
        public string HomeAddress { get; set; }
        public string MobilePhone { get; set; }
        public bool HasPrivileges { get; set; }
        public string Privileges { get; set; }
        public bool NeedsDormitory { get; set; }

        [Required(ErrorMessage = "Please enter the name of the school that you've finished")]
        public string School { get; set; }
        [Required(ErrorMessage = "Please enter the year of your gradiation")]
        public int YearOfFinishingTheSchool { get; set; }
        [Required(ErrorMessage = "Please enter your average school score")]
        public double AverageSchoolScore { get; set; }
        [Required(ErrorMessage = "Please enter the foreign language that you were learning at school")]
        public string ForeignLanguage { get; set; }

        [Required(ErrorMessage = "Please specify your mother info")]
        public bool HasMother { get; set; }
        public string MotherName { get; set; }
        public string MotherSecondName { get; set; }
        public string MotherSurname { get; set; }
        [DataType(DataType.Date, ErrorMessage = "Please enter a valid date")]
        [DisplayFormat(DataFormatString = "{0:d.MM.yyyy}")]
        public DateTime? MotherDateOfTheBirth { get; set; }
        public string MotherHomeAddress { get; set; }
        [DataType(DataType.PhoneNumber, ErrorMessage = "Please enter a valid phone number")]
        public string MotherMobilePhone { get; set; }
        public string MotherPlaceOfWork { get; set; }

        [Required(ErrorMessage = "Please specify your father info")]
        public bool HasFather { get; set; }        
        public string FatherName { get; set; }
        public string FatherSecondName { get; set; }
        public string FatherSurname { get; set; }
        [DataType(DataType.Date, ErrorMessage = "Please enter a valid date")]
        [DisplayFormat(DataFormatString = "{0:d.MM.yyyy}")]
        public DateTime? FatherDateOfTheBirth { get; set; }
        public string FatherHomeAddress { get; set; }
        [DataType(DataType.PhoneNumber, ErrorMessage = "Please enter a valid phone number")]
        public string FatherMobilePhone { get; set; }
        public string FatherPlaceOfWork { get; set; }
    }
}
