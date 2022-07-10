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
                    foundLinkAr.Style["display"] = "contents";
                    foundLink.Style["display"] = "none";
                    menuheaderAr.Style["display"] = "block";
                    menuheader.Style["display"] = "none";
                    menuLinkAr.Style["display"] = "contents";
                    menuLink.Style["display"] = "none";
                    weLinkAr.Style["display"] = "contents";
                    weLink.Style["display"] = "none";



                }
                else
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "عربي";
                    foundLinkAr.Style["display"] = "none";
                    foundLink.Style["display"] = "contents";
                    menuheaderAr.Style["display"] = "none";
                    menuheader.Style["display"] = "block";
                    menuLinkAr.Style["display"] = "none";
                    menuLink.Style["display"] = "contents";
                    weLinkAr.Style["display"] = "none";
                    weLink.Style["display"] = "contents";


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
                    lstSliderAr.DataSource = null;
                    lstSliderAr.DataBind();
                    List<EF.IndexTB> products = db.IndexTBs.Where(x => x.SectionId == 1).ToList();
                    lstSlider.DataSource = products;
                    lstSlider.DataBind();
                    List<IndexTB> data = db.IndexTBs.Where(x => x.SectionId >= 2 && x.SectionId <= 6).ToList();
                    founderText.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).EnTitle;
                    founderDesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).EnDescription;
                    founderImg1.Src = data.FirstOrDefault(x => x.SectionId == 2).Image;
                    founderIcon.Src = data.FirstOrDefault(x => x.SectionId == 2).Icon;
                    foundLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).Link;

                    greatHeader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 3).EnTitle;
                    greatImg.Style["background-image"] = Page.ResolveUrl(data.FirstOrDefault(x => x.SectionId == 3).Image);

                    condHeader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 4).EnTitle;
                    consImg.Style["background-image"] = Page.ResolveUrl(data.FirstOrDefault(x => x.SectionId == 4).Image);

                    weheader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).EnTitle;
                    wedesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).EnDescription;
                    weimg.Src = data.FirstOrDefault(x => x.SectionId == 5).Image;
                    weicon.Src = data.FirstOrDefault(x => x.SectionId == 5).Icon;
                    weLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).Link;

                    menuheader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).EnTitle;
                    menudesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).EnDescription;
                    menuImg.Src = data.FirstOrDefault(x => x.SectionId == 6).Image;
                    menuLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).Link;

                    //weicon.Src = data.FirstOrDefault(x => x.SectionId == 5).Icon;
                }
                else
                {
                    lstSlider.DataSource = null;
                    lstSlider.DataBind();
                    List<EF.IndexTB> products = db.IndexTBs.Where(x => x.SectionId == 1).ToList();
                    lstSliderAr.DataSource = products;
                    lstSliderAr.DataBind();
                    List<IndexTB> data = db.IndexTBs.Where(x => x.SectionId >= 2 && x.SectionId <= 6).ToList();
                    founderText.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).ArTitle;
                    founderDesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).ArDescription;
                    founderImg1.Src = data.FirstOrDefault(x => x.SectionId == 2).Image;
                    founderIcon.Src = data.FirstOrDefault(x => x.SectionId == 2).Icon;
                    foundLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).Link;

                    greatHeader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 3).ArTitle;
                    greatImg.Style["background-image"] = Page.ResolveUrl(data.FirstOrDefault(x => x.SectionId == 3).Image);

                    condHeader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 4).ArTitle;
                    consImg.Style["background-image"] = Page.ResolveUrl(data.FirstOrDefault(x => x.SectionId == 4).Image);

                    weheader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).ArTitle;
                    wedesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).ArDescription;
                    weimg.Src = data.FirstOrDefault(x => x.SectionId == 5).Image;
                    weicon.Src = data.FirstOrDefault(x => x.SectionId == 5).Icon;
                    weLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).Link;

                    menuheader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).ArTitle;
                    menudesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).ArDescription;
                    menuImg.Src = data.FirstOrDefault(x => x.SectionId == 6).Image;
                    menuLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).Link;

                    //weicon.Src = data.FirstOrDefault(x => x.SectionId == 5).Icon;

                }

            }
        }
    }

}