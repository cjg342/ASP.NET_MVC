using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC.Models;

namespace MVC.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            // Store the list of Countries in ViewBag.  
            ViewBag.Countries = new List<string>()
            {
                "India",
                "US",
                "UK",
                "Canada"
            };

            // Store the list of Countries in ViewBag.  
            ViewData["Countries"] = new List<string>()
            {
                "India",
                "US",
                "UK",
                "Canada"
            };

            // Finally return a view

            // Connect to the database
            DropDownExampleEntities db= new DropDownExampleEntities();
            // Retrieve departments, and build SelectList
            ViewBag.products = new SelectList(db.products, "Id", "Name",1);

            // text box for and drop down for stringly typed
            Company company = new Company("Pragim");
            ViewBag.Departments = new SelectList(company.products, "Id", "Name");
            ViewBag.CompanyName = company.CompanyName;

            return View(company);
        }



    }
}