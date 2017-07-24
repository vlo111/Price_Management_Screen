using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DataAccess.Models.Mapping
{
    public class CustomerCarrierMap : EntityTypeConfiguration<CustomerCarrier>
    {
        public CustomerCarrierMap()
        {
            // Primary Key
            this.HasKey(t => t.CustomerCarrierID);

            // Properties
            this.Property(t => t.Account)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("CustomerCarrier");
            this.Property(t => t.CustomerCarrierID).HasColumnName("CustomerCarrierID");
            this.Property(t => t.CarrierID).HasColumnName("CarrierID");
            this.Property(t => t.CustomerID).HasColumnName("CustomerID");
            this.Property(t => t.Account).HasColumnName("Account");
            this.Property(t => t.Comments).HasColumnName("Comments");

            // Relationships
            this.HasRequired(t => t.Carrier)
                .WithMany(t => t.CustomerCarriers)
                .HasForeignKey(d => d.CarrierID);
            this.HasRequired(t => t.Customer)
                .WithMany(t => t.CustomerCarriers)
                .HasForeignKey(d => d.CustomerID);

        }
    }
}