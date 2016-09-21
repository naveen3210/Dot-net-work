using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirstDataAnnotations
{
    class Program
    {
        static void Main(string[] args)
        {
            NorthWind context = new NorthWind();

            var lstQryCustomer = (from cust in context.Customers.Include("Orders.Order_Details")
                                  where cust.CompanyName.StartsWith("S")
                                  select cust);


            foreach (var cust in lstQryCustomer)
            {
                Console.WriteLine("*** CUSTOMER NAME :" + cust.CompanyName);

                foreach (var ord in cust.Orders)
                {
                    Console.WriteLine(">" + ord.OrderID + " - " + ord.ShipCountry);

                    /* display order details

                    foreach (var ordDetails in ord.Order_Details)
                    {
                        Console.WriteLine(" " + ">" + ordDetails.Quantity + " - " + ordDetails.Order .ShipName );
                    }
                    
                    Console.WriteLine("");*/
                }
            }
        }
    }
}
