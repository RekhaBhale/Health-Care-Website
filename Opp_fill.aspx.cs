using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Opp_fill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void register_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Server =(local);uid=sa;pwd=12345678;database=Health_care");
        SqlCommand cmd = new SqlCommand("insert into Oppointment_detail values(@Pid,@Did,@Dname,@Date_of_opp,@description,@medicines,@tests,@weight,@blood_pressure)", con);
        cmd.Parameters.Add("@Pid", txtpid.Text );
        cmd.Parameters.Add("@Did", txtdname.Text);
        String dn = "select Dname from Doctor_details where Did=@Did";
        if (dn != null)
        {
            cmd.Parameters.Add("@Did", dn);
        }
        else
        {
            Response.Write("<script>alert('Data inserted successfully')</script>");
        }
       // cmd.Parameters.Add("@Did", txtdname.Text );
        cmd.Parameters.Add("@Date_of-opp", txtdate.Text);
        cmd.Parameters.Add("@description", txtdesc.Text );
        cmd.Parameters.Add("@medicines", txtmed.Text);
        cmd.Parameters.Add("@tests", txttest.Text );
        cmd.Parameters.Add("@weight", txtweight.Text);
        cmd.Parameters.Add("@blood_pressure", txtbp.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Write("Prescription Entered successful...!!");
    }
}