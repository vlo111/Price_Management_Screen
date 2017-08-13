using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DataAccess.Models.Mapping
{
    public class CustomerMap : EntityTypeConfiguration<Customer>
    {
        public CustomerMap()
        {
            // Primary Key
            this.HasKey(t => t.CustomerID);

            // Properties
            this.Property(t => t.Company)
                .IsRequired();

            this.Property(t => t.Address1)
                .HasMaxLength(150);
            
            this.Property(t => t.Address2)
                            .HasMaxLength(150);
            
            this.Property(t => t.City)
                            .HasMaxLength(150);
            
            this.Property(t => t.Province)
                            .HasMaxLength(50);
            
            this.Property(t => t.Country)
                            .HasMaxLength(50);
            
            this.Property(t => t.PostalCode)
                            .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Customer");
            this.Property(t => t.CustomerID).HasColumnName("CustomerID");
            this.Property(t => t.Company).HasColumnName("Company");
            this.Property(t => t.PhoneNo).HasColumnName("PhoneNo");
            this.Property(t => t.Fax).HasColumnName("Fax");
            this.Property(t => t.Created).HasColumnName("Created");
            this.Property(t => t.Modified).HasColumnName("Modified");
            this.Property(t => t.EmployeeID).HasColumnName("EmployeeID");
            this.Property(t => t.Address1).HasColumnName("Address1");
            this.Property(t => t.Address2).HasColumnName("Address2");
            this.Property(t => t.City).HasColumnName("City");
            this.Property(t => t.Province).HasColumnName("Province");
            this.Property(t => t.Country).HasColumnName("Country");
            this.Property(t => t.PostalCode).HasColumnName("PostalCode");
            this.Property(t => t.Comments).HasColumnName("Comments");
            this.Property(t => t.GSTExempt).HasColumnName("GSTExempt");
            this.Property(t => t.PSTExempt).HasColumnName("PSTExempt");
            this.Property(t => t.DekSmartDiscount).HasColumnName("DekSmartDiscount");
        }
    }
}
