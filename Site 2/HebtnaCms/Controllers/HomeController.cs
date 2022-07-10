using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EF;

namespace HebtnaCms.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using (var db = new PersonalityDBEntities())
            {
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