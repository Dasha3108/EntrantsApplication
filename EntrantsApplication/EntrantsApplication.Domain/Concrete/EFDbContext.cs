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
        public DbSet<Speciality> Specialities { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Entrant>().ToTable("Entrants");
            modelBuilder.Entity<Speciality>().ToTable("Specialities");
            Database.SetInitializer<EFDbContext>(null);
            base.OnModelCreating(modelBuilder);
        }
    }
}
