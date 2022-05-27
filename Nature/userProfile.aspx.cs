using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userProfile : System.Web.UI.Page
{
    string constr = WebConfigurationManager.ConnectionStrings["AdminLogin_db"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
    }

    protected void UpdateProfile_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["UserInfo"];
        string name = cookie["Name"];
        string query = "update Customer SET cust_name='" + FirstName.Text.Trim() + "',gender='" + Surname.Text.Trim() + "',cust_name='" + FirstName.Text.Trim() + "',cust_name='" + FirstName.Text.Trim() + "',cust_name='" + FirstName.Text.Trim() + "' WHERE cust_name='"+name.Trim()+"'";

     //string qurey = "UPDATE customer 
     // [cust_name]
     // ,[gender]
     // ,[age]
     // ,[mobile_no]
     // ,[email]
     // ,[address_id]
     // ,[password]
     // ,[order_id]
     // ,[address]
     // ,[country]
     // ,[state]
     // ,[city]
     // ,[pincode]
     //   FROM[Nature_project].[dbo].[customer]";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}