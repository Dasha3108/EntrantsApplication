using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Entities
{
    public class EntrantApplication
    {
        [Key]
        public int ApplicationId { get; set; }
        public int Speciality1Id { get; set; }
        public int? Speciality2Id { get; set; }
    }
}
