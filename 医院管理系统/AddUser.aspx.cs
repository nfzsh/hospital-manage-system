using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class AddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string sqltext = "insert into userinfo values('" + TextBox1.Text + "',N'" + TextBox2.Text +
          "',N'" + DropDownList1.SelectedValue + "',0" + ",'" + TextBox3.Text + "')";
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        int count = cmd.ExecuteNonQuery();
        if (count == 1)
            Response.Write("<script>alert('注册成功！')</script>");
        con.Close();
        con.Dispose();
        cmd = null;
        con = null;
        Response.Redirect("Default.aspx");
    }
}