using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DataAccess.Models.Mapping
{
    public class ShippingAddressMap : EntityTypeConfiguration<ShippingAddress>
    {
        public ShippingAddressMap()
        {
            // Primary Key
            this.HasKey(t => t.ShippingAddressID);

            // Properties
            this.Property(t => t.Address1)
                .IsRequired()
                .HasMaxLength(500);

            this.Property(t => t.Address2)
                .HasMaxLength(500);

            this.Property(t => t.City)
                .IsRequired()
                .HasMaxLength(150);

            this.Property(t => t.Province)
                .HasMaxLength(50);

            this.Property(t => t.Country)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.PostalCode)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("ShippingAddress");
            this.Property(t => t.ShippingAddressID).HasColumnName("ShippingAddressID");
            this.Property(t => t.CustomerID).HasColumnName("CustomerID");
            this.Property(t => t.CustomerContactID).HasColumnName("CustomerContactID");
            this.Property(t => t.LastUsed).HasColumnName("LastUsed");
            this.Property(t => t.Address1).HasColumnName("Address1");
            this.Property(t => t.Address2).HasColumnName("Address2");
            this.Property(t => t.City).HasColumnName("City");
            this.Property(t => t.Province).HasColumnName("Province");
            this.Property(t => t.Country).HasColumnName("Country");
            this.Property(t => t.PostalCode).HasColumnName("PostalCode");
            this.Property(t => t.Comments).HasColumnName("Comments");

            // Relationships
            this.HasRequired(t => t.Customer)
                .WithMany(t => t.ShippingAddresses)
                .HasForeignKey(d => d.CustomerID);
            this.HasRequired(t => t.CustomerContact)
                .WithMany(t => t.ShippingAddresses)
                .HasForeignKey(d => d.CustomerContactID);

        }
    }
}
