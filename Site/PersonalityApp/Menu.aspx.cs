using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaloriCms
{
    public partial class Menu : System.Web.UI.Page
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
                Session["lang"] = "en";
                Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                lblMasterLAng.Text = "عربي";
            }
            else
            {
                if (Session["lang"] == "ar")
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "English";
                    menuhesderEn.Style["display"] = "none";
                    menuhesderAr.Style["display"] = "block";





                }
                else
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "عربي";
                    menuhesderEn.Style["display"] = "block";
                    menuhesderAr.Style["display"] = "none";


                }
            }
            // ChangeLang();
        }


        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                if (Session["lang"] == "en")
                {
                    ListView1Ar.DataSource = null;
                    ListView1Ar.DataBind();
                    ListView2Ar.DataSource = null;
                    ListView2Ar.DataBind();
                    List<EF.MenusTB> products = db.MenusTBs.Where(x => x.SectionId == 1).ToList();
                    ListView1.DataSource = products;
                    ListView1.DataBind();

                    List<EF.MenusTB> textSection = db.MenusTBs.Where(x => x.SectionId >= 2 && x.SectionId <= 3).ToList();
                    ListView2.DataSource = textSection;
                    ListView2.DataBind();
                }
                else
                {
                    ListView1.DataSource = null;
                    ListView1.DataBind();
                    ListView2.DataSource = null;
                    ListView2.DataBind();
                    List<EF.MenusTB> products = db.MenusTBs.Where(x => x.SectionId == 1).ToList();
                    ListView1Ar.DataSource = products;
                    ListView1Ar.DataBind();

                    List<EF.MenusTB> textSection = db.MenusTBs.Where(x => x.SectionId >= 2 && x.SectionId <= 3).ToList();
                    ListView2Ar.DataSource = textSection;
                    ListView2Ar.DataBind();
                }
            }
        }
    }
}
