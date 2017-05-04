using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess_Layer;

namespace Business_Layer
{
    public class BusinessRegister
    {
        private string _fullName = "";
        private string _Email = "";
        private string _Phone = "";
        private string _Address = "";
        private string _Password = "";
        private int _customerType = 0;

        public string FullName
        {
            get { return _fullName; }
            set { _fullName = value; }
        }

        public string Email
        {
            get
            {
                return _Email;
            }

            set
            {
                _Email = value;
            }
        }

        public string Phone
        {
            get
            {
                return _Phone;
            }

            set
            {
                _Phone = value;
            }
        }

        public string Address
        {
            get
            {
                return _Address;
            }

            set
            {
                _Address = value;
            }
        }


        public string Password
        {
            get
            {
                return _Password;
            }

            set
            {
                _Password = value;
            }
        }

        public int CustomerType
        {
            get
            {
                return _customerType;
            }

            set
            {
                _customerType = value;
            }
        }


        public bool CheckRegister()
        {
            try
            {
                // Implementation of Using statement
                DataAccessRegister DAR = new DataAccessRegister();
                
                    if (DAR.regCustomer(FullName, Email, Phone, Address, CustomerType, Password) == 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}
