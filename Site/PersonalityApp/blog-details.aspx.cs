using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaloriCms
{
    public partial class blog_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            CallDefaultLang();
            LoadData(id);
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
                    blogAr1.Style["display"] = "block";
                    blogEn1.Style["display"] = "none";
                    headDetails.Style["display"] = "none";
                    headDetailsAr.Style["display"] = "block";
                    blogHeader.Style["display"] = "none";
                    blogHeaderAr.Style["display"] = "block";
                    blogDescAr.Style["display"] = "block";
                    blogDesc.Style["display"] = "none";
                    categorisEn.Style["display"] = "none";
                    categorisAr.Style["display"] = "block";
                    menudetcat.Style["text-align"] = "right";
                    sidewidgetdetEn.Style["direction"] = "rtl";
                    divDetails.Style["direction"] = "rtl";



                }
                else
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "عربي";
                    blogAr1.Style["display"] = "none";
                    blogEn1.Style["display"] = "block";
                    headDetails.Style["display"] = "block";
                    headDetailsAr.Style["display"] = "none";
                    blogHeader.Style["display"] = "block";
                    blogHeaderAr.Style["display"] = "none";
                    blogDescAr.Style["display"] = "none";
                    blogDesc.Style["display"] = "block";
                    categorisEn.Style["display"] = "block";
                    categorisAr.Style["display"] = "none";
                    menudetcat.Style["text-align"] = "left";
                    sidewidgetdetEn.Style["direction"] = "ltr";
                    divDetails.Style["direction"] = "ltr";


                }
            }
            // ChangeLang();
        }

        public void LoadData(int id)
        {
            using (var db = new PersonalityDBEntities())
            {
                if (Session["lang"] == "en")
                {
                    ListView1Ar.DataSource = null;
                    ListView1Ar.DataBind();
                    EF.BlogTB products = db.BlogTBs.Find(id);
                    headDetails.InnerHtml = products.EnTitle;
                    dateDetails.InnerHtml = products.Date != null ? products.Date.Value.ToShortTimeString() : "";
                    divDetails.InnerHtml = products.EnDescription;
                    imgDetails.Src = products.Image;

                    List<EF.MenusTB> productss = db.MenusTBs.Where(x => x.SectionId == 1).ToList();
                    ListView1.DataSource = productss;
                    ListView1.DataBind();

                    EF.BlogTB data = db.BlogTBs.FirstOrDefault(x => x.SectionId == 2);
                    blogHeader.InnerHtml = data.EnTitle;
                    blogDesc.InnerHtml = data.EnDescription;
                }
                else
                {
                    ListView1.DataSource = null;
                    ListView1.DataBind();
                    EF.BlogTB products = db.BlogTBs.Find(id);
                    headDetails.InnerHtml = products.ArTitle;
                    dateDetails.InnerHtml = products.Date != null ? products.Date.Value.ToShortTimeString() : "";
                    divDetails.InnerHtml = products.ArDescription;
                    imgDetails.Src = products.Image;

                    List<EF.MenusTB> productss = db.MenusTBs.Where(x => x.SectionId == 1).ToList();
                    ListView1Ar.DataSource = productss;
                    ListView1Ar.DataBind();

                    EF.BlogTB data = db.BlogTBs.FirstOrDefault(x => x.SectionId == 2);
                    blogHeader.InnerHtml = data.ArTitle;
                    blogDesc.InnerHtml = data.ArDescription;

                }
            }
        }
    }
}