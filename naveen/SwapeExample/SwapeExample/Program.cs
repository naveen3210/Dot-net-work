using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SwapeExample
{
    class Program
    {
        public void swap<T>(T a,T b)
        {
            Console.WriteLine("Before swaping...");
            Console.WriteLine("................");
            Console.WriteLine("first value:" + a);
            Console.WriteLine("Second Value:" + b);
            T temp = a;
            a = b;
            b = temp;
            Console.WriteLine("After swaping...");
            Console.WriteLine("................");
            Console.WriteLine("first value:" +a);
            Console.WriteLine("Second Value:" +b);
        }
        static void Main(string[] args)
        {
            Program obj = new Program();
            obj.swap<int>(10, 20);
            obj.swap<double>(20.5, 89.6);
            Console.ReadKey();
        }
        
    }
}
