using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

namespace Number
{
    class Program
    {
        static void Main()
        {
            string s = Console.ReadLine();
            int j = Int32 .Parse(s);
            int[] arr = new int[j ];



            for (int i = 0; i < j; i++)
            {
                //for (int k = 0; k <j; k++)
               // {
                    arr[i] = i;
                    Console.WriteLine(arr[i]);
                //}
            }
            Console.ReadLine();
        }
    }
}
