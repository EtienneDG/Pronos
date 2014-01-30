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
    public class PronosticController : Controller
    {
        private ASPNETDBEntities db = new ASPNETDBEntities();

        //
        // GET: /Pronostic/

        public ViewResult Index()
        {
            return View(db.PronosticsSet.ToList());
        }

        //
        // GET: /Pronostic/Details/5

        public ViewResult Details(int id)
        {
            Pronostics pronostics = db.PronosticsSet.Single(p => p.Id == id);
            return View(pronostics);
        }

        //
        // GET: /Pronostic/Create

        public ActionResult Create(int id)
        {
            PronosticModel Prnmodel = new PronosticModel(); //Create instance of VM
            Prnmodel.game = db.GamesSet.Single(g => g.Id == id);

            return View(Prnmodel);
        } 

        //
        // POST: /Pronostic/Create

        [HttpPost]
        public ActionResult Create(PronosticModel model)
        {
            if (ModelState.IsValid)
            {
                Pronostics prono = new Pronostics{
                    Score_opp_1 = model.Score_opp_1,
                    Score_opp_2 = model.Score_opp_2,
                    Games = model.game,
                    Sports = model.game.Events.Sports,
                   
                };
                

                db.PronosticsSet.AddObject(prono);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(model);
        }
        
        //
        // GET: /Pronostic/Edit/5
 
        public ActionResult Edit(int id)
        {
            Pronostics pronostics = db.PronosticsSet.Single(p => p.Id == id);
            return View(pronostics);
        }

        //
        // POST: /Pronostic/Edit/5

        [HttpPost]
        public ActionResult Edit(Pronostics pronostics)
        {
            if (ModelState.IsValid)
            {
                db.PronosticsSet.Attach(pronostics);
                db.ObjectStateManager.ChangeObjectState(pronostics, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pronostics);
        }

        //
        // GET: /Pronostic/Delete/5
 
        public ActionResult Delete(int id)
        {
            Pronostics pronostics = db.PronosticsSet.Single(p => p.Id == id);
            return View(pronostics);
        }

        //
        // POST: /Pronostic/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Pronostics pronostics = db.PronosticsSet.Single(p => p.Id == id);
            db.PronosticsSet.DeleteObject(pronostics);
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