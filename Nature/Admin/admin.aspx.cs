using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin : System.Web.UI.Page
{
    
    string constr = WebConfigurationManager.ConnectionStrings["AdminLogin_db"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constr);
        String query = "select [admin_fn], [admin_ln] from Admin";
        con.Open();
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        //cmd.ExecuteNonQuery();
        String user_name = " ",user_fn,user_ln;
        user_fn = dt.Rows[0][0].ToString();
        user_ln = dt.Rows[0][1].ToString();
        user_name = user_fn + " " + user_ln;
        //reader["admin_ln"].ToString();
        AdminName.Text = user_name;
        AdminName_1.Text = user_name;
        // Response.Write("<script>alert('" + user_name + "')</script>");
        // Response.Write("<script>alert('" + dt.Rows[0][0] + dt.Rows[0][1] + "')</script>");
        con.Close();
    }


    protected void Create_package_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(constr);
            String query = "INSERT INTO Package (pack_name, time_during, num_of_people, toure_guides, stay_station, difficulty, place, price) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
           // SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Package insert successfully !')</script>");
            Clear();
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('"+ex.Message+"')</script>");
        }        
    }
    public void Clear()
    {
        TextBox1.Text = "";
        DropDownList1.SelectedValue = DropDownList2.SelectedValue = "-";
        TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = "";
    }
}
