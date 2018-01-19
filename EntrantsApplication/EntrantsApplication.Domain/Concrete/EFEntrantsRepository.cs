using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsApplication.Domain.Abstract;
using EntrantsApplication.Domain.Entities;

namespace EntrantsApplication.Domain.Concrete
{
    public class EFEntrantsRepository: IEntrantsRepository
    {
        private EFDbContext _entrantsContext = new EFDbContext();

        public IEnumerable<Entrant> Entrants { get { return _entrantsContext.Entrants; } }
        public IEnumerable<Speciality> Specialities { get { return _entrantsContext.Specialities; } }

        public void EditEntrant(Entrant entrant)
        {
            _entrantsContext.Entry(entrant).State = System.Data.Entity.EntityState.Modified;
            _entrantsContext.SaveChanges();
        }

        public void SaveEntrant(Entrant entrant)
        {
            _entrantsContext.Entrants.Add(entrant);
            _entrantsContext.SaveChanges();
        }

        public void RemoveEntrant(Entrant entrant)
        {
            var removingEntrant = _entrantsContext.Entrants.FirstOrDefault(x => x.EntrantId == entrant.EntrantId);
            if (removingEntrant != null)
            {
                _entrantsContext.Entrants.Remove(removingEntrant);
                _entrantsContext.SaveChanges();
            }
        }
    }
}
