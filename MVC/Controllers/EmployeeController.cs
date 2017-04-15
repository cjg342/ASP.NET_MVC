using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BusinessLayer;

namespace MVC.Controllers
{
    public class EmployeeController : Controller
    {


        public ActionResult Index()
        {
            EmployeeBusinessLayer employeeBusinessLayer =
                new EmployeeBusinessLayer();

            List<Employee> employees = employeeBusinessLayer.Employees.ToList();
            return View(employees);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        ////public ActionResult Create(FormCollection formCollection)
        //public ActionResult Create(string name, string gender, string city, DateTime dateOfBirth)
        public ActionResult Create(Employee employee)
        {
            ////Employee employee = new Employee();
            ////employee.Name = formCollection["Name"];
            ////employee.Gender = formCollection["Gender"];
            ////employee.City = formCollection["City"];
            ////employee.DateOfBirth=Convert.ToDateTime(formCollection["DateOfBirth"]);

            //Employee employee = new Employee();
            //employee.Name = name;
            //employee.Gender = gender;
            //employee.City = city;
            //employee.DateOfBirth = dateOfBirth;

            if (ModelState.IsValid)
            {
                EmployeeBusinessLayer employeeBusinessLayer = new EmployeeBusinessLayer();

                employeeBusinessLayer.AddEmployee(employee);
                return RedirectToAction("Index");
            }
            return View();
        }


        [HttpGet]
        public ActionResult Edit(int id)
        {
            EmployeeBusinessLayer employeeBusinessLayer =new EmployeeBusinessLayer();
            Employee employee =employeeBusinessLayer.Employees.Single(emp => emp.ID == id);

            return View(employee);
        }


        [HttpPost]
        public ActionResult Edit(Employee employee)
        {
            if (ModelState.IsValid)
            {
                EmployeeBusinessLayer employeeBusinessLayer =new EmployeeBusinessLayer();
                employeeBusinessLayer.SaveEmmployee(employee);

                return RedirectToAction("Index");
            }
            return View(employee);
        }


        [HttpPost]
        public ActionResult Delete(int id)
        {
            EmployeeBusinessLayer employeeBusinessLayer =
                new EmployeeBusinessLayer();
            employeeBusinessLayer.DeleteEmployee(id);
            return RedirectToAction("Index");
        }

    }
}