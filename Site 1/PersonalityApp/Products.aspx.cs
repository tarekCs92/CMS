﻿using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.ProductsTB> ProIns = db.ProductsTBs.ToList();
                ListView1.DataSource = ProIns;
                ListView1.DataBind();
            }
        }
    }
}