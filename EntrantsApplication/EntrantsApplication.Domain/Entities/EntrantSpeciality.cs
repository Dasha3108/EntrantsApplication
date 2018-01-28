using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Entities
{
    public class EntrantSpeciality
    {
        [Key]
        public int SpecialityId { get; set; }
        public int UniversityId { get; set; }
        public int EducationFormId { get; set; }
        public int SpecialityNameId { get; set; }
        public int EducationPeriodId { get; set; }
        public int EducationFeeId { get; set; }
        public int TheTotalNumberOfPlaces { get; set; }
        public DateTime TheDuration { get; set; }
        public int TheNumberOfPlacesForOrphans { get; set; }
        public int TheNumberOfPlacesForHonourGuard { get; set; }
        public string TheSpecialityColor { get; set; }
        public int EntranceTestsId { get; set; }

    }
}
