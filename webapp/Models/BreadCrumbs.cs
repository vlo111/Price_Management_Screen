using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CenDek.Models
{
    public class BreadcrumbLink
    {
        public string LinkUrl { get; set; }
        public string LinkText { get; set; }

        public BreadcrumbLink(string url, string text)
        {
            LinkUrl = url;
            LinkText = text;
        }
    }

    public class BreadcrumbModel
    {
        public List<BreadcrumbLink> Links { get; set; }
        public string ActiveText { get; set; }

        public BreadcrumbModel(string text, List<BreadcrumbLink> links)
        {
            Links = links;
            ActiveText = text;
        }
    }
}