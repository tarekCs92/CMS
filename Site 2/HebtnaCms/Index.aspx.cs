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
            LoadData();
        }

        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.IndexTB> products = db.IndexTBs.Where(x=> x.SectionId == 1).ToList();
                lstSlider.DataSource = products;
                lstSlider.DataBind();
                List<IndexTB> data= db.IndexTBs.Where(x => x.SectionId >= 2 && x.SectionId<= 6).ToList();
                ListView1.DataSource = products;
                ListView1.DataBind();

                founderText.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).EnTitle;
                founderDesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).EnDescription;
                //founderImg1.Src = data.FirstOrDefault(x => x.SectionId == 2).Image;
                //founderIcon.Src = data.FirstOrDefault(x => x.SectionId == 2).Icon;
                //foundLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 2).Link;

                //greatHeader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 3).EnTitle;
                //greatImg.Style["background-image"] = Page.ResolveUrl(data.FirstOrDefault(x => x.SectionId == 3).Image);

                //condHeader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 4).EnTitle;
                //consImg.Style["background-image"] = Page.ResolveUrl(data.FirstOrDefault(x => x.SectionId == 4).Image);

                //weheader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).EnTitle;
                //wedesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).EnDescription;
                //weimg.Src = data.FirstOrDefault(x => x.SectionId == 5).Image;
                //weicon.Src = data.FirstOrDefault(x => x.SectionId == 5).Icon;
                //weLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 5).Link;

                //menuheader.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).EnTitle;
                //menudesc.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).EnDescription;
                //menuImg.Src = data.FirstOrDefault(x => x.SectionId == 6).Image;
                //menuLink.InnerHtml = data.FirstOrDefault(x => x.SectionId == 6).Link;

                //weicon.Src = data.FirstOrDefault(x => x.SectionId == 5).Icon;

            }
        }
    }

}