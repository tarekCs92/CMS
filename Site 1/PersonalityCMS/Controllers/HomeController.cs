using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EF;

namespace PersonalityCMS.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using (var db = new PersonalityDBEntities())
            {
                ViewBag.dt1 = db.ProductsTBs.Count();
                ViewBag.dt2 = db.NewsTBs.Count();
                ViewBag.dt3 = db.JobsTBs.Count();
            }
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}