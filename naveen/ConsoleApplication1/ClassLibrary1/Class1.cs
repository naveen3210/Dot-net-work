using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    public class mammal
    {
        public int age { get; set; }
        public mammal (int age )
        {
            this.age = age;
        }
        public void sleep ()
        {
            Console.WriteLine("shh! iam sleeping");
        }
    }
}
