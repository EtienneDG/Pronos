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
    public class SkillController : Controller
    {
        private ModelContainer db = new ModelContainer();

        //
        // GET: /Skill/

        public ViewResult Index()
        {
            return View(db.SkillSet.ToList());
        }

        //
        // GET: /Skill/Details/5

        public ViewResult Details(int id)
        {
            Skill skill = db.SkillSet.Single(s => s.Id == id);
            return View(skill);
        }

        //
        // GET: /Skill/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Skill/Create

        [HttpPost]
        public ActionResult Create(Skill skill)
        {
            if (ModelState.IsValid)
            {
                db.SkillSet.AddObject(skill);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(skill);
        }
        
        //
        // GET: /Skill/Edit/5
 
        public ActionResult Edit(int id)
        {
            Skill skill = db.SkillSet.Single(s => s.Id == id);
            return View(skill);
        }

        //
        // POST: /Skill/Edit/5

        [HttpPost]
        public ActionResult Edit(Skill skill)
        {
            if (ModelState.IsValid)
            {
                db.SkillSet.Attach(skill);
                db.ObjectStateManager.ChangeObjectState(skill, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(skill);
        }

        //
        // GET: /Skill/Delete/5
 
        public ActionResult Delete(int id)
        {
            Skill skill = db.SkillSet.Single(s => s.Id == id);
            return View(skill);
        }

        //
        // POST: /Skill/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Skill skill = db.SkillSet.Single(s => s.Id == id);
            db.SkillSet.DeleteObject(skill);
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