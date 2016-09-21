using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterfaceExample
{
    class Program
    {
        static void Main(string[] args)
        {
            XYZ a = new XYZ();
            int SumValue = a.Add(3,5);
            Console.WriteLine(SumValue);
            Console.ReadLine();
        }
    }
   public class XYZ : InterfaceExample
    {
        int i = 0;
        int j = 0;

        public int Substract(int x, int y)
        {
            return x - y;  
        }

       public int Add (int i, int j)
        {
            return i + j;
        }
    }
}
