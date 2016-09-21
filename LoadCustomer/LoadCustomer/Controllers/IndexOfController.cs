using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LoadCustomer.Models;


namespace LoadCustomer.Controllers
{
    public class IndexOfController : Controller
    {
        // GET: Index
        public ActionResult Index()
        {
            Customer ObjCustomer = new Customer();
            ObjCustomer.id = 23;
            ObjCustomer.CutomerCode = "CXD";
            ObjCustomer.Amount = 256.35;
            return View(ObjCustomer );
        }
    }
}