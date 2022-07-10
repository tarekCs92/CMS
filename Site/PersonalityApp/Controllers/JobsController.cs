using EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CaloriCms.Controllers
{
    [Authorize]
    public class JobsController : Controller
    {
        // GET: Jobs
        public ActionResult Index(string searchString, int page = 1)
        {
            ViewBag.Section = "وظائف";
            using (var db = new PersonalityDBEntities())
            {
                int pageSize = 5;
                var data = db.MenusTBs.Where(i => i.SectionId == 1).ToList();
                ViewBag.SearchString = searchString ?? "";
                if (searchString != null && searchString != "")
                {
                    data = data.Where(x => x.ArTitle.Contains(searchString)).ToList();
                }
                return Request.IsAjaxRequest()
                ? (ActionResult)PartialView("_PartialJobs", data.ToPagedList(page, pageSize))
                : View(data.ToPagedList(page, pageSize));
            }
        }
        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.Section = "وظائف";
            if (id == 0)
            {
                ViewBag.error = "";
            }
            else
            {
                ViewBag.error = "من فضلك قم باختيار صورة";
            }
            return View();
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(MenusTB modelTb, HttpPostedFileBase file, HttpPostedFileBase icon)
        {
            string abPath = "";
            string menupath = "";
            using (var db = new PersonalityDBEntities())
            {
                if (file != null)
                {
                    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    abPath = "/up/" + pic;
                    file.SaveAs(path);
                }
                if (icon != null)
                {
                    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(icon.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    menupath = "/up/" + pic;
                    icon.SaveAs(path);
                }
                if (file != null && icon != null)
                {
                    modelTb.SectionName = "Jobs";
                    modelTb.SectionId = 1;
                    modelTb.Image = abPath;
                    modelTb.Icon = menupath;
                    db.MenusTBs.Add(modelTb);
                    db.SaveChanges();
                    return RedirectToAction("index");
                }
                else
                {
                    return RedirectToAction("create", new { id = 99 });
                }

            }
        }
        public ActionResult Edit(int id)
        {
            ViewBag.Section = "وظائف";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.MenusTBs.Find(id);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(MenusTB modelTb, HttpPostedFileBase file, HttpPostedFileBase icon)
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
                if (icon != null)
                {
                    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(icon.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    //menupath = "/up/" + pic;
                    icon.SaveAs(path);
                    modelTb.Icon = "/up/" + pic;
                }
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("index");
            }
        }
        public JsonResult Delete(int id)
        {
            try
            {
                using (var db = new PersonalityDBEntities())
                {
                    var data = db.MenusTBs.Find(id);
                    db.MenusTBs.Remove(data);
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception)
            {

                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult Section()
        {
            ViewBag.Section = "النص";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.MenusTBs.FirstOrDefault(x=> x.SectionId == 2);
                return View(data);
            }
            
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Section(MenusTB modelTb)
        {
            using (var db = new PersonalityDBEntities())
            {
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Section");
            }
        }
        public ActionResult ScondSection()
        {
            ViewBag.Section = "النص";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.MenusTBs.FirstOrDefault(x => x.SectionId == 3);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult ScondSection(MenusTB modelTb)
        {
            using (var db = new PersonalityDBEntities())
            {
                db.Entry(modelTb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("ScondSection");
            }
        }
    }
}