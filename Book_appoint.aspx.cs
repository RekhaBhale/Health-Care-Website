using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Book_appoint : System.Web.UI.Page
{
    string p_id,date,time;
    SqlConnection con = new SqlConnection("Server =(local);uid=sa;pwd=12345678;database=Health_care");
    protected void Page_Load(object sender, EventArgs e)
    {
     
            filldropdown1();
           // filldropdown2();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cm = new SqlCommand("select Did from Doctor_details where Dname=@dname", con);
        cm.Parameters.Add("@dname", DropDownList2.SelectedItem.ToString());
        con.Open();
        string Did = cm.ExecuteScalar().ToString();
        con.Close();

        try
        {
            date = txtdate.Text;
            time = txttime.Text;
            SqlCommand cmd = new SqlCommand("select Did from Appo_entries where Dname=@dname AND A_date=@date AND A_time=@time", con);
            cmd.Parameters.Add("@dname", DropDownList2.SelectedItem.ToString());
            cmd.Parameters.Add("@date", date);
            cmd.Parameters.Add("@time", time);
            con.Open();



            if (cmd.ExecuteScalar() == null)
            {
                SqlCommand cmd1 = new SqlCommand("insert into Appo_entries(Did,Pid,Dname,A_date,A_time) values(@did,@pid,@dname,@date,@time)", con);
                cmd1.Parameters.Add("@did", Did);
                cmd1.Parameters.Add("@pid", txtpid.Text);
                cmd1.Parameters.Add("@dname", DropDownList2.SelectedItem.ToString());
                cmd1.Parameters.Add("@date", txtdate.Text);
                cmd1.Parameters.Add("@time", txttime.Text);

                p_id = txtpid.Text;
                //con.Open();
                cmd1.ExecuteNonQuery();
                //con.Close();

                Panel1.Visible = true;

                SqlCommand payment_command = new SqlCommand("select charge from Doctor_details where Dname=@dname", con);
                payment_command.Parameters.Add("@dname", DropDownList2.SelectedItem.ToString());
                //con.Open();
                string paymentCharge = payment_command.ExecuteScalar().ToString();
                //con.Close();

                txtamt.Text = paymentCharge.ToString();
            }
            else
            {
                Response.Write("Appointment is not available...!!!");
            }

        }
        catch
        {
            Exception ex;
        }
        finally
        {
            con.Close();
        }
    }
    public void filldropdown1()
    {
        SqlCommand cmd = new SqlCommand("select post from Doctor_details", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList1.Items.Add(dr["post"].ToString());
        }
        con.Close();
    }

    protected void next_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void next_button_Click(object sender, EventArgs e)
    {
        //string post = DropDownList1.SelectedItem.ToString();
        SqlCommand cmd2= new SqlCommand("select Dname from Doctor_details where post=@post", con);
        cmd2.Parameters.Add("@post", DropDownList1.SelectedItem.ToString());
        con.Open();
        SqlDataReader dr = cmd2.ExecuteReader();
        while (dr.Read())
        {
            DropDownList2.Items.Add(dr["Dname"].ToString());
        }
        con.Close();
   
    }
    protected void paysub_Click(object sender, EventArgs e)
    {
        //String card = txtcard.Text;
        //String pin = "select pin from Patient_detail where card_no=card";
        SqlCommand cmd3 = new SqlCommand("select pin from Patient_detail where card_no=@card", con);
        cmd3.Parameters.Add("@card", txtcard.Text);
        con.Open();
        SqlDataReader dr = cmd3.ExecuteReader();
        string c1 = null;
        while (dr.Read())
        {
            c1 = dr["pin"].ToString();
        }
        con.Close();

        if (c1 == txtpin.Text)
        {
            SqlCommand cm1 = new SqlCommand("update Appo_entries set payment=@pay where Pid=@pid", con);
            cm1.Parameters.Add("@pay", txtamt.Text);
            cm1.Parameters.Add("@pid", txtpid.Text);
            con.Open();
            cm1.ExecuteNonQuery();
            con.Close();
            Label9.Visible = true;
        }
        else
        {
            lblmsg.Visible = true;
            SqlCommand delete1 = new SqlCommand("delete from Appo_entries where Pid=@pid AND A_date=@date AND A_time=@time", con);
            delete1.Parameters.Add("@pid", txtpid.Text);
            delete1.Parameters.Add("@date", txtdate.Text);
            delete1.Parameters.Add("@time", txttime.Text);
            con.Open();
            delete1.ExecuteNonQuery();
            con.Close();

        }

    }
}