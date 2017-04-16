using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC.Models
{
    public class Company
    {
        private string _name;
        public Company(string name)
        {
            this._name = name;
        }

        public List<Department> Departments
        {
            get
            {
                sampleDBContext db = new sampleDBContext();
                return db.Departments.ToList();
            }
        }
        
        public string CompanyName
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;
            }
        }
    }

}