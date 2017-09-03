using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Models
{
    public partial class Category
    {
        public Category()
        {
            this.Parts = new List<Part>();
        }
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CategoryID { get; set; }
        [Required(ErrorMessage = "Required field Name")]
        public string Name { get; set; }
        public int CategoryParentID { get; set; }
        public virtual ICollection<Part> Parts { get; set; }
    }
}
