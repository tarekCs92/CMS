using EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TopWinnerCms.Controllers
{
    [Authorize]
    public class ProductController : Controller
    {
        // GET: Product
        // GET: Product
        public ActionResult Index(string searchString, int page = 1)
        {
            ViewBag.Section = "منتج";
            using (var db = new PersonalityDBEntities())
            {
                int pageSize = 5;
                var data = db.ProductsTBs.Where(i => i.SectionId == 1).ToList();
                ViewBag.SearchString = searchString ?? "";
                if (searchString != null && searchString != "")
                {
                    data = data.Where(x => x.ArTitle.Contains(searchString)).ToList();
                }
                return Request.IsAjaxRequest()
                ? (ActionResult)PartialView("_PartialProduct", data.ToPagedList(page, pageSize))
                : View(data.ToPagedList(page, pageSize));
            }
        }
        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.Section = "منتج";
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
        public ActionResult Create(ProductsTB modelTb, HttpPostedFileBase file , HttpPostedFileBase file2, HttpPostedFileBase file3, HttpPostedFileBase file4)
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
                    modelTb.Image = abPath;
                    file.SaveAs(path);
                }
                if (file2 != null)
                {
                    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file2.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    abPath = "/up/" + pic;
                    modelTb.Image2 = abPath;
                    file2.SaveAs(path);
                }
                if (file3 != null)
                {
                    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file3.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    abPath = "/up/" + pic;
                    modelTb.Image2 = abPath;
                    file3.SaveAs(path);
                }
                if (file4 != null)
                {
                    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file4.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                    abPath = "/up/" + pic;
                    modelTb.Image3 = abPath;
                    file4.SaveAs(path);
                }
                //if (file != null)
                //{
                modelTb.Date = DateTime.Now;
                    modelTb.SectionName = "Product";
                    modelTb.SectionId = 1;
                    
                    db.ProductsTBs.Add(modelTb);
                    db.SaveChanges();
                    return RedirectToAction("index");
                //}
                //else
                //{
                //    return RedirectToAction("create", new { id = 99 });
                //}

            }
        }
        public ActionResult Edit(int id)
        {
            ViewBag.Section = "منتج";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.ProductsTBs.Find(id);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(ProductsTB modelTb, HttpPostedFileBase file)
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
                return RedirectToAction("index");
            }
        }
        public JsonResult Delete(int id)
        {
            try
            {
                using (var db = new PersonalityDBEntities())
                {
                    var data = db.ProductsTBs.Find(id);
                    db.ProductsTBs.Remove(data);
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception)
            {

                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
    }
}