using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = GetData();

            HttpCookie cookie = Request.Cookies["UserInfo"];
            if(cookie==null)    //Session["role"]==null && 
            {
                SignUp.Visible = true;
                Login.Visible = true;

                CustomerName.Visible = false;

                //SignUp.Visible = false;
                //Login.Visible = false;

                //CustomerName.Visible = true;
                //CustomerName.Text = "Hello   " + Session["username"].ToString();
            }
            else if(cookie != null)             //Session["role"].Equals("user") && 
            {
            //    //SignUp.Visible = true;
            //    //Login.Visible = true;

            //    //CustomerName.Visible = false;

                SignUp.Visible = false;
                Login.Visible = false;

                CustomerName.Visible = true;
                CustomerName.Text = "Hello   " + cookie["Name"].ToString();
                UN.Text = cookie["Name"];
                //UN.Text = Session["username"].ToString();
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script>alter('" + ex.Message + "');</script>");
        }
    }
    private DataSet GetData()
    {
        string cs = "Data Source=DESKTOP-DDAQO4G\\SQLEXPRESS;Initial Catalog=Nature_project;Integrated Security=True";
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from customer", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = null;
        Response.Cookies.Add(cookie);
    }
}