using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC.Models
{
    public class Company2
    {
        public string SelectedDepartment { get; set; }
        public List<Department> Departments
        {
            get
            {
                sampleDBContext db = new sampleDBContext();
                return db.Departments.ToList();
            }
        }
    }
}