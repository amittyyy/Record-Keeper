using DataAccess_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Layer
{
    public class LoginBusineess
    {
        private string _userName = "";
        private string _password = "";

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        public string Password
        {
            get { return _password; }
            set { _password = value; }

        }

        DataAccessLogin DAO = new DataAccessLogin();
        public bool getUser()
        {
            if (DAO.IsValid(UserName, Password).Tables[0].Rows.Count == 0)
            {
                return false;
            }
            else
                return true;
            }

    }
}
