namespace Example
{
    public class abc 
    {
        public static int compare1(string s1, string s2)
        {
            return (s1.CompareTo(s2));
        }
        public static int compare2(string s1, string s2)
        {
            if (s1.Length <= s2.Length) return -1;
            else return 1;
        }
    }
}