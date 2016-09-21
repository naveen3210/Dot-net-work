using Rectangle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rectangle
{
    class Shape 
    {
        public void setWidth(int w)
        {
            width = w;
        }
        public void setHeight(int h)
        {
            height = h;
        }
        protected int width;
        protected int height;
    }
    // Derived class
   class Rectangle : Shape
    {
        public int getArea();
        {
            return (new width* height);
    }
    }
   }
    static void Main (string() args)
        {
            Rectangle Rect = new Rectangle();
            Rect.setWidth(5);
            Rect,setHeight(7);
            Console.Writeline("Total area:{o}",Rect.getArea());
            console.Readkey();
         }
    }
}
