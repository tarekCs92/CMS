﻿using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.NewsTB> NewIns = db.NewsTBs.Where(x => x.SectionId == 1).ToList();
                ListView1.DataSource = NewIns;
                ListView1.DataBind();
            }
        }
    }
}