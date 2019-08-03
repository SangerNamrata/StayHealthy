using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class YourProfile_UserProfile : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\SEM-4\\WT\\ProjectStayHealthy\\StayHealthy\templates.aucreative.co\\Project\\App_Data\\StayHealthyDatabase.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select CountryCode From MobileCountryCode", con);
            cmd.CommandType = CommandType.Text;
            Code.DataSource=cmd.ExecuteReader();
            Code.DataValueField = "CountryCode";
            Code.DataTextField = "CountryCode";
            Code.DataBind();
            Code.Items.Insert(0,new ListItem("Select a country code","0"));
            con.Close();
    }
}