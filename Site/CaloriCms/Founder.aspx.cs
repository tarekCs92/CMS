using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaloriCms
{
    public partial class Founder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.Where(x => x.SectionId == 1).FirstOrDefault();
                divFounder.InnerHtml = data.EnDescription;
            }
        }
    }
}