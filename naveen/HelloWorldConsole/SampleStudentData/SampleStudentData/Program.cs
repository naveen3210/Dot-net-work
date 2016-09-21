using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleStudentData
{
    class Program
    {
        static void Main(string[] args)
        {
            student naveen = new student("naveen",27,150,180);
            Console.WriteLine(naveen.Name);
            Console.ReadKey();
            Console.WriteLine(naveen.RollNo);
            Console.ReadKey();
            Console.WriteLine(naveen.Sub1);
            Console.ReadKey();
            Console.WriteLine(naveen.Sub2);
            Console.ReadKey();
        }
    }
   public class student
    {
      public String Name;
      public int RollNo;
      public int Sub1;
      public int Sub2;
        public student(string StudentName, int StudentRollNo, int StudentSub1, int StudentSub2)
        {
            this.Name = StudentName;
            this.RollNo = StudentRollNo;
            this.Sub1 = StudentSub1;
            this.Sub2 = StudentSub2;
        }        
    }
}
