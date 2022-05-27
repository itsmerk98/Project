using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Security.Cryptography;

public partial class Registration : System.Web.UI.Page
{
    //string constr = WebConfigurationManager.ConnectionStrings["AdminLogin_db"].ConnectionString;
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-DDAQO4G\\SQLEXPRESS;Initial Catalog=Nature_project;Integrated Security=True");

    

    //public string EncryptCode(string decrypted)
    //{
    //    string hash = "itsmerk98@12345";
    //    byte[] data = UTF8Encoding.UTF8.GetBytes(decrypted);
    //    MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
    //    TripleDESCryptoServiceProvider tripDES = new TripleDESCryptoServiceProvider();

    //    tripDES.Key = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
    //    tripDES.Mode = CipherMode.ECB;
    //    ICryptoTransform transform = tripDES.CreateEncryptor();
    //    byte[] result = transform.TransformFinalBlock(data, 0, data.Length);

    //    return Convert.ToBase64String(result);
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (TextBox4.Text == TextBox5.Text)
            {
                string PasswordString = EncrptyCode(TextBox4.Text.ToString());
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Insert into [dbo].[customer](cust_name, mobile_no, email, password) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + PasswordString.Trim() + "')";
                cmd.ExecuteNonQuery();
                Response.Redirect("~/login.aspx");
            }
            else
            {
                Response.Write("<script>alert('Plase check your conform password !')</script>");
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
        finally
        {
            con.Close();
        }
        
        //clear();
    }
    //protected void TextBox4_TextChanged(object sender, EventArgs e)
    //{
    //    TextBox4.Text = Encrpty(TextBox4.Text);
    //    TextBox5.Text = Encrpty(TextBox5.Text);
    //}
    void clear()
    {
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
    }
    public string EncrptyCode(string source)
    {
        using (var md5Hash = MD5.Create())
        {
            var sourceBytes = Encoding.UTF8.GetBytes(source);
            var hashBytes = md5Hash.ComputeHash(sourceBytes);
            var hash = BitConverter.ToString(hashBytes).Replace("-", string.Empty);
            return hash;
        }
    }
}









//protected string GetMd5(string test)
//{
//    MD5 md5_op = new MD5CryptoServiceProvider();
//    //byte[] bytes = md5_op.ComputeHash(Encoding.Unicode.GetBytes(test));
//    byte[] bytes = md5_op.ComputeHash(Encoding.UTF8.GetBytes(test));
//    string result = BitConverter.ToString(bytes).Replace("-", string.Empty);

//    return result.ToLower();
//}



//static string Encrpty(string value)
//{
//    using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
//    {
//        UTF8Encoding utf8 = new UTF8Encoding();
//        byte[] data = md5.ComputeHash(utf8.GetBytes(value));
//        return Convert.ToBase64String(data);

//    }
//}