using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Reflection.Emit;
using System.Threading.Tasks;

namespace ProiectLicenta.Model.Database
{
    public class ProjectDbContext : DbContext
    {
        public ProjectDbContext(DbContextOptions<ProjectDbContext> options) : base(options)
        {
        }
        public DbSet<tblVasePort> tblVasePort { get; set; }
        public DbSet<tblVaseAsteptate> tblVaseAsteptate { get; set; }
        public DbSet<tblStatisticiVase> tblStatisticiVase { get; set; }
        public DbSet<tblPorturi> tblPorturi { get; set; }
        public DbSet<tblLocuriAcostare> tblLocuriAcostare { get; set; }
        public DbSet<tblFaruri> tblFaruri { get; set; }
        public DbSet<tblEscalaVase> tblEscalaVase { get; set; }
        public DbSet<tblCompanie> tblCompanie { get; set; }
        public DbSet<tblAngajatiPort> tblAngajatiPort { get; set; }
        public DbSet<tblEchipajVas> tblEchipajVas { get; set; }
        public DbSet<tblPasageri> tblPasageri { get; set; }
        public DbSet<tblDocumentePasageri> tblDocumentePasageri { get; set; }
        public DbSet<tblDocumenteEchipajVas> tblDocumenteEchipajVas { get; set; }
        public DbSet<tblCaracteristiciVas> tblCaracteristiciVas { get; set; }
        public DbSet<tblBagajePasageri> tblBagajePasageri { get; set; }
        public DbSet<tblServiciiSpeciale> tblServiciiSpeciale { get; set; }
        public DbSet<tblUser> tblUser { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);


            modelBuilder.Entity<tblPasageri>()
                .HasOne(v => v.idVasPasageri)
                .WithMany(pa => pa.Pasageri) 
                .HasForeignKey(fk => fk.id_Vas_Pasageri);

            modelBuilder.Entity<tblDocumentePasageri>()
                .HasOne(p => p.idPasagerdoc)
                .WithMany(dp => dp.Doc_Pasageri)
                .HasForeignKey(fk => fk.id_Pasager_doc);

            modelBuilder.Entity<tblDocumenteEchipajVas>()
                .HasOne(me => me.idMembruEchipajdoc)
                .WithMany(e => e.Doc_Echipaj)
                .HasForeignKey(fk => fk.id_MembruEchipaj_doc);

            modelBuilder.Entity<tblServiciiSpeciale>()
                .HasOne(eq => eq.idPasagerServicii)
                .WithMany(t => t.Servicii)
                .HasForeignKey(fk => fk.id_pasager_serviciu);

            modelBuilder.Entity<tblBagajePasageri>()
                .HasOne(e => e.idPasagerbagaj)
                .WithMany(eq => eq.Bagaj)
                .HasForeignKey(fk => fk.id_pasager_bagaje);

            modelBuilder.Entity<tblCaracteristiciVas>()
                .HasOne(o => o.idVas)
                .WithMany(eq => eq.Caracteristici)
                .HasForeignKey(fk => fk.vas);

            modelBuilder.Entity<tblEchipajVas>()
                .HasOne(o => o.idVasEchipaj)
                .WithMany(eq => eq.EchipajVas)
                .HasForeignKey(fk => fk.id_Vas_Echipaj);

            modelBuilder.Entity<tblVaseAsteptate>()
               .HasOne(op => op.idPortProvenienta)
               .WithMany(at => at.PortProvenienta)
               .HasForeignKey(fk => fk.portProvenienta);

            modelBuilder.Entity<tblVasePort>()
               .HasOne(op => op.idPortDestinatie)
               .WithMany(at => at.PortDestinatie)
               .HasForeignKey(fk => fk.portDestinatie);

            modelBuilder.Entity<tblEscalaVase>()
               .HasOne(op => op.idPortEscala)
               .WithMany(at => at.PortEscalaVase)
               .HasForeignKey(fk => fk.id_Port_escala);

            modelBuilder.Entity<tblEscalaVase>()
              .HasOne(op => op.idVasEscala)
              .WithMany(at => at.VaseEscala)
              .HasForeignKey(fk => fk.id_Vas_escala);
        }
    }
}
