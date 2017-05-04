using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Layer;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
            if(Session["userId"] != null)
            {
                Session.Clear();
                Session.RemoveAll();
           
            }
        
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {      
        LoginBusineess BLO = new LoginBusineess();
        BLO.UserName = txtuserName.Text;
        BLO.Password = txtPassword.Text;

        if (BLO.getUser())
        {
            Session["userId"] = BLO.UserName;
            Response.Redirect("MainPage.aspx");            
        }
        else
        {
            lblError.Text = "UserName or Password is incorrect !!!";
        }
    }
}