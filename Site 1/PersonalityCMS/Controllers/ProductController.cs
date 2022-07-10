﻿using EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PersonalityCMS.Controllers
{
    [Authorize]
    public class ProductController : Controller
    {
        // GET: Product
        // GET: Product
        public ActionResult Index(string searchString, int page = 1)
        {
            ViewBag.Section = "المشاريع";
            using (var db = new PersonalityDBEntities())
            {
                int pageSize = 5;
                var data = db.ProductsTBs.Where(i => i.SectionId == 1).OrderByDescending(x=> x.Id).ToList();
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
            ViewBag.Section = "المشاريع";
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
        public ActionResult Create(ProductsTB modelTb, IEnumerable<HttpPostedFileBase> files)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {
                if (files != null)
                {
                    int i = 0;
                    foreach (var file in files)
                    {
                        var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                        string pic = DateTime.Now.ToString("yyyyMMddhhmmssfff") + System.IO.Path.GetExtension(file.FileName);
                        string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                        if (i == 0)
                        {
                            abPath = "/up/" + pic;
                        }
                        else
                        {
                            abPath += "|"+"/up/" + pic;
                        }
                        file.SaveAs(path);
                        i++;
                    }
                }
                if (files != null)
                {
                    modelTb.SectionName = "Product";
                    modelTb.SectionId = 1;
                    modelTb.Image = abPath;
                    db.ProductsTBs.Add(modelTb);
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
            ViewBag.Section = "المشاريع";
            using (var db = new PersonalityDBEntities())
            {
                var data = db.ProductsTBs.Find(id);
                return View(data);
            }

        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(ProductsTB modelTb, IEnumerable<HttpPostedFileBase> files)
        {
            string abPath = "";
            using (var db = new PersonalityDBEntities())
            {
                if (files != null)
                {
                    int i = 0;
                    foreach (var file in files)
                    {
                        var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                        string pic = DateTime.Now.ToString("yyyyMMddhhmmssfff") + System.IO.Path.GetExtension(file.FileName);
                        string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                        if (i == 0)
                        {
                            abPath = "/up/" + pic;
                        }
                        else
                        {
                            abPath += "|" + "/up/" + pic;
                        }
                        file.SaveAs(path);
                        i++;
                    }
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