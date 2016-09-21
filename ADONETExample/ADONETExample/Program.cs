using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADONETExample
{
    class Program
    {
        static void Main(string[] args)
        {
            AdoNet.GetEmployeeUsingDataReader();

            List<Employee> lstEmps = AdoNet.GetEmployeeFromdb();
            Console.WriteLine(lstEmps.Count ());
        }
    }
}
