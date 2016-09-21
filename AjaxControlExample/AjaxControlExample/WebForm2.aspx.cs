using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxControlExample
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public void mymessage(string message)
        {
            this.RegisterStartupScript("client script", "<script>alert('"+message +"')</script>");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            mymessage("Welcome to message class");
        }
    }
}