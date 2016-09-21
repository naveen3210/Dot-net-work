using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class CookiesExample : System.Web.UI.Page
    {
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["mycycount"] != null)
            {
                count = 1 + int.Parse(Request.Cookies["mycycount"].Value.ToString());
                Label1 .Text = count.ToString();
                Response.Cookies["mycycount"].Value = count.ToString();
            }
            else
            {
                count = 1;
                HttpCookie mycount = new HttpCookie("mycycount");
                mycount.Value = count.ToString();
                Label1 .Text = mycount.Value;
                Response.SetCookie(mycount);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}