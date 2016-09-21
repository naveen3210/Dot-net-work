using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dictionary
{
    class Program
    {
        static void Main()
        {
            Dictionary<string, int> dictionary = new Dictionary<string, int>();
            dictionary.Add("Priya", 2);
            dictionary.Add("Neha", 1);
            dictionary.Add("Raju", 0);
            dictionary.Add("Suresh", -1);
            foreach (KeyValuePair<string, int> pair in dictionary )
            {
                Console .WriteLine (pair.Key.ToString() + "  -  " + pair.Value.ToString());
                Console.ReadLine();
            }
        }
    }
}