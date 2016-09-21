using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculator
{
    class Program
    {
        static void Main(string[] args)
        {
            int Number1, Number2, result;
            char option;
            Console.Write("Enter the First Number : ");
            Number1 = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter the Second Number : ");
            Number2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Main Menu");
            Console.WriteLine("1. Addition");
            Console.WriteLine("2. Subtraction");
            Console.WriteLine("3. Multiplication");
            Console.WriteLine("4. Division");
            Console.Write("Enter the Operation you want to perform : ");
            result = Convert.ToChar(Console.ReadLine());
            if (result )
            {
                {
                    case '1':
                    result = Number1 + Number2;
                    Console.WriteLine("The result of Addition is : {0}", result);
                }
                    else 
                {
                    case '2':
                    result = Number1 - Number2;
                    Console.WriteLine("The result of Subtraction is : {0}", result);
                }
                    else  
                {
                    case 3;
                    result = Number1 * Number2;
                    Console.WriteLine("The result of Multiplication is : {0}", result);
                }
                else 
                {
                    case '4':
                    result = Number1 / Number2;
                    Console.WriteLine("The result of Division is : {0}", result);
                }
                else 
                {
                    default:
                    Console.WriteLine("Invalid Option");
                }
            }
            Console.ReadLine();
        }
    }
}
