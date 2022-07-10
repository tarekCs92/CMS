using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalityCMS
{
    public partial class Details : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    try
                    {
                        int i = int.Parse(Request.QueryString["id"].ToString());
                        LoadData(i);
                    }
                    catch (Exception)
                    {
                        Response.Redirect("~/Default.aspx");
                        return;
                    }
                }
                else
                {
                    Response.Redirect("~/index.aspx");
                    return;
                }
            }


        }
        public List<ImageList> GetImage(string files)
        {
            List<ImageList> arr = new List<ImageList>();
            if (files.IndexOf("|") == -1)
            {
                arr.Add(new ImageList() {image= files });
            }
            else
            {
                var colllection = files.Split('|');
                foreach (var item in colllection)
                {
                    arr.Add(new ImageList() { image = item });
                   // arr.Add(item);
                }
            }
            return arr;
        }
        private void LoadData(int id)
        {
            using (var db = new PersonalityDBEntities())
            {
                // var data = db.Services.FirstOrDefault(x => x.Id == id);
                List<EF.ProductsTB> collection = db.ProductsTBs.Where(x => x.Id == id).ToList();
                imgD.Src = GetImage(collection.FirstOrDefault().Image).FirstOrDefault().image;
                h3D.InnerHtml = collection.FirstOrDefault().ArTitle;
                pD.InnerHtml = collection.FirstOrDefault().ArDescription;

                List<ImageList> imgeG= GetImage(collection.FirstOrDefault().Image);
                ListView2.DataSource = collection;
                ListView2.DataBind();

                var datax = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                lstjobs.DataSource = datax;
                lstjobs.DataBind();
                //List<EF.AdvertismentTB> adv = db.AdvertismentTBs.Where(x => x.SectionId == 1).ToList();
                //lstAdvertise.DataSource = adv;
                //lstAdvertise.DataBind();

                //List<EF.LayoutTB> social = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                //lstSocial.DataSource = social;
                //lstSocial.DataBind();
            }
        }


    }
    public class ImageList {
        public string image { get; set; }
    }
}