using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RepeaterASP_2.Model
{
    public class CustomerModel
    {
        private static List<Customer> mCustomers = null;

        public static List<Customer> Customers
        {
            get
            {
                if (mCustomers == null)
                {
                    mCustomers = new List<Customer>();
                    Customer tmpCustomer = new Customer();

                    tmpCustomer.mFirstName = "name1";
                    tmpCustomer.mLastName = "lname1";
                    tmpCustomer.mPhone = "phone1";
                    tmpCustomer.mEmail = "email1";
                    mCustomers.Add(tmpCustomer);

                    tmpCustomer.mFirstName = "name2";
                    tmpCustomer.mLastName = "lname2";
                    tmpCustomer.mPhone = "phone2";
                    tmpCustomer.mEmail = "email2";
                    mCustomers.Add(tmpCustomer);

                    tmpCustomer.mFirstName = "name3";
                    tmpCustomer.mLastName = "lname3";
                    tmpCustomer.mPhone = "phone3";
                    tmpCustomer.mEmail = "email3";
                    mCustomers.Add(tmpCustomer);
                }
                return mCustomers;
            }
        }
    }

    public struct Customer
    {
        public string mFirstName { get; set; }
        public string mLastName { get; set; }
        public string mPhone { get; set; }
        public string mEmail { get; set; }
    }
}