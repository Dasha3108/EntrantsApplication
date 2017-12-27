using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntrantsApplication.Domain.Entities;
using System.Data.Entity;

namespace EntrantsApplication.Domain.Concrete
{
    public class EFDbContext: DbContext
    {
        public DbSet<Entrant> Entrants { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<EFDbContext>(null);
            base.OnModelCreating(modelBuilder);
        }
    }
}
