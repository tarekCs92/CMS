using EF;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PersonalityCMS.Controllers
{
    public class AboutController : Controller
    {
        // GET: About
        public ActionResult Index(int id = 1)
        {
            ViewBag.Section = "عن الشركة";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.FirstOrDefault(x => x.Id == id);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Index(AboutTB modelTb, HttpPostedFileBase file)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {
                if (file != null)
                {
                    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    abPath = "/up/" + pic;
                    file.SaveAs(path);
                    modelTb.Image = abPath;
                }
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
        }
        public ActionResult Section()
        {
            ViewBag.Section = "النص";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.AboutTBs.FirstOrDefault(x => x.SectionId == 2);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Section(AboutTB modelTb)
        {
            using (var db = new PersonalityDBEntities())
            {
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Section");
            }
        }
    }
}