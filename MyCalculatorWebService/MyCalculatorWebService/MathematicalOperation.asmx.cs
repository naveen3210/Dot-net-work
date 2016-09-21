using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MyCalculatorWebService
{
    /// <summary>
    /// Summary description for MathematicalOperation
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class MathematicalOperation : System.Web.Services.WebService
    {

        [WebMethod]
        public int add (int x, int y)
            {
            return x + y;
            }

        [WebMethod]
        public int sub (int x, int y)
        {
            return x - y;
        }

        [WebMethod]
        public int mul (int x, int y)
        {
            return x * y;
        }

        [WebMethod]
        public int div (int x, int y)
        {
            return x / y;
        }

        [WebMethod]
        public int rem (int x, int y)
        {
            return x % y;
        }
    }
}
