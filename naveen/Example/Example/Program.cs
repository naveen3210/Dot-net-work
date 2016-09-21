using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Example
{
    class Program
    {
        static void Main(string[] args)
        {
            int x = A.add(4, 5);
            Console.WriteLine( x );
            Console.ReadKey();
        }
    }
    public static  class A
    {
        public static int add (int i , int j)
        {
            return i + j;
        }
    }
}
