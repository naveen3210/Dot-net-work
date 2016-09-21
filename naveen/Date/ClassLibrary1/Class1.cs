using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    public class Class1
    {
        public static void Main()
        {
            DateFormat();
            TimeFormat();
        }
        public static void DateFormat()
        {
            Console.WriteLine("Date:" + DateTime.Now);
            Console.WriteLine("LongFormat:" + DateTime.Now.ToLongDateString());
            Console.WriteLine("ShortFormat:" + DateTime.Now.ToShortDateString());
            Console.ReadLine();
        }

        public static void TimeFormat()
        {
            Console.WriteLine("Time:" + DateTime.Now.ToLocalTime());
            Console.WriteLine("LongFormat:" + DateTime.Now.ToLongTimeString());
            Console.ReadLine();

        }
    }
}
