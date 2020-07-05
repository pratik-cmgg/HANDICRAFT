using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsbt_Click1(object sender, EventArgs e)
    {
        string url = ConfigurationManager.ConnectionStrings["handicon"].ToString();
        SqlConnection con = new SqlConnection(url);
        try
        {
            con.Open();

            SqlCommand objCmd = new SqlCommand("select cust_mail from userRegistration where cust_mail='" + txtmail.Text + "'", con);
            SqlDataReader rs = objCmd.ExecuteReader();




            if (rs.HasRows)
            {
                string msg = "Dear, " + txtmail.Text + "kindly we are sorry as this User name alredy Exists...";

                Response.Write(@"<script language='javascript'>alert(msg)</script>");
                Label1.Text = "username already exists";

            }
            else
            {
                string strname = txtname.Text;
                string strmail = txtmail.Text;
                string strpass = txtpass.Text;
                string strmob = txtmob.Text;
                string stradd = txtadd.Text;
                rs.Close();
                string query = "insert into userRegistration values(@n,@e,@p,@m,@a)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@n", strname);
                cmd.Parameters.AddWithValue("@e", strmail);
                cmd.Parameters.AddWithValue("@p", strpass);
                cmd.Parameters.AddWithValue("@m", strmob);
                cmd.Parameters.AddWithValue("@a", stradd);
                int intInsert = cmd.ExecuteNonQuery();
                if (intInsert > 0)

                    Response.Redirect("login.aspx");


            } con.Close();
        }
        catch (Exception ex) { throw ex; }

    }

    protected void btncnl_Click(object sender, EventArgs e)
    {
        txtname.Text = " ";
        txtmail.Text = " ";
        txtpass.Text = " ";
        txtcpass.Text = " ";
        txtmob.Text = " ";
        txtadd.Text = " ";
    }

}