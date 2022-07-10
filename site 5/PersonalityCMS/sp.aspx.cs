using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalityCMS
{
    public partial class sp : System.Web.UI.Page
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
                        Session["id"] = i;
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

        private void LoadData(int id)
        {
            using (var db = new PersonalityDBEntities())
            {
                // var data = db.Services.FirstOrDefault(x => x.Id == id);
                var data = db.UnivTBs.Find(id);

                spcNames.InnerHtml = "تخصصات جامعة"+" "+ data.ArTitle ;
                spcNames2.InnerHtml = "تخصصات جامعة" + " " + data.ArTitle ;

                List<EF.SpecTB> adv = db.SpecTBs.Where(x => x.UnivId == id).ToList();
                lstSpec.DataSource = adv;
                lstSpec.DataBind();

                //List<EF.LayoutTB> social = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                //lstSocial.DataSource = social;
                //lstSocial.DataBind();
            }
        }

    }
}