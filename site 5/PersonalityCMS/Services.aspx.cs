using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LoadData();
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.Service> services = db.Services.Where(x => x.SectionId == 1).ToList();
                lstServices.DataSource = services;
                lstServices.DataBind();

                List<EF.LayoutTB> condition = db.LayoutTBs.Where(x => x.SectionId == 10).ToList();
                lstCountryService.DataSource = condition;
                lstCountryService.DataBind();
                //var data = db.Services.Where(x => x.SectionId == 3).FirstOrDefault();
                //pservicedescription.InnerHtml = data.ArDescription;

            }
        }
    }
}