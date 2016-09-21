using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace practice
{
    class ExecuteRectangle
    {
        static void Main(string[] args)
        {
            Rectangle r = new Rectangle();
            r.Length = 4.5;
            r.Width  = 3.5;
            r.Display();
            Console.ReadLine();
        }
    }
    class Rectangle
    {
        // member variables
        public Double Length;
        public Double Width; 
        public Double GetArea()
        {
            return Length * Width;
        }
        public void Display()
        {
            Console.WriteLine("Length:{0}",Length );
            Console.WriteLine("Width:{0}", Width );
            Console.WriteLine("Area:{0}", GetArea());
        }

    }
}
