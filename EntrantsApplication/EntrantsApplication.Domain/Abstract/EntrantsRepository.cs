using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsApplication.Domain.Entities;

namespace EntrantsApplication.Domain.Abstract
{
    public class EntrantsRepository : IEntrantsRepository
    {
        public IEnumerable<Entrant> Entrants {get;}

        public void SaveEntrant(Entrant entrant) { }
    }
}
