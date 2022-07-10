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
    public class SpecTBsController : Controller
    {
        private PersonalityDBEntities db = new PersonalityDBEntities();

        // GET: SpecTBs
        public ActionResult Index()
        {
            var specTBs = db.SpecTBs.Include(s => s.UnivTB);
            return View(specTBs.ToList());
        }

        // GET: SpecTBs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SpecTB specTB = db.SpecTBs.Find(id);
            if (specTB == null)
            {
                return HttpNotFound();
            }
            return View(specTB);
        }

        // GET: SpecTBs/Create
        public ActionResult Create()
        {
            ViewBag.UnivId = new SelectList(db.UnivTBs, "Id", "ArTitle");
            return View();
        }

        // POST: SpecTBs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        
        public ActionResult Create([Bind(Include = "Id,ArTitle,ArTitle,UnivId")] SpecTB specTB)
        {
            if (ModelState.IsValid)
            {
                db.SpecTBs.Add(specTB);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UnivId = new SelectList(db.UnivTBs, "Id", "ArTitle", specTB.UnivId);
            return View(specTB);
        }

        // GET: SpecTBs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SpecTB specTB = db.SpecTBs.Find(id);
            if (specTB == null)
            {
                return HttpNotFound();
            }
            ViewBag.UnivId = new SelectList(db.UnivTBs, "Id", "ArTitle", specTB.UnivId);
            return View(specTB);
        }

        // POST: SpecTBs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        
        public ActionResult Edit([Bind(Include = "Id,ArTitle,ArTitle,UnivId")] SpecTB specTB)
        {
            if (ModelState.IsValid)
            {
                db.Entry(specTB).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UnivId = new SelectList(db.UnivTBs, "Id", "ArTitle", specTB.UnivId);
            return View(specTB);
        }

        // GET: SpecTBs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SpecTB specTB = db.SpecTBs.Find(id);
            if (specTB == null)
            {
                return HttpNotFound();
            }
            return View(specTB);
        }

        // POST: SpecTBs/Delete/5
        [HttpPost, ActionName("Delete")]
        
        public ActionResult DeleteConfirmed(int id)
        {
            SpecTB specTB = db.SpecTBs.Find(id);
            db.SpecTBs.Remove(specTB);
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
