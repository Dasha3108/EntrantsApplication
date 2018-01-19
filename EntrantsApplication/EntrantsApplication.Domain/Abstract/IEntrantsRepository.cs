using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsApplication.Domain.Entities;

namespace EntrantsApplication.Domain.Abstract
{
    public interface IEntrantsRepository
    {
        IEnumerable<Entrant> Entrants { get; }
        IEnumerable<Speciality> Specialities { get; }

        void EditEntrant(Entrant entrant);

        void SaveEntrant(Entrant entrant);

        void RemoveEntrant(Entrant entrant);
    }
}
