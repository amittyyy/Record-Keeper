using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(Session["userId"] == null)
        //{
        //    Response.Redirect("Login.aspx");
        //}     
    }


    protected void btnRecList_Click(object sender, EventArgs e)
    {
        Response.Redirect("Recorddetails_List.aspx");
    }
}