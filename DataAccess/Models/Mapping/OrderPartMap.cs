using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DataAccess.Models.Mapping
{
    public class OrderPartMap : EntityTypeConfiguration<OrderPart>
    {
        public OrderPartMap()
        {
            // Primary Key
            this.HasKey(t => t.OrderPartID);

            // Properties
            this.Property(t => t.ColourID)
                .IsFixedLength()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("OrderPart");
            this.Property(t => t.OrderPartID).HasColumnName("OrderPartID");
            this.Property(t => t.PartID).HasColumnName("PartID");
            this.Property(t => t.Quantity).HasColumnName("Quantity");
            this.Property(t => t.PriceID).HasColumnName("PriceID");
            this.Property(t => t.ProductLineID).HasColumnName("ProductLineID");
            this.Property(t => t.GroupUrgencyID).HasColumnName("GroupUrgencyID");
            this.Property(t => t.ColourID).HasColumnName("ColourID");
            this.Property(t => t.Comments).HasColumnName("Comments");

            // Relationships
            this.HasMany(t => t.Tags)
                .WithMany(t => t.OrderParts)
                .Map(m =>
                    {
                        m.ToTable("OrderPartTag");
                        m.MapLeftKey("OrderPartID");
                        m.MapRightKey("TagID");
                    });

            this.HasOptional(t => t.GroupUrgency)
                .WithMany(t => t.OrderParts)
                .HasForeignKey(d => d.GroupUrgencyID);
            this.HasOptional(t => t.ProductLine)
                .WithMany(t => t.OrderParts)
                .HasForeignKey(d => d.ProductLineID);
            this.HasRequired(t => t.Part)
                .WithMany(t => t.OrderParts)
                .HasForeignKey(d => d.PartID);

        }
    }
}
