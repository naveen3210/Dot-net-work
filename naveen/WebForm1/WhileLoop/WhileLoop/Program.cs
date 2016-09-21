using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WhileLoop
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = 1;
            while (i < 11)
            {
                if (i == 5 && i < 11)
                {
                    i++;
                    continue;
                }
                Console.WriteLine(i);
                i++;

            }
            Console.ReadKey();
        }
    }
}
