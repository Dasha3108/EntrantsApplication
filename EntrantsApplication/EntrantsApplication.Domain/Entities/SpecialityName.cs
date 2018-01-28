using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Entities
{
    public class SpecialityName
    {
        [Key]
        public int SpecialityNameId { get; set; }
        public string Name { get; set; }
        public int SpecialityGroupId { get; set; }
        public string SpecialityCode { get; set; }
    }
}
