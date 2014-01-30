using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PronoProject.Models;
using System.Data.SqlClient;

namespace PronoProject.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            using (var context = new ASPNETDBEntities())
            {
            //Retrieves current and upcoming
                SqlParameter param = new SqlParameter("@param", DateTime.Today) ;
                var lstEvents = context.ExecuteStoreQuery<Events>(
                        "select * from EventsSet",param).ToList();
                ViewBag.upcomingEvents = lstEvents; 
                return View();
            }
            
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
