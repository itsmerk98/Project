using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class adminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdminName.Focus();
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        string constr = WebConfigurationManager.ConnectionStrings["AdminLogin_db"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);

        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin where admin_user_name='" + AdminName.Text.Trim() + "' AND password='" + AdminPass.Text.Trim() + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while(dr.Read()){
                    Response.Redirect("~/Admin/admin.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invailid username and password ! ')</script>");
            }


            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //cmd.ExecuteNonQuery();
            //if (dt.Rows[0][0].ToString()=="1")
            //{
            //    //Response.Write("<script>alert('Successful in login ')</script>");
            //    Response.Redirect("~/Admin/admin.aspx");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Invailid username and password ! ')</script>");
            //   // Response.Redirect("~/Admin/admin.aspx");
            //}

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Invailid username and password ! ')</script>");
            //Response.Write(ex.Message);
        }
    }
}