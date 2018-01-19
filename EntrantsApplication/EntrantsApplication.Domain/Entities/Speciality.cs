using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Entities
{
    public class Speciality
    {
        [Key]
        public int SpecialityId { get; set; }

        public string SpecialityName { get; set; }

        public int FacultyId { get; set; }

        public bool IsFree { get; set; }
    }
}
