using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaloriCms
{
    public partial class Gallary : System.Web.UI.Page
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
                    gallaryEn.Style["display"] = "none";
                    gallaryAr.Style["display"] = "block";

                }
                else
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "عربي";
                    gallaryEn.Style["display"] = "block";
                    gallaryAr.Style["display"] = "none";

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
                    lstgallaryAr.DataSource = null;
                    lstgallaryAr.DataBind();

                    List<EF.GallaryTB> products = db.GallaryTBs.Where(x => x.SectionId == 1).ToList();
                    lstgallary.DataSource = products;
                    lstgallary.DataBind();
                }
                else
                {
                    lstgallary.DataSource = null;
                    lstgallary.DataBind();

                    List<EF.GallaryTB> products = db.GallaryTBs.Where(x => x.SectionId == 1).ToList();
                    lstgallaryAr.DataSource = products;
                    lstgallaryAr.DataBind();

                }

            }
        }
    }
}
