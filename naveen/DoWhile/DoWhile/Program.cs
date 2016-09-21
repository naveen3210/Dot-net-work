using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoWhile
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = 1;
            do
            {
                //if (n % 2 == 0)
                //{
                //    n++;
                //    continue;
                //}
                
                Console.WriteLine(n);
                n++;
            }
            while (n < 11);
            Console.ReadLine();
       
        }
    }
}
