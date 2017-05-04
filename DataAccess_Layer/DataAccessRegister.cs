using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess_Layer
{
    public class DataAccessRegister 
    {
        string conString = ConfigurationManager.ConnectionStrings["Dbcon"].ToString();

       

        public int regCustomer (String fullName, String Email, String Phone, String Password, int Rid, String Address)
        {
            try
            {
                SqlConnection objCon = new SqlConnection(conString);
                objCon.Open();
                SqlCommand objCmd = new SqlCommand(
                "spa_Customer @flag = 'I', @Rid = '" + Rid + "', @CustomerName = '" + fullName + "', @Email = '" + Email + "', @Phone = '" + Phone + "', @Password = '" + Password + "', @Address = '" + Address + "'", objCon);
                var code = objCmd.ExecuteNonQuery();                
                return code;
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }     

        

    }
}
