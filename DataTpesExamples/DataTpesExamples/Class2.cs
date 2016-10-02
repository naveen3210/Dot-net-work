using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTpesExamples
{
    class Class2
    {
        public void DisplayNonStatic()
        {
            Console.WriteLine("This is non static function");
        }

        public static void DisplayStatic()
        {
            Console.WriteLine("This is static function");
        }

        public static void Main()
        {
            Class2 obj = new Class2();
            obj.DisplayNonStatic(); // This is non static function access


            DisplayStatic(); // this is static function access

        }
    }
}
