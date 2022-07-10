using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["lang"] == "en")

                {
                    ulmenuAr.Style["display"] = "none";
                    ulmenuEn.Style["display"] = "block";
                    foterindexAr.Style["display"] = "none";
                    foterindexEn.Style["display"] = "block";




                }
                else
                {
                    ulmenuEn.Style["display"] = "none";
                    ulmenuAr.Style["display"] = "block";
                    foterindexAr.Style["display"] = "block";
                    foterindexEn.Style["display"] = "none";
                }
                LoadData();
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                var data2 = db.LayoutTBs.Where(i => i.SectionId >= 1 && i.SectionId <= 6).ToList();
                facebookmaster.HRef = data2.FirstOrDefault(x => x.SectionId == 1).Link;
                twittermaster.HRef = data2.FirstOrDefault(x => x.SectionId == 2).Link;
                googlemaster.HRef = data2.FirstOrDefault(x => x.SectionId == 6).Link;
                rssmaster.HRef = data2.FirstOrDefault(x => x.SectionId == 5).Link;
                //get header Data
                //var headerdata = db.LayoutTBs.Where(i => i.SectionId >= 6 && i.SectionId <= 7).ToList();
                //head1title.InnerHtml = headerdata.FirstOrDefault(x => x.SectionId == 6).ArTitle;
                //head1desc.InnerHtml = headerdata.FirstOrDefault(x => x.SectionId == 6).ArDescription;
                //head2title.InnerHtml = headerdata.FirstOrDefault(x => x.SectionId == 7).ArTitle;
                //head2desc.InnerHtml = headerdata.FirstOrDefault(x => x.SectionId == 7).ArDescription;
                //var footerdata = db.LayoutTBs.Where(i => i.SectionId >= 9 && i.SectionId <= 12).ToList();
                //lstfooter.DataSource = footerdata;
                //lstfooter.DataBind();
                //var data = db.LayoutTBs.Where(i => i.SectionId >= 1 && i.SectionId <= 5).ToList();
                //facebookmaster.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                //twittermaster.HRef = data.FirstOrDefault(x => x.SectionId == 2).Link;
                //vkmaster.HRef = data.FirstOrDefault(x => x.SectionId == 3).Link;
                ////inst.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                //rssmaster.HRef = data.FirstOrDefault(x => x.SectionId == 5).Link;
            }
        }
        protected void lnklang_ServerClick(object sender, EventArgs e)
        {
            if (lnklang.Text.Contains("عربي"))
            {
                Session["lang"] = "ar";
            }
            else 
            {
                Session["lang"] = "en";

            }
            Response.Redirect(Request.RawUrl);
        }
    }
}