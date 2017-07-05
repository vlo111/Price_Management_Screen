using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DataAccess.Models.Mapping
{
    public class CustomerContactMap : EntityTypeConfiguration<CustomerContact>
    {
        public CustomerContactMap()
        {
            // Primary Key
            this.HasKey(t => t.CustomerContactID);

            // Properties
            this.Property(t => t.First)
                .IsRequired()
                .HasMaxLength(50);

            // Properties
            this.Property(t => t.Last)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("CustomerContact");
            this.Property(t => t.CustomerContactID).HasColumnName("CustomerContactID");
            this.Property(t => t.CustomerID).HasColumnName("CustomerID");
            

            // Relationships
            this.HasRequired(t => t.Customer)
                .WithMany(t => t.CustomerContacts)
                .HasForeignKey(d => d.CustomerID);

        }
    }
}
