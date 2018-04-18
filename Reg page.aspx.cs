using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Reg_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Imagebutton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdob.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void register_Click(object sender, EventArgs e)
    {
        //String str = null;

        SqlConnection con = new SqlConnection("Server =(local);uid=sa;pwd=12345678;database=Health_care");
        SqlCommand cmd = new SqlCommand("insert into Patient_detail values(@Full_name,@username,@password,@mob_no,@email,@dob,@address,@card_no,@pin)", con);
        cmd.Parameters.Add("@Full_name", txtname.Text);
        cmd.Parameters.Add("@username", txtusername.Text);
        cmd.Parameters.Add("@password", txtpwd.Text);
        cmd.Parameters.Add("@mob_no", txtmob.Text);
        cmd.Parameters.Add("@email", txtemail.Text);
        cmd.Parameters.Add("@dob", txtdob.Text);
        cmd.Parameters.Add("@address", txtaddr.Text);
        cmd.Parameters.Add("@card_no", txtcard.Text);
        cmd.Parameters.Add("@pin", txtpin.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Write("Registratiion successful...!!");
        Response.Redirect("login.aspx");
    }
}
// <li><a id="a4" href="#"><b>LOGIN</b><img src="Images/untitled.png"alt="logo" style="height:30px; width:30px; border-radius:5px; top:125px; left:1080px; position:absolute"/>
          //  </a></li>