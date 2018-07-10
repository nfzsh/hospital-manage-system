using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Charge : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button6_Click1(object sender, EventArgs e)
    {
        string sqltext = "update sick set mark = 1 where id = " + DropDownList1.SelectedValue;
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        int count = cmd.ExecuteNonQuery();
        if (count == 1)
            Response.Write("<script>alert('缴费成功！')</script>");
        con.Close();
        con.Dispose();
        cmd = null;
        con = null;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sqltext = "select price from View1 where sid = " + DropDownList1.SelectedValue.ToString();
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        SqlDataReader dr = cmd.ExecuteReader();
        float price = 0;
        if (dr.Read())
        {
            price = float.Parse(dr["price"].ToString());
            Label1.Text = price.ToString();
        }
        else
            Label1.Text = "0";
        dr.Close();
        con.Close();
        con.Dispose();
        cmd = null;
        con = null;
    }
}