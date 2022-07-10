using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EF;

namespace CaloriCms.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using (var db = new PersonalityDBEntities())
            {
                ViewBag.dt1 = db.BlogTBs.Count();
                ViewBag.dt2 = db.GallaryTBs.Count();
                ViewBag.dt3 = db.MenusTBs.Count();
            }
            return View();
        }
        public ActionResult CallAspx()
        {
            return Redirect("/index.aspx");
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