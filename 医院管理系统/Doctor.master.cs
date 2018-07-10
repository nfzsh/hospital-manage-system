using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null&&(string)Session["kname"]=="库存管理"&& (string)Session["kname"] == "admin")
            Response.Redirect("Login.aspx");
        //Response.Write(Session["id"]);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Doctor.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("List.aspx");
    }
}
