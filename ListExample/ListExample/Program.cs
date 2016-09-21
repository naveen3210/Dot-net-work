using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ListExample
{
    class Program
    {
        static void Main(string[] args)
        {
            List<int> list = new List<int>();
            list.Add(2);
            list.Add(3);
            list.Add(7);
            foreach (int prime in list)
            // Loop through List with foreach 
            {
                Console.WriteLine(prime);
               
            }
            Console.ReadLine();
            // for (int i = 0; i < list.Count; i++)
            // Loop through List with for 
            //{
            //    Console.WriteLine(list[i]);
            //    Console.ReadLine();
            //}
        }
    }
}
