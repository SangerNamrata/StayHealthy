using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Fruits_Fruits : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["emailid"] == null)
        {
            Response.Redirect("../LoginPage/Login.aspx");
        }
        else
        {
            ListUserSettings.Text = Session["emailid"].ToString();
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
        }
    }
    protected void Log_Out(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../Home/Home.aspx");
    }
    protected void Cart_Details(object sender, EventArgs e)
    {
        Response.Redirect("../CartPage/Cart.aspx");
    }
    protected void DataList_ItemCommand(object source,DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {

            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("../CartPage/Cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }
    }
}