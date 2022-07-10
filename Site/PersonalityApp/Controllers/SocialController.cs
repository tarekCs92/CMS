﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EF;
using PagedList;
using System.Data.Entity;

namespace CaloriCms.Controllers
{
    [Authorize]
    public class SocialController : Controller
    {
        // GET: Social
        public ActionResult Index(string searchString, int page = 1)
        {
            ViewBag.Section = "وسائل التواصل";
            using (var db = new PersonalityDBEntities())
            {
                int pageSize = 6;
                var data = db.LayoutTBs.Where(i => i.SectionId >= 1 && i.SectionId <= 6).ToList();
                ViewBag.SearchString = searchString ?? "";
                if (searchString != null && searchString != "")
                {
                    data = data.Where(x => x.SectionName.Contains(searchString)).ToList();
                }
                return Request.IsAjaxRequest()
                ? (ActionResult)PartialView("_PartialSocial", data.ToPagedList(page, pageSize))
                : View(data.ToPagedList(page, pageSize));
            }
        }
        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.Section = "وسائل التواصل";
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
        public ActionResult Create(LayoutTB modelTb, HttpPostedFileBase file)
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
                }

                modelTb.SectionName = "Slider";
                modelTb.SectionId = 1;
                modelTb.Image = abPath;
                db.LayoutTBs.Add(modelTb);
                db.SaveChanges();
                return RedirectToAction("index");


            }
        }
        public ActionResult Edit(int id)
        {
            ViewBag.Section = "وسائل التواصل";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.LayoutTBs.Find(id);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(LayoutTB modelTb, HttpPostedFileBase file)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {
                //if (file != null)
                //{
                //    var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                //    string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                //    string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                //    abPath = "/up/" + pic;
                //    file.SaveAs(path);
                //    modelTb.Image = abPath;
                //}
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
                    var data = db.LayoutTBs.Find(id);
                    db.LayoutTBs.Remove(data);
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