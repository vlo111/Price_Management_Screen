using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DataAccess.Models.Mapping
{
    public class AltPartMap : EntityTypeConfiguration<AltPart>
    {
        public AltPartMap()
        {
            // Primary Key
            this.HasKey(t => t.AltPartID);

            // Properties
            this.Property(t => t.PartNo)
                .IsRequired();

            // Table & Column Mappings
            this.ToTable("AltPart");
            this.Property(t => t.AltPartID).HasColumnName("AltPart");
            this.Property(t => t.PartID).HasColumnName("PartID");
            this.Property(t => t.PartNo).HasColumnName("PartNo");

            // Relationships
            this.HasRequired(t => t.Part)
                .WithMany(t => t.AltPart)
                .HasForeignKey(d => d.PartID);

        }
    }
}
