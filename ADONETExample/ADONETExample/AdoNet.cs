using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADONETExample
{
    public class AdoNet
    {
        public static string strConnectionString = "Data Source=.;Initial Catalog=NorthWind;Integrated Security=True";

        public static void GetEmployeeUsingDataReader()
        {
            SqlConnection conn = new SqlConnection(strConnectionString);
            string strQuery = "SELECT * FROM EMPLOYEES";

            SqlCommand cmd = new SqlCommand(strQuery, conn);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            while(reader.Read())
            {
                Console.WriteLine(reader["FirstName"]);
            }
            conn.Close();
        }

       static  public List<Employee> GetEmployeeFromdb()
        {
            SqlConnection conn = new SqlConnection(strConnectionString);
            string strQuery = "SELECT * FROM EMPLOYEES";

            SqlCommand cmd = new SqlCommand(strQuery, conn);

            List<Employee> lstEmployees = new List<Employee>();

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Employee objEmp = new Employee
                {
                    FirstName = reader["FIrstName"].ToString(),
                    LastName = reader["LastName"].ToString(),
                    EmployeeId = Convert.ToInt32(reader["EmployeeId"]),
                    city = reader["City"].ToString()
                };

                lstEmployees.Add(objEmp);
            }
            conn.Close();

            return lstEmployees;
        }  
    }
}
