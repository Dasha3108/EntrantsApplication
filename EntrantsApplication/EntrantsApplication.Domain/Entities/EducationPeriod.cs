using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Entities
{
    public class EducationPeriod
    {
        [Key]
        public int EducationPeriodId { get; set; }
        public string Name { get; set; }
        public int TheNumberOfYears { get; set; }
    }
}
