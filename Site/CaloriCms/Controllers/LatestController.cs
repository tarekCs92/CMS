﻿using EF;
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
    public class LatestController : Controller
    {
        // GET: Latest
        // GET: Latest
        public ActionResult Index(string searchString, int page = 1)
        {
            ViewBag.Section = "نصوص الصفحة";
            using (var db = new PersonalityDBEntities())
            {
                int pageSize = 5;
                var data = db.IndexTBs.Where(i => i.SectionId >= 2 && i.SectionId <= 6).ToList();
                ViewBag.SearchString = searchString ?? "";
                if (searchString != null && searchString != "")
                {
                    data = data.Where(x => x.ArTitle.Contains(searchString)).ToList();
                }
                return Request.IsAjaxRequest()
                ? (ActionResult)PartialView("_PartialSlider", data.ToPagedList(page, pageSize))
                : View(data.ToPagedList(page, pageSize));
            }
        }
        [HttpGet]
        public ActionResult Create(int id = 0)
        {
            ViewBag.Section = "نصوص الصفحة";
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
        public ActionResult Create(IndexTB modelTb, HttpPostedFileBase file)
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
                if (file != null)
                {
                    modelTb.SectionName = "Latest";
                    modelTb.SectionId = 2;
                    modelTb.Image = abPath;
                    db.IndexTBs.Add(modelTb);
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
            ViewBag.Section = "نصوص الصفحة";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.IndexTBs.Find(id);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(IndexTB modelTb, HttpPostedFileBase file, HttpPostedFileBase icon)
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
                    abPath = "/up/" + pic;
                    icon.SaveAs(path);
                    modelTb.Icon = abPath;
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
                    var data = db.IndexTBs.Find(id);
                    db.IndexTBs.Remove(data);
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