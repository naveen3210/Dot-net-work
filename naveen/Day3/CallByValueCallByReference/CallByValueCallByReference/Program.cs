using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace CallByValueCallByReference
{
    class Program
    {
        static void Main(string[] args)
        {
            // Pass reference type by value
            ArrayList arrayList = new ArrayList() { 0, 1, 2, 3 };
            Console.WriteLine("Pass by Value");
            PassByValue(arrayList);
            // What should be the output of below line ??
            Console.WriteLine(arrayList[1]);
            arrayList = new ArrayList() { 0, 1, 2, 3 };
            //    Console .WriteLine ("pass by reference");
        //    PassByReference (ref arrayList );
        //    // what should be the output of below line ??
        //    Console .WriteLine (arrayList [1]);
        //    Console .Read ();
        //}
        private static void PassByValue(ArrayList arrayList)
        {
            Console.WriteLine(arrayList[1]);
            // Now Change the first position value
            arrayList[1] = 90;
            arrayList = new ArrayList() { 101, 102, 103, 104 };
            Console.WriteLine(arrayList[1]);
        }
        private static void PassByReference(ref ArrayList arrayList)
        {
            Console.WriteLine(arrayList[1]);
            // Now Change the first position value
            arrayList[1] = 90;
            arrayList = new ArrayList() { 101, 102, 103, 104 };
            Console.WriteLine(arrayList[1]);
        }
    }
}
