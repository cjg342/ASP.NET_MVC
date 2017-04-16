using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC.Models;
using System.Text;

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
            sampleDBContext db= new sampleDBContext();
            // Retrieve departments, and build SelectList
            ViewBag.departmentsOneoff = new SelectList(db.Departments, "Id", "Name",1);

            // text box for and drop down for stringly typed
            Company company = new Company("Pragim");
            ViewBag.Departments = new SelectList(company.Departments, "Id", "Name");
            ViewBag.CompanyName = company.CompanyName;

            return View(company);
        }

        [HttpGet]
        public ActionResult Index2()
        {
            Company2 company = new Company2();
            return View(company);
        }


        [HttpPost]
        public string Index2(Company2 company)
        {
            if (string.IsNullOrEmpty(company.SelectedDepartment))
            {
                return "You did not select any department";
            }
            else
            {
                return "You selected department with ID = " + company.SelectedDepartment;
            }
        }



        [HttpGet]
        public ActionResult Index3()
        {
            SampleDBConextCheckbox db = new SampleDBConextCheckbox();
            return View(db.Cities);
        }

        [HttpPost]
        public string Index3(IEnumerable<City> cities)
        {
            if (cities.Count(x => x.IsSelected) == 0)
            {
                return "You have not selected any City";
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("You selected - ");
                foreach (City city in cities)
                {
                    if (city.IsSelected)
                    {
                        sb.Append(city.Name + ", ");
                    }
                }
                sb.Remove(sb.ToString().LastIndexOf(","), 1);
                return sb.ToString();
            }
        }


        [HttpGet]
        public ActionResult Index4()
        {
            SampleDBConextCheckbox db = new SampleDBConextCheckbox();
            List<SelectListItem> listSelectListItems = new List<SelectListItem>();

            foreach (City city in db.Cities)
            {
                SelectListItem selectList = new SelectListItem()
                {
                    Text = city.Name,
                    Value = city.ID.ToString(),
                    Selected = city.IsSelected
                };
                listSelectListItems.Add(selectList);
            }

            CitiesViewModel citiesViewModel = new CitiesViewModel()
            {
                Cities = listSelectListItems
            };

            return View(citiesViewModel);
        }

        [HttpPost]
        public string Index4(IEnumerable<string> selectedCities)
        {
            if (selectedCities == null)
            {
                return "No cities selected";
            }
            else
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("You selected - " + string.Join(",", selectedCities));
                return sb.ToString();
            }
        }



























    }
}