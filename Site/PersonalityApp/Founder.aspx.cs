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
                    founderEn.Style["display"] = "none";
                    founderAr.Style["display"] = "block";
                }
                else
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "عربي";
                    founderEn.Style["display"] = "block";
                    founderAr.Style["display"] = "none";


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
                    var data = db.AboutTBs.Where(x => x.SectionId == 1).FirstOrDefault();
                    divFounder.InnerHtml = data.EnDescription;
                }
                else
                {
                    var data = db.AboutTBs.Where(x => x.SectionId == 1).FirstOrDefault();
                    divFounder.InnerHtml = data.ArDescription;
                }
            }
        }
    }
}