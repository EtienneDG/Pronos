using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PronoProject.Models;

namespace PronoProject.Controllers
{ 
    public class SportController : Controller
    {
        private ASPNETDBEntities db = new ASPNETDBEntities();

        //
        // GET: /Sport/

        public ViewResult Index()
        {
            return View(db.SportsSet.ToList());
        }

        //
        // GET: /Sport/Details/5

        public ViewResult Details(int id)
        {
            Sports sports = db.SportsSet.Single(s => s.Id == id);
            return View(sports);
        }

        //
        // GET: /Sport/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Sport/Create

        [HttpPost]
        public ActionResult Create(Sports sports)
        {
            if (ModelState.IsValid)
            {
                db.SportsSet.AddObject(sports);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(sports);
        }
        
        //
        // GET: /Sport/Edit/5
 
        public ActionResult Edit(int id)
        {
            Sports sports = db.SportsSet.Single(s => s.Id == id);
            return View(sports);
        }

        //
        // POST: /Sport/Edit/5

        [HttpPost]
        public ActionResult Edit(Sports sports)
        {
            if (ModelState.IsValid)
            {
                db.SportsSet.Attach(sports);
                db.ObjectStateManager.ChangeObjectState(sports, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sports);
        }

        //
        // GET: /Sport/Delete/5
 
        public ActionResult Delete(int id)
        {
            Sports sports = db.SportsSet.Single(s => s.Id == id);
            return View(sports);
        }

        //
        // POST: /Sport/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Sports sports = db.SportsSet.Single(s => s.Id == id);
            db.SportsSet.DeleteObject(sports);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}