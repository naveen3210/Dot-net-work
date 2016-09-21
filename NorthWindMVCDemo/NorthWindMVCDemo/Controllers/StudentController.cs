using NorthWindMVCDemo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NorthWindMVCDemo.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Details(int id)
        {
            //imagine a db operation 
            //Student st = new Student
            //{ StudentId = id,
            //  Firstname = "FN" + id.ToString(),
            //  Lastname = "LN" + id.ToString()
            //};
            //pickup the view with the same name as action method(Details.cshtml)
            return View();
        }

        public string Test()
        {
            return "hello";
        }
    }
}