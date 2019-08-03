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
public partial class LoginPage_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthDatabase"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login(object sender,EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * From Admin where EmailId='" + LoginTextEmailId.Text + "' and Password='" + LoginTextPassword.Text + "'";
        cmd.ExecuteNonQuery();
        if(cmd.ExecuteNonQuery()<=0)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["emailid"] = dr["EmailId"].ToString();
                Response.Redirect("../HomePage/HomePage.aspx");
            }
        }
        else
        {
            Response.Redirect("../LoginPage/Login.aspx");
        }
            
        con.Close();
    }
}