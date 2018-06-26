using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string sqltext = "select * from userinfo where id='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<script>alert('登录成功！')</script>");
            Response.Redirect("Default.aspx");
        }
        else
            Response.Write("<script>alert('用户名或者密码错！！')</script>");
        dr.Close();
        con.Close();
        con.Dispose();
        cmd = null;
        con = null;
    }
}