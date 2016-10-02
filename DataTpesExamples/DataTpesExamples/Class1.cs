using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTpesExamples
{
    class Class1
    {

        public static void Main()
        {
            Console.WriteLine(" Enter Any Interger value : ");
            int a = int.Parse(Console.ReadLine()); // Convert.ToInt32(Console.ReadLine());

            Console.WriteLine(" Enter Any Double value : ");
            double b = double.Parse(Console.ReadLine()); // Convert.ToDouble(Console.ReadLine());

            Console.WriteLine(" Enter Any Character value : ");
            char c = Convert.ToChar(Console.ReadLine()); // char.Parse(Console.ReadLine());

            Console.Clear(); // This is used clear the screen
            Console.WriteLine(" Integer value : " + a);
            Console.WriteLine(" Double value : " + b);
            Console.WriteLine(" Character : " + c);
        }
    }
}
