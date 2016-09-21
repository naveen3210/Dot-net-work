using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            NorthWindEntities context = new NorthWindEntities();

            var lstQryCustomer = (from cust in context.Customers.Include ("Orders.Order_Details" )
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
            ////Insert
            //Customer custInsert = new Customer
            //{
            //    CompanyName = "ZZ Company",
            //    CustomerID = "ZZ",
            //    City = "Monaco",
            //    Country = "Europe"
            //};

            ////custInsert.Orders.Add(new Order { OrderDate = DateTime .Now, ShipCity ="Paris", ShipCountry ="France" });
            ////custInsert.Orders.Add(new Order { OrderDate = DateTime.Now, ShipCity = "Madrid", ShipCountry = "Spain" });
            //context.Customers.Add(custInsert);

            //// update
            //Customer custupdate = (from cust in context.Customers
            //                      where cust.CustomerID == "1236"
            //                      select cust).First ();
            //custupdate.City = "Peru";
            //custupdate.Country = "South America";
            //custupdate.ContactName = "Rahul";

            //         context.SaveChanges();
            //        }
        }

    }
}
