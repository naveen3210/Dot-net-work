using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleEmployer
{
    class Program
    {
        static void Main(string[] args)
        {
            Employer Mounika = new Employer("Mounika",115427,27950,3);
            Console.WriteLine(Mounika.Name);
            Console.ReadLine();
            Console.WriteLine(Mounika.ID);
            Console.ReadLine();
            Console.WriteLine(Mounika.Salary);
            Console.ReadLine();
            Console.WriteLine(Mounika.Experience);
            Console.ReadKey();
        }
    }
    public class Employer 
    {
       public String Name;
       public int ID;
       public int Salary;
       public int Experience;
       public Employer(String Name, int ID, int Salary, int Experience)
        {
            this.Name = Name;
            this.ID = ID;
            this.Salary = Salary;
            this.Experience = Experience;
        }
    }
}
