using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DataAccess.Models.Mapping
{
    public class CarrierMap : EntityTypeConfiguration<Carrier>
    {
        public CarrierMap()
        {
            // Primary Key
            this.HasKey(t => t.CarrierID);

            // Properties
            this.Property(t => t.Phone)
                .HasMaxLength(50);

            this.Property(t => t.Fax)
                .HasMaxLength(50);

            this.Property(t => t.Email)
                .HasMaxLength(150);

            this.Property(t => t.Address1)
                .HasMaxLength(500);

            this.Property(t => t.Address2)
                .HasMaxLength(500);

            this.Property(t => t.City)
                .IsRequired()
                .HasMaxLength(150);

            this.Property(t => t.Province)
                .HasMaxLength(50);

            this.Property(t => t.Country)
                .HasMaxLength(50);

            this.Property(t => t.PostalCode)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Carrier");
            this.Property(t => t.CarrierID).HasColumnName("CarrierID");
            this.Property(t => t.Phone).HasColumnName("Phone");
            this.Property(t => t.Fax).HasColumnName("Fax");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Address1).HasColumnName("Address1");
            this.Property(t => t.Address2).HasColumnName("Address2");
            this.Property(t => t.City).HasColumnName("City");
            this.Property(t => t.Province).HasColumnName("Province");
            this.Property(t => t.Country).HasColumnName("Country");
            this.Property(t => t.PostalCode).HasColumnName("PostalCode");
            this.Property(t => t.Comments).HasColumnName("Comments");
        }
    }
}