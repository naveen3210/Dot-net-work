using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace SampleProductExample
{
    public class ConnectionClass
    {
        public SqlConnection MyConnection()
        {
            string strconn = ConfigurationManager.ConnectionStrings["ProductConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strconn );
            return con;
        }
    }
}