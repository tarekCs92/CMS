using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaloriCms.Models
{
    public class BlogModal
    {
        public int Id { get; set; }
        public string SectionName { get; set; }
        public Nullable<int> SectionId { get; set; }
        public string EnTitle { get; set; }
        public string ArTitle { get; set; }
        public string EnDescription { get; set; }
        public string ArDescription { get; set; }
        public string Image { get; set; }
        public string Icon { get; set; }
        public string Link { get; set; }
    }
}