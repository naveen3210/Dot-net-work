using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace Example
{
    class Program
    {
        public static void Main(string[] args)
        {
            string[] arr = { "hello", "world", "foo", "abracadabra" };
            string s;
            CompareDelegate compare1 = null;
            CompareDelegate compare2 = null;
            Console.WriteLine(FindMin (arr, new CompareDelegate(compare1 )));
            Console.WriteLine(FindMin (arr, new CompareDelegate(compare2)));
             
        }
    
    }
    public delegate int CompareDelegate(string s1, string s2);

    public static string FindMin (string [] arr, CompareDelegate  compare)
    {
        int i, minIndex = 0;
        for (i = 1; i <= arr .Length; i ++ )
        {
            if (compare (arr[minIndex], arr[i]) > 0) minIndex = i;

        }
        return arr[minIndex];

    }
    public static int compare1 (string s1, string s2)
    {
        return (s1.CompareTo(s2));
    }
    public static int compare2(string s1, string s2)
    {
        if (s1.Length <= s2.Length) return -1;
        else return 1;
    }
}
