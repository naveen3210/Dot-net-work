﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArrayListExample
{
   public  class Program
    {
       public static void Main()
        {
            // Creates and initializes a new ArrayList. 
            ArrayList myAL = new ArrayList();
            myAL.Add("Hello");
            myAL.Add("World");
            myAL.Add("!");
            // Displays the properties and values of the ArrayList. 
            Console.WriteLine("myAL");
            Console.WriteLine(" Count: {0}", myAL.Count);
            Console.Write(" Values:");
            PrintValues(myAL);

        }
        public static void PrintValues(IEnumerable myList)
        {
            foreach (Object obj in myList)
                Console.Write(" {0}", obj);
            Console.WriteLine();
            Console.ReadLine();
        }

    }
}
