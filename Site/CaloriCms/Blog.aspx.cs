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
            LoadData();
        }
        protected void DataPagerProducts_PreRender(object sender, EventArgs e)
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.BlogTB> collection = db.BlogTBs.Where(x => x.SectionId == 1).ToList();
                List<Models.BlogModal> lst = new List<Models.BlogModal>();
                foreach (var item in collection)
                {
                    lst.Add(new Models.BlogModal() { Id = item.Id, EnTitle = item.EnTitle, ArTitle = item.ArTitle, EnDescription = item.EnDescription.Length >= 30 ? item.EnDescription.Substring(0, 29) : item.EnDescription, ArDescription = item.ArDescription.Length >= 30 ? item.ArDescription.Substring(0, 29) : item.ArDescription, Image = item.Image, Icon = item.Icon, Link = item.Link });
                }
                ListView2.DataSource = lst;
                ListView2.DataBind();
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
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
        }
    }
}