using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string sqltext = "select price from medic where id='" + DropDownList2.SelectedValue + "'";
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        SqlDataReader dr = cmd.ExecuteReader();
        float price = 0;
        if (dr.Read())
        {
            price = float.Parse(dr["price"].ToString().Trim());
        }
        price *= int.Parse(TextBox1.Text);
        sqltext = "insert into list values(" + DropDownList1.SelectedValue + "," + (int)Session["id"] +
          "," + DropDownList2.SelectedValue + ",'" + TextBox1.Text + "'," + price + ")";
        con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd1 = new SqlCommand(sqltext, con);
        int count = cmd1.ExecuteNonQuery();
        if (count == 1)
            Response.Write("<script>alert('处方添加成功！')</script>");
        con.Close();
        con.Dispose();
        cmd1 = null;
        con = null;
        if (CheckBox1.Checked)
        {
            sqltext = "update sick set flag = 1 where id = " + DropDownList1.SelectedValue;
            con = new SqlConnection(strConn);
            con.Open();
            SqlCommand cmd2 = new SqlCommand(sqltext, con);
            count = cmd2.ExecuteNonQuery();
            con.Close();
            con.Dispose();
            cmd2 = null;
            con = null;
        }
            TextBox1.Text = "";
    }
}