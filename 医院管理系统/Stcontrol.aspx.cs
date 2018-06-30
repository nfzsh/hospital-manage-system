using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Stcontrol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            Response.Write("<script>alert('修改成功！')</script>");
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string sqltext1 = "update medic set price = " + TextBox2.Text + "where id = " + DropDownList1.SelectedValue;
        string sqltext2 = "delete from medic where id = " + DropDownList1.SelectedValue;
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        if (TextBox2.Text == "")
        {
            SqlCommand cmd = new SqlCommand(sqltext2, con);
            int count = cmd.ExecuteNonQuery();
            //if (count == 1)
                //Response.Write("<script>alert('删除成功！')</script>");
        }
        else
        {
            SqlCommand cmd = new SqlCommand(sqltext1, con);
            int count = cmd.ExecuteNonQuery();
            //if (count == 1)
                //Response.Write("<script>alert('修改成功！')</script>");
        }
        //Response.Redirect("Stcontrol.aspx");
        con.Close();
        con.Dispose();
    }
}