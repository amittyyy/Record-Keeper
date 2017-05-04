using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Layer;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        BusinessRegister BAR = new BusinessRegister();
        BAR.FullName = txtName.Text;
        BAR.Email = txtEmail.Text;
        BAR.Address = txtAddress.Text;
        BAR.Phone = txtPhone.Text;
        BAR.Password = txtPassword.Text;
        BAR.CustomerType = Convert.ToInt32(lstCustomerType.Text);

        if (BAR.CheckRegister())
        {
            Session["userId"] = BAR.Email;
            Response.Redirect("MainPage.aspx");
        }
        else
        {
            lblError.Text = "UserName or Password is incorrect !!!";
        }
    }


    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
        Response.Write("amity tes there");
    }

}