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
        [Required(ErrorMessage = "Please choose at least one speciality!")]
        public int Speciality1Id { get; set; }
        public int? Speciality2Id { get; set; }
        public int? Speciality3Id { get; set; }
        public int? Speciality4Id { get; set; }
        public int? Speciality5Id { get; set; }
        public int? Speciality6Id { get; set; }
        public int? Speciality7Id { get; set; }
        public int? Speciality8Id { get; set; }
        public int? Speciality9Id { get; set; }
        public int? Speciality10Id { get; set; }
        public int? Speciality11Id { get; set; }
        public int? Speciality12Id { get; set; }
        public int? Speciality13Id { get; set; }
        public int? Speciality14Id { get; set; }
        public int? Speciality15Id { get; set; }
        public int? Speciality16Id { get; set; }
        public int? Speciality17Id { get; set; }
        public int? Speciality18Id { get; set; }
        public int? Speciality19Id { get; set; }
        public int? Speciality20Id { get; set; }
        public int? Speciality21Id { get; set; }
        public int? Speciality22Id { get; set; }
        public int? Speciality23Id { get; set; }
        public int? Speciality24Id { get; set; }
        public int? Speciality25Id { get; set; }
        public int? Speciality26Id { get; set; }
        public int? Speciality27Id { get; set; }
        public int? Speciality28Id { get; set; }
        public int? Speciality29Id { get; set; }
        public int? Speciality30Id { get; set; }
    }
}
