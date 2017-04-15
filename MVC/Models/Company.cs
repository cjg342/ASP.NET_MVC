using MVC.Models;
using System.Collections.Generic;
using System;
using System.Linq;

public class Company
{
    private string _name;
    public Company(string name)
    {
        this._name = name;
    }

    public List<product> products
    {
        get
        {
            DropDownExampleEntities db = new DropDownExampleEntities();
            return db.products.ToList();
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


