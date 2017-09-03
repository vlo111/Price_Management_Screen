using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Models
{
    public partial class Image
    {
        public Image()
        {
            this.Parts = new List<Part>();
        }
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ImageID { get; set; }
        public string Name { get; set; }
        public string Ext { get; set; }
        public byte[] Image1 { get; set; }
        public virtual ICollection<Part> Parts { get; set; }
    }
}
