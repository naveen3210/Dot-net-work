using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTpesExamples
{
    class ObjectClass
    {
        public void boxing()
        {
            // convert the value type into object type

            int a = 100;
            object b = a;

            Console.WriteLine(" Boxing  type : " + b);

        }


        public void Unboxing()
        {
            // convert the object type into value type

            object a = 100;

            int n =(int)a;

            Console.WriteLine(" Un Boxing  type : " + n);

        }

        public void dynamicExample()
        {

            dynamic d = 100;
            int a = d;
            Console.WriteLine(" Integer value : " + d);

            d = 12.5;
            Console.WriteLine(" Double value : " + d);


            d = 'k';
            Console.WriteLine(" Character value : " + d);

            d = "hai";
            Console.WriteLine(" String value : " + d);

        }


        public static void Main()
        {

            ObjectClass obj = new ObjectClass();

            obj.boxing();
            obj.Unboxing();
            obj.dynamicExample();
        }


    }

}
