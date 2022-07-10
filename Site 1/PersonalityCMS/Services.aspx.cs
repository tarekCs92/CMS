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
                lsetservices.DataSource = services;
                lsetservices.DataBind();
                var datax = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                lstjobs.DataSource = datax;
                lstjobs.DataBind();
                //List<EF.Service> condition = db.Services.Where(x => x.SectionId == 2).ToList();
                //lsetcondition.DataSource = condition;
                //lsetcondition.DataBind();
                //var data = db.Services.Where(x => x.SectionId == 3).FirstOrDefault();
                //pservicedescription.InnerHtml = data.ArDescription;

            }
        }
    }
}