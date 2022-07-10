using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaloriCms
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.MenusTB> products = db.MenusTBs.Where(x => x.SectionId == 1).ToList();
                ListView1.DataSource = products;
                ListView1.DataBind();

                List<EF.MenusTB> textSection = db.MenusTBs.Where(x => x.SectionId >= 2 && x.SectionId <= 3).ToList();
                ListView2.DataSource = textSection;
                ListView2.DataBind();
            }
        }
    }
}
