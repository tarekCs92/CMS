using EF;
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
            LoadData();
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
                //List<EF.ProductsTB> ProIns = db.ProductsTBs.ToList();
                //ListView1.DataSource = ProIns;
                //ListView1.DataBind();
                List<EF.ProductsTB> lstprod = new List<ProductsTB>();
                List<EF.ProductsTB> collection = db.ProductsTBs.ToList();
                foreach (var item in collection)
                {
                    EF.ProductsTB obj = item;
                    
                    obj.ArDescription = TruncateLongString(obj.ArDescription, 120);
                    obj.EnDescription = TruncateLongString(obj.EnDescription, 120);
                    lstprod.Add(obj);
                }
                ListView1.DataSource = lstprod;
                ListView1.DataBind();



                var datax = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                lstjobs.DataSource = datax;
                lstjobs.DataBind();
            }
        }
    }
}