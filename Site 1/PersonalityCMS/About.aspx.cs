using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EF;
using System.Data.Entity;
using System.Text.RegularExpressions;

namespace Personality
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        public  string StripHTML(string input)
        {
            return Regex.Replace(input, "<.*?>", String.Empty);
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.Where(x => x.SectionId == 1).FirstOrDefault();
                htitle.InnerHtml = data.ArTitle;
                ptext.InnerHtml = data.ArDescription;
                //imgcareer.Src = data.Image;
                var fdata = db.LayoutTBs.Where(i => i.SectionId >= 9 && i.SectionId <= 12).ToList();
                h11.InnerHtml = fdata.FirstOrDefault(x => x.Id == 10).ArTitle;
                d11.InnerHtml = StripHTML(fdata.FirstOrDefault(x => x.Id == 10).ArDescription);

                h22.InnerHtml = fdata.FirstOrDefault(x => x.Id == 11).ArTitle;
                d22.InnerHtml = StripHTML(fdata.FirstOrDefault(x => x.Id == 11).ArDescription);

                h33.InnerHtml = fdata.FirstOrDefault(x => x.Id == 12).ArTitle;
                d33.InnerHtml = StripHTML(fdata.FirstOrDefault(x => x.Id == 12).ArDescription);

                var datax = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                lstjobs.DataSource = datax;
                lstjobs.DataBind();
            }
        }
    }
}