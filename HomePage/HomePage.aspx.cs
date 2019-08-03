using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["emailid"]==null)
        {
            Response.Redirect("../LoginPage/Login.aspx");
        }
        else
        {
            ListUserSettings.Text = Session["emailid"].ToString();
        }
    }
    protected void Log_Out(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../Home/Home.aspx");
    }
    protected void Cart_Details(object sender,EventArgs e)
    {
        Response.Redirect("../CartPage/Cart.aspx");
    }

}