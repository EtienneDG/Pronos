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
    public class GamesController : Controller
    {
        private ASPNETDBEntities db = new ASPNETDBEntities();

        //
        // GET: /Games/

        public ViewResult Index()
        {
            return View(db.GamesSet.ToList());
        }

        //
        // GET: /Games/Details/5

        public ViewResult Details(int id)
        {
            Games games = db.GamesSet.Single(g => g.Id == id);
            return View(games);
        }

        //
        // GET: /Games/Create

        public ActionResult Create()
        {
            GamesModel model = new GamesModel(); //Create instance of VM
            model.EventsList = GetEventsList();
           
            return View(model);
        } 

        //
        // POST: /Games/Create

        [HttpPost]
        public ActionResult Create(GamesModel model)
        {
            if (ModelState.IsValid)
            {
                var StartDate = Request["Date"];

                Events evt = SelectAllEvents().First(e => e.Id.ToString() == model.SelectedEvent); 
                var game = new Games {
                    Date = model.Date,
                    Opponent_1 = model.Opponent_1,
                    Opponent_2 = model.Opponent_2,
                    Events = evt
                };

                db.GamesSet.AddObject(game);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(model);
        }
        
        //
        // GET: /Games/Edit/5
 
        public ActionResult Edit(int id)
        {
            Games games = db.GamesSet.Single(g => g.Id == id);
            return View(games);
        }

        //
        // POST: /Games/Edit/5

        [HttpPost]
        public ActionResult Edit(Games games)
        {
            if (ModelState.IsValid)
            {
                db.GamesSet.Attach(games);
                db.ObjectStateManager.ChangeObjectState(games, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(games);
        }

        //
        // GET: /Games/Delete/5
 
        public ActionResult Delete(int id)
        {
            Games games = db.GamesSet.Single(g => g.Id == id);
            return View(games);
        }

        //
        // POST: /Games/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Games games = db.GamesSet.Single(g => g.Id == id);
            db.GamesSet.DeleteObject(games);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        /// <summary>
        /// Selects all non passed events in DB
        /// </summary>
        /// <returns>List of Sports object</returns>
        public List<Events> SelectAllEvents()
        {
            DateTime today = DateTime.Now.Date;
            var AllEvents = db.EventsSet.Where(x => x.EndDate >= today).OrderBy(x => x.Name).ToList();
            return (AllEvents);
        }


        /// <summary>
        /// Method used to retrieve all know events in DB 
        /// Used for GUI
        /// </summary>
        /// <returns>List of SelectListItem</returns>

        public List<SelectListItem> GetEventsList()
        {
            var events = SelectAllEvents();

            var query = events.Select(x => new SelectListItem
            {
                Value = x.Id.ToString(),
                Text = x.Name
            });
            return (query).ToList();
        }
    }
}