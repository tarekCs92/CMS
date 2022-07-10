using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CallDefaultLang();
                LoadData();
            }
        }
        protected void CallDefaultLang()
        {
            if (Session["lang"] == "" || Session["lang"] == null)
            {
                Session["lang"] = "ar";
                //Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                //lblMasterLAng.Text = "English";
            }
            //else
            //{
            //    if (Session["lang"] == "en")
            //    {
            //        Label lblMasterLAng = (Label)Master.FindControl("lnklang");
            //        lblMasterLAng.Text = "عربي";
            //    }
            //    else
            //    {
            //        Label lblMasterLAng = (Label)Master.FindControl("lnklang");
            //        lblMasterLAng.Text = "English";

            //    }
            //}
            // ChangeLang();
        }
        public  string StripHTML(string input)
        {
            return Regex.Replace(input, "<.*?>", String.Empty);
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                if (Session["lang"] == "ar")
                {
                    //lstprodutsen.DataSource = null;
                    //lstprodutsen.DataBind();

                    //lstslideren.DataSource = null;
                    //lstslideren.DataBind();

                    //lstlstesten.DataSource = null;
                    //lstlstesten.DataBind();

                    //lstnewsen.DataSource = null;
                    //lstnewsen.DataBind();

                    var fdata = db.LayoutTBs.Where(i => i.SectionId >= 9 && i.SectionId <= 12).ToList();
                    h11.InnerHtml = fdata.FirstOrDefault(x => x.Id == 10).ArTitle;
                    d11.InnerHtml = StripHTML(fdata.FirstOrDefault(x => x.Id == 10).ArDescription);

                    h22.InnerHtml = fdata.FirstOrDefault(x => x.Id == 11).ArTitle;
                    d22.InnerHtml = StripHTML(fdata.FirstOrDefault(x => x.Id == 11).ArDescription);

                    h33.InnerHtml = fdata.FirstOrDefault(x => x.Id == 12).ArTitle;
                    d33.InnerHtml = StripHTML(fdata.FirstOrDefault(x => x.Id == 12).ArDescription);

                    List<EF.ProductsTB> products = db.ProductsTBs.Take(8).ToList();
                    ListView1.DataSource = products;
                    ListView1.DataBind();

                    //List<EF.ProductsTB> productsx = db.ProductsTBs.Take(4).ToList();
                    ListView2.DataSource = products;
                    ListView2.DataBind();

                    List<EF.IndexTB> sliders = db.IndexTBs.Where(x => x.SectionId == 1).ToList();
                    lstslider.DataSource = sliders;
                    lstslider.DataBind();

                    var datax = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                    lstjobs.DataSource = datax;
                    lstjobs.DataBind();

                    //List<EF.NewsTB> news = db.NewsTBs.Where(x => x.SectionId == 1).ToList();
                    //lstnews.DataSource = news;
                    //lstnews.DataBind();
                    List<EF.Service> services = db.Services.Where(x => x.SectionId == 1).ToList();
                    lsetservices.DataSource = services;
                    lsetservices.DataBind();

                    var data = db.AboutTBs.Where(x => x.SectionId == 1).FirstOrDefault();
                    //htitle.InnerHtml = data.ArTitle;
                    ptext.InnerHtml = data.ArDescription;
                    //var staticData = db.LayoutTBs.Where(x => x.SectionId == 13).ToList();
                    //hstaticnews.InnerHtml = staticData.FirstOrDefault(x => x.Id == 24).ArTitle;
                }
                else
                {
                    //lstproduts.DataSource = null;
                    //lstproduts.DataBind();

                    //lstslider.DataSource = null;
                    //lstslider.DataBind();

                    //lstlstest.DataSource = null;
                    //lstlstest.DataBind();

                    //lstnews.DataSource = null;
                    //lstnews.DataBind();

                    //List<EF.ProductsTB> products = db.ProductsTBs.Take(3).ToList();
                    //lstprodutsen.DataSource = products;
                    //lstprodutsen.DataBind();

                    //List<EF.IndexTB> sliders = db.IndexTBs.Where(x => x.SectionId == 1).ToList();
                    //lstslideren.DataSource = sliders;
                    //lstslideren.DataBind();

                    //List<EF.IndexTB> lastest = db.IndexTBs.Where(x => x.SectionId == 2).ToList();
                    //lstlstesten.DataSource = lastest;
                    //lstlstesten.DataBind();

                    //List<EF.NewsTB> news = db.NewsTBs.Where(x => x.SectionId == 1).ToList();
                    //lstnewsen.DataSource = news;
                    //lstnewsen.DataBind();

                    //var staticData = db.LayoutTBs.Where(x => x.SectionId == 13).ToList();
                    //hstaticnews.InnerHtml = staticData.FirstOrDefault(x => x.Id == 24).EnTitle;
                }

            }
        }
    }

}