using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterfaceExample2
{
    class Program
    {
        static void Main(string[] args)
        {
            ABC X = new ABC();
            int ABC  = X.Add(15042,68956);
            Console.WriteLine(ABC);
            Console.ReadLine();
        }
    }
    class ABC : InterfaceExample2
    {
        public int Multiplication(int u, int v)
        {
            return u * v;
        }

        public int Add (int a, int b)
        {
            int c = 0; 
            c = a + b;
            return c ;
        }
    }
}
