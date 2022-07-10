using EF;
using System;
using System.Collections.Generic;
using System.Linq;
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
                Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                lblMasterLAng.Text = "English";
            }
            else
            {
                if (Session["lang"] == "en")
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "عربي";
                }
                else
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "English";

                }
            }
            // ChangeLang();
        }

        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                if (Session["lang"] == "ar")
                {
                    lstprodutsen.DataSource = null;
                    lstprodutsen.DataBind();

                    lstslideren.DataSource = null;
                    lstslideren.DataBind();

                    lstlstesten.DataSource = null;
                    lstlstesten.DataBind();

                    lstnewsen.DataSource = null;
                    lstnewsen.DataBind();

                    List<EF.ProductsTB> products = db.ProductsTBs.Take(3).ToList();
                    lstproduts.DataSource = products;
                    lstproduts.DataBind();

                    List<EF.IndexTB> sliders = db.IndexTBs.Where(x => x.SectionId == 1).ToList();
                    lstslider.DataSource = sliders;
                    lstslider.DataBind();

                    List<EF.IndexTB> lastest = db.IndexTBs.Where(x => x.SectionId == 2).ToList();
                    lstlstest.DataSource = lastest;
                    lstlstest.DataBind();

                    List<EF.NewsTB> news = db.NewsTBs.Where(x => x.SectionId == 1).ToList();
                    lstnews.DataSource = news;
                    lstnews.DataBind();

                    var staticData = db.LayoutTBs.Where(x => x.SectionId == 13).ToList();
                    hstaticnews.InnerHtml = staticData.FirstOrDefault(x => x.Id == 24).ArTitle;
                }
                else
                {
                    lstproduts.DataSource = null;
                    lstproduts.DataBind();

                    lstslider.DataSource = null;
                    lstslider.DataBind();

                    lstlstest.DataSource = null;
                    lstlstest.DataBind();

                    lstnews.DataSource = null;
                    lstnews.DataBind();

                    List<EF.ProductsTB> products = db.ProductsTBs.Take(3).ToList();
                    lstprodutsen.DataSource = products;
                    lstprodutsen.DataBind();

                    List<EF.IndexTB> sliders = db.IndexTBs.Where(x => x.SectionId == 1).ToList();
                    lstslideren.DataSource = sliders;
                    lstslideren.DataBind();

                    List<EF.IndexTB> lastest = db.IndexTBs.Where(x => x.SectionId == 2).ToList();
                    lstlstesten.DataSource = lastest;
                    lstlstesten.DataBind();

                    List<EF.NewsTB> news = db.NewsTBs.Where(x => x.SectionId == 1).ToList();
                    lstnewsen.DataSource = news;
                    lstnewsen.DataBind();

                    var staticData = db.LayoutTBs.Where(x => x.SectionId == 13).ToList();
                    hstaticnews.InnerHtml = staticData.FirstOrDefault(x => x.Id == 24).EnTitle;
                }

            }
        }
    }

}