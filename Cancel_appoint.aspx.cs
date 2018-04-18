using System;
using System.Web.UI;
using System.Data.SqlClient;

public partial class Cancel_appoint : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server =(local);uid=sa;pwd=12345678;database=Health_care");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            con.Open();
            using (SqlCommand com = new SqlCommand("DELETE FROM Appo_entries WHERE Pid=@pid AND A_date=@date AND A_time=@time", con))
            {
                com.Parameters.AddWithValue("@pid", txtpid.Text);
                com.Parameters.AddWithValue("@date", txtdate.Text);
                com.Parameters.AddWithValue("@time", DropDownList3.SelectedItem.ToString());
                com.ExecuteNonQuery();
            }
        Response.Write("Appointment Cancelled Successfully!!");
    }
   

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void app_check_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
}