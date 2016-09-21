using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BoxingAndUnboxing
{
    class Program
    {
        static void Main()
        {
            int i = 3;
            int n = 67;
            object b = i;
            Console.WriteLine(i.ToString());
            Console.WriteLine(n .ToString());
            Console.ReadLine();
        }
        class Un
        {
            public static void method()
            {
                System.Collections.ArrayList list =
                     new System.Collections.ArrayList();  // list is a reference type 
                int n = 67;                              // n is a value type
                list.Add(n);                             // n is boxed
                n = (int)list[0];
                Console.WriteLine(n.ToString());
                Console.ReadLine();
            }
        }
    }
}
