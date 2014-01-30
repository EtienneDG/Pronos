using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using PronoProject.Models;

namespace PronoProject.Controllers
{ 
    public class EventsController : Controller
    {
        private ASPNETDBEntities db = new ASPNETDBEntities();

        //
        // GET: /Events/

        public ViewResult Index()
        {
            return View(db.EventsSet.ToList());
        }

        //
        // GET: /Events/Details/5

        public ViewResult Details(int id)
        {
            Events events = db.EventsSet.Single(e => e.Id == id);
            return View(events);
        }

        //
        // GET: /Events/Create

        public ActionResult Create()
        {
            var Evtmodel = new EventsModel(); //Create instance of VM
            Evtmodel.SportList = GetSportsList();
            //var AvailableSports = db.SportsSet.ToList();
            //ViewBag.AvailableSports = AvailableSports;
            return View(Evtmodel);
        } 

        //
        // POST: /Events/Create

        [HttpPost]
        public ActionResult Create(EventsModel model)
        {
           
          
            if (ModelState.IsValid)
            {
                var StartDate = Request["StartDate"];
                var EndDate = Request["EndDate"];

                var sprt = SelectAllSports().First(x => x.Id.ToString() == model.SelectedSport);
                var evt = new Events 
                { 
                    Name = model.Name,
                    Description = model.Description,
                    StartDate = model.StartDate,
                    EndDate = model.EndDate,
                    Sports = sprt
                };


                db.EventsSet.AddObject(evt);  
                db.SaveChanges();
                var id = evt.Id;
                return RedirectToAction("Details", "Events", new {@id = id });  
            }
            model.SportList = GetSportsList();
            return View(model);
        }
        
        //
        // GET: /Events/Edit/5
 
        public ActionResult Edit(int id)
        {
            Events events = db.EventsSet.Single(e => e.Id == id);
            return View(events);
        }

        //
        // POST: /Events/Edit/5

        [HttpPost]
        public ActionResult Edit(Events events)
        {
            if (ModelState.IsValid)
            {
                db.EventsSet.Attach(events);
                db.ObjectStateManager.ChangeObjectState(events, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(events);
        }

        //
        // GET: /Events/Delete/5
 
        public ActionResult Delete(int id)
        {
            Events events = db.EventsSet.Single(e => e.Id == id);
            return View(events);
        }

        //
        // POST: /Events/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Events events = db.EventsSet.Single(e => e.Id == id);
            db.EventsSet.DeleteObject(events);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        /// <summary>
        /// Selects all known sports in DB
        /// </summary>
        /// <returns>List of Sports object</returns>
        public List<Sports> SelectAllSports()
        {
            var AllSports = db.SportsSet.OrderBy(x => x.Name).ToList();
            return (AllSports);
        }


        /// <summary>
        /// Method used to retrieve all know sports in DB 
        /// Used for DDL in GUI
        /// </summary>
        /// <returns>List of SelectListItem</returns>

        public List<SelectListItem> GetSportsList()
        {
            var sports = SelectAllSports();

            var query =sports.Select(x => new SelectListItem
                {
                    Value = x.Id.ToString(),
                    Text = x.Name
                });
        return (query).ToList();
        }


        
        public IEnumerable<Games> GetGamesOfEvent(int id)
        {
            //var GamesOfEvent = db.GamesSet.Select(x => x.Events = id);
            IQueryable<Games> query = db.GamesSet
            .Select(x => new Games
            {
                Id = x.Id,
                Opponent_1 = x.Opponent_1,
                Opponent_2 = x.Opponent_2,
                Events = x.Events,
                Date = x.Date
            })
            .Where(r =>r.Events.Id == id);
      
            return query;
        }

    }
}