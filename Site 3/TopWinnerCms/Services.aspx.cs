﻿using EF;
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
                List<EF.Service> collection = db.Services.ToList();
                List<Service> lstservices = new List<Service>();
                foreach (var item in collection)
                {
                    lstservices.Add(new Service() { Id = item.Id, ArTitle = item.ArTitle, EnTitle = item.EnTitle, ArDescription = item.ArDescription != null ? item.ArDescription.Length > 50 ? item.ArDescription.Substring(0, 40) + "..." : item.ArDescription + "..." : "", EnDescription = item.EnDescription != null ? item.EnDescription.Length > 50 ? item.EnDescription.Substring(0, 40) + "..." : item.EnDescription + "..." : "" });
                }
                lstServices.DataSource = lstservices;
                lstServices.DataBind();

                List<EF.AdvertismentTB> adv = db.AdvertismentTBs.Where(x => x.SectionId == 1).ToList();
                lstAdvertise.DataSource = adv;
                lstAdvertise.DataBind();

                List<EF.LayoutTB> social = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                lstSocial.DataSource = social;
                lstSocial.DataBind();


            }
        }
    }
}