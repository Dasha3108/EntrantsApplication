using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Entities
{
    public class University
    {
        [Key]
        public int UniversityId { get; set; }
        public string Name { get; set; }
    }
}
