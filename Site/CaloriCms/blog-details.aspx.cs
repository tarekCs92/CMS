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
            LoadData(id);
        }

        public void LoadData(int id)
        {
            using (var db = new PersonalityDBEntities())
            {
                EF.BlogTB products = db.BlogTBs.Find(id);
                headDetails.InnerHtml = products.EnTitle;
                dateDetails.InnerHtml = products.Date!= null ? products.Date.Value.ToShortTimeString(): "";
                divDetails.InnerHtml = products.EnDescription;
                imgDetails.Src = products.Image;

                List<EF.MenusTB> productss = db.MenusTBs.Where(x => x.SectionId == 1).ToList();
                ListView1.DataSource = productss;
                ListView1.DataBind();

                EF.BlogTB data = db.BlogTBs.FirstOrDefault(x => x.SectionId == 2);
                blogHeader.InnerHtml = data.EnTitle;
                blogDesc.InnerHtml = data.EnDescription;
            }
        }
    }
}