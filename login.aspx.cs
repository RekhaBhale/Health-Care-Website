using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Reg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server =(local);uid=sa;pwd=12345678;database=Health_care");
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    lblmsg.Visible = false;
        //}
        
    }
    protected void login_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select password from Patient_detail where username=@username", con);
        cmd.Parameters.Add("@username", txtusername.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        string dbpwd = null;
        while (dr.Read())
        {
            dbpwd = dr["password"].ToString();
        }
        con.Close();
        if (dbpwd == txtpwd.Text)
        {
            Session["username"] = txtusername.Text;
            Session["password"] = txtpwd.Text;
            Response.Redirect("Book_appoint.aspx");

        }
        else {
            txtusername.Text = "";
            txtpwd.Text = " ";
            txtusername.Focus();
            lblmsg.Visible = true;
        }
    }
}    
