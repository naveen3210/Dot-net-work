using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamplePractice
{
   public  class Program
    {
       public  static void Main()
        {
         int number1;
        int number2;
        int number3;
            int multliplication;
 
        System.Console.WriteLine("Enter 1st number");
        number1 = System.Convert.ToInt32(System.Console.ReadLine());
        System.Console.WriteLine("Enter 2nd number");
        number2 = System.Convert.ToInt32(System.Console.ReadLine());
        System.Console.WriteLine("Enter 3rd number");
        number3 = System.Convert.ToInt32(System.Console.ReadLine());
       multliplication  = number1 * number2 * number3;
        System.Console.WriteLine("Multiplication: {0} * {1} * {2} = {3}", number1 , number2 , number3 , multliplication );

            Console.ReadLine();
           
        }
    }
}
