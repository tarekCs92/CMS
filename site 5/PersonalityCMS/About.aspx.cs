using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EF;
using System.Data.Entity;

namespace Personality
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.Where(x => x.SectionId == 1);
                int y = 1;
                foreach (var item in data)
                {
                    if (y == 1)
                    {
                        htitle.InnerHtml = item.ArTitle;
                        ptext.InnerHtml = item.ArDescription;
                    }
                    if (y == 2)
                    {
                        htitle2.InnerHtml = item.ArTitle;
                        ptext2.InnerHtml = item.ArDescription;
                    }
                    if (y == 3)
                    {
                        htitle3.InnerHtml = item.ArTitle;
                        ptext3.InnerHtml = item.ArDescription;
                    }
                    y++;
                }
                //imgcareer.Src = data.Image;
                //var datax = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                //lstjobs.DataSource = datax;
                //lstjobs.DataBind();
                //var section = db.AboutTBs.Where(x => x.SectionId == 2).FirstOrDefault();
                //psectiondescription.InnerHtml = section.ArDescription;
                //hsectiontitle.InnerHtml = section.ArTitle;
            }
        }
    }
}