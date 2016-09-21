using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BoxingAndUnboxing
{
    class Class1
    {
      static void main()
        {
            System.Collections.ArrayList list =
            new System.Collections.ArrayList();  // list is a reference type 
            int n = 67;                              // n is a value type
            list.Add(n);                             // n is boxed
            n = (int)list[0];
            Console.WriteLine(n.ToString ());
            Console.ReadLine();
       
        }
    }
}
