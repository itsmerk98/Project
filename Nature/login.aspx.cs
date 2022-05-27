using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;


public partial class LoginPage : System.Web.UI.Page
{
    string constr = WebConfigurationManager.ConnectionStrings["AdminLogin_db"].ConnectionString;
    //static string Encrpty(string value)
    //{
    //    using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
    //    {
    //        UTF8Encoding utf8 = new UTF8Encoding();
    //        byte[] data = md5.ComputeHash(utf8.GetBytes(value));
    //        return Convert.ToBase64String(data);
    //    }
    //}

    protected string GetMd5(string test)
    {
        MD5 md5_op = new MD5CryptoServiceProvider();
        //byte[] bytes = md5_op.ComputeHash(Encoding.Unicode.GetBytes(test));
        byte[] bytes = md5_op.ComputeHash(Encoding.UTF8.GetBytes(test));
        string result = BitConverter.ToString(bytes).Replace("-", string.Empty);

        return result.ToLower();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Cust_name.Focus();
        if (!IsPostBack)
        {
            
        }
        else
        {
            clear();
        }
    }
    protected void SignInBtn_Click(object sender, EventArgs e)
    {
        string PasswordString = EncrptyCode(Password.Text.ToString());

        SqlConnection con = new SqlConnection(constr);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Nature_project].[dbo].[customer] WHERE [cust_name]='" + Cust_name.Text.Trim()+ "' AND [password]='" + EncrptyCode(Password.Text.ToString()) + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    HttpCookie cookie = new HttpCookie("UserInfo");
                    cookie["Name"] = dr.GetValue(1).ToString();
                    cookie["Password"] = dr.GetValue(7).ToString();
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);
                }
                Response.Redirect("~/index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invailid username and password !  "+PasswordString+" ')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ ex.Message + " ! ')</script>");
        }
    }
    protected void Back_btn_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = null;
    
    }
    void clear()
    {
        Cust_name.Text = Password.Text = null;
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
    public string DecryptCode(string encrypted)
    {
        string hash = "itsmerk98@12345";
        byte[] data = Convert.FromBase64String(encrypted);
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        TripleDESCryptoServiceProvider tripDES = new TripleDESCryptoServiceProvider();

        tripDES.Key = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
        tripDES.Mode = CipherMode.ECB;
        ICryptoTransform transform = tripDES.CreateDecryptor();
        byte[] result = transform.TransformFinalBlock(data, 0, data.Length);

        return UTF8Encoding.UTF8.GetString(result);
    }
}





//SqlDataAdapter sda = new SqlDataAdapter(cmd);
//DataTable dt = new DataTable();
//sda.Fill(dt);
//cmd.ExecuteNonQuery();

//if (dt.Rows[0][0].ToString() == "2")
//{
//    //Response.Write("<script>alert('Successful in login ')</script>");
//    Response.Redirect("~/index.aspx");
//}
//else
//{
//    Response.Write("<script>alert('Invailid username and password ! ')</script>");
//    // Response.Redirect("~/Admin/admin.aspx");
//}




//cookie["Name"] = null;
//cookie["Password"] = null;
//Response.Cookies.Add(cookie);






//public void cookiesMethod()
//{
//    HttpCookie cookie = new HttpCookie("UserInfo");
//    cookie["Name"] = Cust_name.Text.Trim();
//    cookie["Password"] = Password.Text.Trim();
//    Response.Cookies.Add(cookie);
//}



//string passwordstr = (string)(Password.Text.Trim());
//string PasswordString = Encrpty(passwordstr);


//string p1 = WebConfigurationManager.ConnectionStrings["paper"].ConnectionString;

//string test = Password.Text;
//string p1 = WebConfigurationManager.ConnectionStrings["paper"].ConnectionString;
//string PasswordString = GetMd5(p1 + test);