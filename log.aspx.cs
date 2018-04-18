using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void pat_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void doc_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login2.aspx");
    }
}