using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalityCMS
{
    public partial class Gallary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                var data = db.NewsTBs.ToList();
                lstgallary.DataSource = data;
                lstgallary.DataBind();
            }
        }
    }
}