using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class AddSick : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(DateTime.Now.ToShortDateString());
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string sqltext = "insert into sick values('" + TextBox1.Text + "',N'" + TextBox2.Text +
          "',N'" + DropDownList1.SelectedValue + "',N'" + DropDownList2.SelectedValue + "',0,'" + DateTime.Now.ToShortDateString() + "',0" + ")";
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        int count = cmd.ExecuteNonQuery();
        if (count == 1)
            Response.Write("<script>alert('登记成功！')</script>");
        con.Close();
        con.Dispose();
        cmd = null;
        con = null;
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}