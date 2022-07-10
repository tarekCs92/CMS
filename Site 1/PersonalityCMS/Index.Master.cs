using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        public string TruncateLongString(string str, int maxLength)
        {
            try
            {
                if (string.IsNullOrEmpty(str))
                    return str;
                return str.Substring(0, Math.Min(str.Length, maxLength));
            }
            catch (Exception)
            {

                return str;
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.ProductsTB> lstprod = new List<ProductsTB>();
                List<EF.ProductsTB> collection = db.ProductsTBs.Take(3).ToList();
                foreach (var item in collection)
                {
                    EF.ProductsTB obj = item;
                    obj.ArDescription = TruncateLongString(obj.ArDescription,50);
                    obj.EnDescription = TruncateLongString(obj.EnDescription, 50);
                    lstprod.Add(obj);
                }
                lstproduts.DataSource = lstprod;
                lstproduts.DataBind();

                List<EF.Service> services = db.Services.Where(x => x.SectionId == 1).ToList();
                lsetservices.DataSource = services;
                lsetservices.DataBind();

                //get header Data
                var headerdata = db.LayoutTBs.Where(i =>  i.SectionId == 7).ToList();
                head1address.InnerHtml = headerdata.FirstOrDefault(x => x.Id == 29).ArTitle;
                head1phone.InnerHtml = headerdata.FirstOrDefault(x => x.Id == 7).ArTitle;
                head1fax.InnerHtml = headerdata.FirstOrDefault(x => x.Id == 8).ArTitle;
                var contactdata = db.ContactsTBs.Find(1);
                head1email.InnerHtml = contactdata.ArTitle;

                var data = db.LayoutTBs.Where(i => i.SectionId >= 1 && i.SectionId <= 5).ToList();
                facebookmaster.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                twittermaster.HRef = data.FirstOrDefault(x => x.SectionId == 2).Link;
                vkmaster.HRef = data.FirstOrDefault(x => x.SectionId == 3).Link;
                //rssmaster.HRef = data.FirstOrDefault(x => x.SectionId == 5).Link;
            }
        }

        //protected void lnklang_ServerClick(object sender, EventArgs e)
        //{
        //    if (lnklang.Text.Contains("English"))//get arabic version
        //    {
        //        Session["lang"] = "en";
        //    }
        //    else //get english
        //    {
        //        Session["lang"] = "ar";
        //    }
        //    Response.Redirect(Request.RawUrl);
        //}
    }
}