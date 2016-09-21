using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DateTimeExample
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime Now = DateTime.Now;
            int intHour = Now.Hour;
             Label1 .Text = "The time is now " + Now.ToString("T") + "";
            if (intHour < 12) { Label1.Text += "Good morning!"; }
            else if (intHour > 12 & intHour < 18) { Label1.Text += "Good afternoon!"; }
            else { Label1.Text += "Good evening!"; }

        }
    }
}