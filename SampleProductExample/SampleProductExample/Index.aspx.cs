using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SampleProductExample
{
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataAdapter da = null;

        ConnectionClass conobj = new ConnectionClass();

        public void Mymessage(string message)
        {
            this.RegisterStartupScript("Client Script", "<script> alert('" + message  + "')</script>");

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = conobj.MyConnection();
            con.Open ();

            string query = " insert into Product_tbl values(@prm_Pno,@prm_Pname, @prm_Prate)";
            cmd = new SqlCommand( query ,con);
            cmd.Parameters.Add("prm_Pno",TextBox_Pno.Text);
            cmd.Parameters.Add("@prm_Pname",TextBox_Pname .Text );
            cmd.Parameters.Add("@prm_Prate",TextBox_Prate.Text );
            cmd.ExecuteNonQuery();

            con.Close();
            Mymessage(" Product Details entered sucessfully..");

         
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            con = conobj.MyConnection();
            con.Open();

            string query = "select * from Product_tbl";
            cmd = new SqlCommand(query, con);
            da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Products");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox_Pno.Text = "";
            TextBox_Pname.Text = "";
            TextBox_Prate.Text = "";
            TextBox_Pno.Focus();
        }
    }
}