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
    public class CountryTBsController : Controller
    {
        private PersonalityDBEntities db = new PersonalityDBEntities();

        // GET: CountryTBs
        public ActionResult Index()
        {
            return View(db.CountryTBs.ToList());
        }

        // GET: CountryTBs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CountryTB countryTB = db.CountryTBs.Find(id);
            if (countryTB == null)
            {
                return HttpNotFound();
            }
            return View(countryTB);
        }

        // GET: CountryTBs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CountryTBs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        
        public ActionResult Create([Bind(Include = "Id,EnTitle,ArTitle")] CountryTB countryTB)
        {
            if (ModelState.IsValid)
            {
                db.CountryTBs.Add(countryTB);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(countryTB);
        }

        // GET: CountryTBs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CountryTB countryTB = db.CountryTBs.Find(id);
            if (countryTB == null)
            {
                return HttpNotFound();
            }
            return View(countryTB);
        }

        // POST: CountryTBs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        
        public ActionResult Edit([Bind(Include = "Id,EnTitle,ArTitle")] CountryTB countryTB)
        {
            if (ModelState.IsValid)
            {
                db.Entry(countryTB).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(countryTB);
        }

        // GET: CountryTBs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CountryTB countryTB = db.CountryTBs.Find(id);
            if (countryTB == null)
            {
                return HttpNotFound();
            }
            return View(countryTB);
        }

        // POST: CountryTBs/Delete/5
        [HttpPost, ActionName("Delete")]
        
        public ActionResult DeleteConfirmed(int id)
        {
            var univCol = db.UnivTBs.Where(x => x.CountryId == id);
            if (univCol.Count() > 0)
            {
                foreach (var item in univCol.ToList())
                {
                    var specColl = db.SpecTBs.Where(x => x.UnivId == item.Id).ToList();
                    db.SpecTBs.RemoveRange(specColl);
                    db.SaveChanges();
                }
                db.UnivTBs.RemoveRange(univCol);
                db.SaveChanges();
            }
            CountryTB countryTB = db.CountryTBs.Find(id);
            db.CountryTBs.Remove(countryTB);
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
