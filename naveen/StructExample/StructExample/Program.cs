using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StructExample
{
    class Program
    {
        static void Main(string[] args)
        {
            Employee emp = new Employee();
            emp.EmployeeId = 15789;
            emp.EmployeeName= "Naveen";
            Console.WriteLine(emp .EmployeeId + " " + emp .EmployeeName);
            Console.ReadKey();

            Student st;
            st.StudentId = 1535;
            st.StudentName = "Mahesh";
            Console.WriteLine(st.StudentId  + " " + st .StudentName );
            Console.ReadKey();



        }
    }
    class Employee
    {
        public int EmployeeId;
        public String EmployeeName;
    }
    struct Student
    {
        public int StudentId;
        public string StudentName; 
    }
}
