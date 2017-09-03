using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CenDek.Models
{
    public partial class FileTmp
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public byte[] Contents { get; set; }
        public string emp { get; set; }
        public string doc { get; set; }
    }
}