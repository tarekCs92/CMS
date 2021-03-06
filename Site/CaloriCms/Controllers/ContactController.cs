using EF;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CaloriCms.Controllers
{
    public class ContactController : Controller
    {
        // GET: Contact
        public ActionResult Index()
        {
            ViewBag.Section = "اتصل بنا";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.ContactsTBs.FirstOrDefault(x => x.SectionId == 1);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Index(ContactsTB modelTb)
        {
            using (var db = new PersonalityDBEntities())
            {
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
        }

        public ActionResult Section()
        {
            ViewBag.Section = "نص الاتصال";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.ContactsTBs.FirstOrDefault(x => x.SectionId == 2);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Section(ContactsTB modelTb)
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