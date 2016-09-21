using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace HashTableExample
{
    class Program
    {
        static void Main(string[] args)
        {
            Hashtable HT = new Hashtable();
            HT.Add(1, "s");
            HT.Add(3, "n");
            HT.Add(4, "j");
            HT.Add(2, "a");
            HT.Add(5, "u");
            foreach (object i in HT.Keys)
                Console.WriteLine(i);
            foreach (object j in HT.Values)
                Console.WriteLine(j);
            foreach (DictionaryEntry  di  in HT)
            Console.WriteLine("key={0} value={1}", di.Key, di.Value);
            Console.ReadKey();
         // Console.Clear();
    }
        //public virtual void clear();
        //{
        
        //}
    }
}
