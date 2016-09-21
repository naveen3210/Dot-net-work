using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ternary
{
    class Program
    {
        static void Main(string[] args)
        {
            int num1, num2, min;
            string  No1, No2;
            Console.Write("Enter first numbers: ");
            No1 = Console.ReadLine();
            Console.Write("Enter second numbers: ");
            No2 = Console.ReadLine();
            num1 = Int32.Parse(No1);
            num2 = Int32.Parse(No2);
            min =Int32 .Parse ( (num1 < num2) ? No1 : No2);
            Console.Write("\nThe minimum of ");
            Console.Write(No1);
            Console.Write(" and ");
            Console.Write(No2);
            Console.Write(" is ");
            Console.WriteLine(min);
            Console.ReadKey();
        }
    }
}
