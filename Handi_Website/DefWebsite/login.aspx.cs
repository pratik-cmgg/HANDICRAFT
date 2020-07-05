using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;    

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {

    }
    
    protected void txtmail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string url = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection con = new SqlConnection(url);
        string strSelectQry = "Select cust_name,cust_mail,cust_pass from userRegistration where cust_mail=@cust_mail And cust_pass=@cust_pass";
        SqlCommand objCmd = new SqlCommand(strSelectQry, con);
        
        Session["mail"] = txtmail.Text;
        objCmd.Parameters.AddWithValue("@cust_mail", txtmail.Text);
        objCmd.Parameters.AddWithValue("@cust_pass", txtpass.Text);
        con.Open();
        SqlDataReader objReader = objCmd.ExecuteReader();
        if (objReader.Read())
        {
            Label masterlbl = (Label)Master.FindControl("lblUser");
            masterlbl.Text = "welcome!!!" + txtmail.Text;
            ((Button)Master.FindControl("btnLogout")).Text = "Logout";
            Session["customeremail"] = txtmail.Text;
            Cart c = new Cart();
            Session["cart"] = c;

            Response.Redirect("category.aspx");           
        }
        else
        {
            lblmsg.Text = "Please Enter your correct user name or Password";
            txtmail.Text = "";
            txtpass.Text = "";
            txtmail.Focus();
            Session.Clear();
        }
        con.Close();
    }
}