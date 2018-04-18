using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server =(local);uid=sa;pwd=12345678;database=Health_care");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select Dpassword from Doctor_details where Did=@Did", con);
        cmd.Parameters.Add("@Did", txtusername.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        string dbpwd = null;
        while (dr.Read())
        {
            dbpwd = dr["Dpassword"].ToString();
        }
        con.Close();
        if (dbpwd == txtpwd.Text)
        {
            Session["Did"] = txtusername.Text;
            Session["Dpassword"] = txtpwd.Text;
            Response.Redirect("doctor1.aspx");
        }
        else
        {
            txtusername.Text = "";
            txtpwd.Text = " ";
            txtusername.Focus();
            lblmsg.Visible = true;
        }
    }
}