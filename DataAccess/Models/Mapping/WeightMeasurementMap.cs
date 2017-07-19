using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DataAccess.Models.Mapping
{
    public class WeightMeasurementMap : EntityTypeConfiguration<WeightMeasurement>
    {
        public WeightMeasurementMap()
        {
            // Primary Key
            this.HasKey(t => t.WeightMeasurementID);

            // Properties
            this.Property(t => t.Name)
                .IsRequired();

            // Table & Column Mappings
            this.ToTable("WeightMeasurement");
            this.Property(t => t.WeightMeasurementID).HasColumnName("WeightMeasurementID");
            this.Property(t => t.Name).HasColumnName("Name");
        }
    }
}
