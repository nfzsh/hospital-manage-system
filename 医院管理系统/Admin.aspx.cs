using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqltext = "select * from userinfo where flag = 0";
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Button2.Visible = true;
            Label1.Visible = false;
        }
        else
        {
            Button2.Visible = false;
            Label1.Visible = true;
        }
        dr.Close();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                string sqltext = "update userinfo set flag = 1 where id = " + CheckBoxList1.Items[i];
                SqlCommand cmd = new SqlCommand(sqltext, con);
                cmd.ExecuteNonQuery();
                cmd = null;
            }
        }
        Response.Write("<script>alert('修改成功！')</script>");
        Response.Redirect("Admin.aspx");
        con.Close();
        con.Dispose();
        con = null;

    }
}