using EntrantsApplication.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntrantsApplication.Domain.Concrete
{
    public class SpecialityDbContext: DbContext
    {
        public DbSet<EntrantApplication> Applications { get; set; }
        public DbSet<University> Universities { get; set; }
        public DbSet<EntrantSpeciality> Specialities { get; set; }
        public DbSet<EducationForm> EducationForms { get; set; }
        public DbSet<EducationPeriod> EducationPeriods { get; set; }
        public DbSet<EducationFee> EducationFees { get; set; }
        public DbSet<SpecialityName> SpecialityNames { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<EntrantApplication>().ToTable("EntrantsApplications");
            modelBuilder.Entity<University>().ToTable("Universities");
            modelBuilder.Entity<EntrantSpeciality>().ToTable("Speciality");
            modelBuilder.Entity<EducationForm>().ToTable("EducationForms");
            modelBuilder.Entity<EducationPeriod>().ToTable("EducationPeriods");
            modelBuilder.Entity<EducationFee>().ToTable("EducationFees");
            modelBuilder.Entity<SpecialityName>().ToTable("SpecialityNames");

            Database.SetInitializer<EFDbContext>(null);
            base.OnModelCreating(modelBuilder);
        }
    }
}
