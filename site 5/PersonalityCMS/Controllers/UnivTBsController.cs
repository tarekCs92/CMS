using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using EF;

namespace PersonalityCMS.Controllers
{
    public class UnivTBsController : Controller
    {
        private PersonalityDBEntities db = new PersonalityDBEntities();

        // GET: UnivTBs
        public ActionResult Index()
        {
            var univTBs = db.UnivTBs.Include(u => u.CountryTB);
            return View(univTBs.ToList());
        }

        // GET: UnivTBs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UnivTB univTB = db.UnivTBs.Find(id);
            if (univTB == null)
            {
                return HttpNotFound();
            }
            return View(univTB);
        }

        // GET: UnivTBs/Create
        public ActionResult Create()
        {
            ViewBag.CountryId = new SelectList(db.CountryTBs, "Id", "ArTitle");
            return View();
        }

        // POST: UnivTBs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]

        public ActionResult Create(UnivTB univTB, HttpPostedFileBase file)
        {
            string abPath = "http://via.placeholder.com/350x150";
            if (file != null)
            {
                var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                abPath = "/up/" + pic;
                file.SaveAs(path);
            }
            univTB.Image = abPath;
            db.UnivTBs.Add(univTB);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // GET: UnivTBs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UnivTB univTB = db.UnivTBs.Find(id);
            if (univTB == null)
            {
                return HttpNotFound();
            }
            ViewBag.CountryId = new SelectList(db.CountryTBs, "Id", "ArTitle", univTB.CountryId);
            return View(univTB);
        }

        // POST: UnivTBs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]

        public ActionResult Edit(UnivTB univTB, HttpPostedFileBase file)
        {

            string abPath = "http://via.placeholder.com/350x150";
            if (file != null)
            {
                var uri = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";
                string pic = DateTime.Now.ToString("yyyyMMddhhmmss") + System.IO.Path.GetExtension(file.FileName);
                string path = System.IO.Path.Combine(Server.MapPath("~/up/"), pic);
                abPath = "/up/" + pic;
                file.SaveAs(path);
                univTB.Image = abPath;
            }
            db.Entry(univTB).State = EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");

        }

        // GET: UnivTBs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UnivTB univTB = db.UnivTBs.Find(id);
            if (univTB == null)
            {
                return HttpNotFound();
            }
            return View(univTB);
        }

        // POST: UnivTBs/Delete/5
        [HttpPost, ActionName("Delete")]

        public ActionResult DeleteConfirmed(int id)
        {
            var specColl = db.SpecTBs.Where(x => x.UnivId == id).ToList();
            db.SpecTBs.RemoveRange(specColl);
            db.SaveChanges();

            UnivTB univTB = db.UnivTBs.Find(id);
            db.UnivTBs.Remove(univTB);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
