using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Stock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqltext = "select date,sdate from medic";
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        SqlDataReader dr = cmd.ExecuteReader();
        int count =0;
        int count1 = 0;
            while (dr.Read())
            {
                //for (int i = 0; i < dr.FieldCount; i++) 
                //{
                    //Response.Write( dr["id"].ToString());
                DateTime date = DateTime.Parse(dr["date"].ToString());
                    date.AddYears(int.Parse(dr["sdate"].ToString()));
            if (date.CompareTo(DateTime.Now) > 0)
                count++;
            if (date.AddMonths(1).CompareTo(DateTime.Now) > 0)
                count1++;
                //}
            }
        if (count != 0)
        { Response.Write("<script>alert('有" + count.ToString() + "种药品已过期！')</script>"); }
        if (count1 != 0)
        { Response.Write("<script>alert('有" + count1.ToString() + "种药品即将过期！')</script>"); }
        dr.Close();
        con.Close();
        con.Dispose();
        cmd = null;
        con = null;

    }

    void Clear()
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
        TextBox4.Text = null;
        TextBox5.Text = null;
        TextBox6.Text = null;
        TextBox7.Text = null;
        TextBox8.Text = null;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox7.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string sqltext = "insert into medic values('" + TextBox1.Text + "',N'" + TextBox2.Text +
            "',N'" + TextBox3.Text + "',N'"+ TextBox4.Text + "','"+TextBox5.Text + "','" +TextBox6.Text + "','" +TextBox7.Text +
            "','" +TextBox8.Text + "')";
        string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConn);
        con.Open();
        SqlCommand cmd = new SqlCommand(sqltext, con);
        int count = cmd.ExecuteNonQuery();
        if (count == 1)
            Response.Write("<script>alert('登记成功！')</script>");
        con.Close();
        con.Dispose();
        Clear();
        cmd = null;
        con = null;
    }
}