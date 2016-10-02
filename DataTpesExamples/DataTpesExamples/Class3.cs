using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTpesExamples
{
    class Class3
    {
        public static void Dateformates()
        {
            Console.WriteLine(" Date : " + DateTime.Now);
            Console.WriteLine(" Long foramt : " + DateTime.Now.ToLongDateString());
            Console.WriteLine(" Short Format : " + DateTime.Now.ToShortDateString());
            Console.WriteLine(" Add Days : " + DateTime.Now.AddDays(5));
            Console.WriteLine(" Less Days : " + DateTime.Now.AddDays(-5));

        }

        public static void Timeformates()
        {
            Console.WriteLine(" Time : " + DateTime.Now.ToLocalTime());
            Console.WriteLine(" Long foramt : " + DateTime.Now.ToLongTimeString());
            Console.WriteLine(" Short Format : " + DateTime.Now.ToShortTimeString());
            Console.WriteLine(" Add hours : " + DateTime.Now.AddHours(6));
            Console.WriteLine(" less hours : " + DateTime.Now.AddHours(-6));
        }

        public static void Main()
        {
            Dateformates();
            Timeformates();
        }
    }
}
