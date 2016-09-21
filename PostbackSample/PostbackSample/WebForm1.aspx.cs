using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostbackSample
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool PostbackValue = Page.IsPostBack;
            if (Page .IsPostBack == false )
            {
                Label1.Text="This is not postback";
            }
            else
            {
                Label1.Text = "This is postback";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = Label1.Text  + " Button has been clicked";

        }
    }
}