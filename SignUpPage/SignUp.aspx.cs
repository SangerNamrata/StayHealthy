using System;   
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
public partial class SignUpPage_SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthDatabase"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private int GenerateAutoId()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Count(*) from [User]",con);
        var temp = cmd.ExecuteScalar().ToString();
        int i = Convert.ToInt32(temp);
        con.Close();
        i=i+1;
        return i;
    }
    protected void SignUp_Click(object sender, EventArgs e)
    {
        int CodeI;
        int id = GenerateAutoId();
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select CodeId from [NumberCode] where CountryCode='" + Code.SelectedItem + "'", con);
        using (SqlDataReader dr =  cmd1.ExecuteReader())
        {
            dr.Read();
            CodeI = Convert.ToInt32(dr[0]);
        }
        SqlCommand cmd = new SqlCommand("Insert into [User](UserId,FirstName,LastName,EmailId,Password,MobileNumber,Address,CodeIdd) values('"+Convert.ToInt32(id)+"','"+TextUserName.Text.ToString()+"','"+TextLastName.Text.ToString()+"','"+TextEMailId.Text.ToString()+ "','" + TextConfirmPassword.Text.ToString() + "','" + TextMobileNumber.Text+"','"+TextAddress.Text.ToString()+"','"+CodeI+"')",con);
        int value=cmd.ExecuteNonQuery();
        if(value==0)
        {
            Response.Redirect("../Home/Home.aspx");
        }
        else
        {
            Response.Redirect("SignUp.aspx");
        }
        con.Close();
    }
}  