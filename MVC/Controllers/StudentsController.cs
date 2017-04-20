using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC.Models
{
    public class StudentsController : Controller
    {
        // Create an instance of DatabaseContext class
        sampleDBContextStudents db = new sampleDBContextStudents();

        public ActionResult Index()
        {
            return View();
        }

        // Return all students
        public PartialViewResult All()
        {
            System.Threading.Thread.Sleep(5000);
            List<Student> model = db.Students.ToList();
            return PartialView("_Student", model);
        }

        // Return Top3 students
        public PartialViewResult Top3()
        {
            List<Student> model = db.Students.OrderByDescending(x => x.TotalMarks).Take(3).ToList();
            return PartialView("_Student", model);
        }

        // Return Bottom3 students
        public PartialViewResult Bottom3()
        {
            List<Student> model = db.Students.OrderBy(x => x.TotalMarks).Take(3).ToList();
            return PartialView("_Student", model);
        }



        public ActionResult Index2()
        {
            sampleDBContextStudents db = new sampleDBContextStudents();
            return View(db.Students);
        }

        [HttpPost]
        public ActionResult Index2(string searchTerm)
        {
            sampleDBContextStudents db = new sampleDBContextStudents();
            List<Student> students;
            if (string.IsNullOrEmpty(searchTerm))
            {
                students = db.Students.ToList();
            }
            else
            {
                students = db.Students
                    .Where(s => s.Name.StartsWith(searchTerm)).ToList();
            }
            return View(students);
        }

        public JsonResult GetStudents(string term)
        {
            sampleDBContextStudents db = new sampleDBContextStudents();
            List<string> students = db.Students.Where(s => s.Name.StartsWith(term))
                .Select(x => x.Name).ToList();
            return Json(students, JsonRequestBehavior.AllowGet);
        }






















    }
}