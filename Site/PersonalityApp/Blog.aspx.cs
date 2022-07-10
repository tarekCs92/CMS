using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaloriCms
{
    public partial class Blog : System.Web.UI.Page
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
                    blogAr.Style["display"] = "block";
                    blogEn.Style["display"] = "none";
                    cateEn.Style["display"] = "none";
                    cateAr.Style["display"] = "block";
                    menucat.Style["text-align"] = "right";
                    sidewidgetEn.Style["direction"] = "rtl";





                }
                else
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "عربي";
                    blogAr.Style["display"] = "none";
                    blogEn.Style["display"] = "block";
                    cateEn.Style["display"] = "block";
                    cateAr.Style["display"] = "none";
                    menucat.Style["text-align"] = "left";
                    sidewidgetEn.Style["direction"] = "ltr";


                }
            }
            // ChangeLang();
        }
        protected void DataPagerProducts_PreRender(object sender, EventArgs e)
        {
            using (var db = new PersonalityDBEntities())
            {
                if (Session["lang"] == "en")
                {
                    ListView2Ar.DataSource = null;
                    ListView2Ar.DataBind();
                    List<EF.BlogTB> collection = db.BlogTBs.Where(x => x.SectionId == 1).ToList();
                    List<Models.BlogModal> lst = new List<Models.BlogModal>();
                    foreach (var item in collection)
                    {
                        lst.Add(new Models.BlogModal() { Id = item.Id, EnTitle = item.EnTitle, ArTitle = item.ArTitle, EnDescription = item.EnDescription.Length >= 30 ? item.EnDescription.Substring(0, 29) : item.EnDescription, ArDescription = item.ArDescription.Length >= 30 ? item.ArDescription.Substring(0, 29) : item.ArDescription, Image = item.Image, Icon = item.Icon, Link = item.Link });
                    }
                    ListView2.DataSource = lst;
                    ListView2.DataBind();
                }
                else
                {
                    ListView2.DataSource = null;
                    ListView2.DataBind();
                    List<EF.BlogTB> collection = db.BlogTBs.Where(x => x.SectionId == 1).ToList();
                    List<Models.BlogModal> lst = new List<Models.BlogModal>();
                    foreach (var item in collection)
                    {
                        lst.Add(new Models.BlogModal() { Id = item.Id, EnTitle = item.EnTitle, ArTitle = item.ArTitle, EnDescription = item.EnDescription.Length >= 30 ? item.EnDescription.Substring(0, 29) : item.EnDescription, ArDescription = item.ArDescription.Length >= 30 ? item.ArDescription.Substring(0, 29) : item.ArDescription, Image = item.Image, Icon = item.Icon, Link = item.Link });
                    }
                    ListView2Ar.DataSource = lst;
                    ListView2Ar.DataBind();
                }
            }
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
                    List<EF.BlogTB> collection = db.BlogTBs.Where(x => x.SectionId == 1).ToList();
                    List<Models.BlogModal> lst = new List<Models.BlogModal>();
                    foreach (var item in collection)
                    {
                        lst.Add(new Models.BlogModal() { Id = item.Id, EnTitle = item.EnTitle, ArTitle = item.ArTitle, EnDescription = item.EnDescription.Length >= 30 ? item.EnDescription.Substring(0, 29) : item.EnDescription, ArDescription = item.ArDescription.Length >= 30 ? item.ArDescription.Substring(0, 29) : item.ArDescription, Image = item.Image, Icon = item.Icon, Link = item.Link });
                    }
                    ListView2.DataSource = lst;
                    ListView2.DataBind();

                    List<EF.MenusTB> products = db.MenusTBs.Where(x => x.SectionId == 1).ToList();
                    ListView1.DataSource = products;
                    ListView1.DataBind();

                    EF.BlogTB data = db.BlogTBs.FirstOrDefault(x => x.SectionId == 2);
                    blogHeader.InnerHtml = data.EnTitle;
                    blogDesc.InnerHtml = data.EnDescription;
                }
                else
                {
                    ListView1.DataSource = null;
                    ListView1.DataBind();
                    ListView2.DataSource = null;
                    ListView2.DataBind();
                    List<EF.BlogTB> collection = db.BlogTBs.Where(x => x.SectionId == 1).ToList();
                    List<Models.BlogModal> lst = new List<Models.BlogModal>();
                    foreach (var item in collection)
                    {
                        lst.Add(new Models.BlogModal() { Id = item.Id, EnTitle = item.EnTitle, ArTitle = item.ArTitle, EnDescription = item.EnDescription.Length >= 30 ? item.EnDescription.Substring(0, 29) : item.EnDescription, ArDescription = item.ArDescription.Length >= 30 ? item.ArDescription.Substring(0, 29) : item.ArDescription, Image = item.Image, Icon = item.Icon, Link = item.Link });
                    }
                    ListView2Ar.DataSource = lst;
                    ListView2Ar.DataBind();

                    List<EF.MenusTB> products = db.MenusTBs.Where(x => x.SectionId == 1).ToList();
                    ListView1Ar.DataSource = products;
                    ListView1Ar.DataBind();

                    EF.BlogTB data = db.BlogTBs.FirstOrDefault(x => x.SectionId == 2);
                    blogHeader.InnerHtml = data.ArTitle;
                    blogDesc.InnerHtml = data.ArDescription;

                }
            }
        }
    }
}