using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ListClass
{
    class Program
    {
        static void Main(string[] args)
        {
            List<string> a = new List<string>();
            a.Add("Naveen");
            a.Add("Kumar");
            a.Add("Mahesh");
            a.Add("Suresh");
            Console.WriteLine("Display the value of for loop");
            for (int i = 0;i < a.Count; i ++)
            {
                Console.WriteLine(a[i].ToString());
                Console.ReadLine();
            }

        }
    }
}
