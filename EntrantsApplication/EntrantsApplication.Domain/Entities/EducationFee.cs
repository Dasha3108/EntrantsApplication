using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Entities
{
    public class EducationFee
    {
        [Key]
        public int EducationFeeId { get; set; }
        public string Name { get; set; }
        public int ThePayotPercentage { get; set; }
    }
}
