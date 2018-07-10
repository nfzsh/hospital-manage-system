using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["kname"] != "admin")
            Response.Redirect("Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
}
