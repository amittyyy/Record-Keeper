using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DataAccess_Layer
{
    public class DataAccessLogin
    {
        string conString = ConfigurationManager.ConnectionStrings["Dbcon"].ToString();

        public DataSet IsValid(String UserName, String Password)
        {
            SqlConnection objCon = new SqlConnection(conString);
            objCon.Open();
            SqlCommand objCmd = new SqlCommand(" spa_Customer @flag = 'V', @Email = '"+UserName+"', @Password = '"+Password+"'", objCon);
            DataSet objDs = new DataSet();
            SqlDataAdapter objSda = new SqlDataAdapter(objCmd);
            objSda.Fill(objDs);
            return objDs;
        }
            

    }
}
