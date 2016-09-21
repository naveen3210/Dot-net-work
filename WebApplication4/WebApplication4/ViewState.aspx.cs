using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class ViewState : System.Web.UI.Page
    {
        static int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack )
            {
                if (ViewState["count"] != null)
                {
                    count = int.Parse(ViewState["count"].ToString()) + 1;
                    Label1.Text = count.ToString();
                    ViewState["count"] = count.ToString();
                }
                else
                    ViewState["count"] = 1;
                Label1.Text = ViewState["count"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            count = count + 1;
            Label1.Text = count.ToString();
        }
    }
}