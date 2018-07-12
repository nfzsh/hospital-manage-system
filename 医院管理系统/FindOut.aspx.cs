using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class FindOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
            TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "1")
        {
            string sqltext = "SELECT * FROM[sick] WHERE(([date] <= '" + TextBox1.Text + "') AND([odate] >= '" + TextBox2.Text + "') AND([dname] = " + Session["id"] + "))";
            string strConn = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConn);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(sqltext,con);
            adapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

            //dr.Close();
            con.Close();
            con.Dispose();
            //cmd = null;
            con = null;
        }
    }
}