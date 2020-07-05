using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsbt_Click(object sender, EventArgs e)
    {
        string url = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection con = new SqlConnection(url);
        con.Open();
        string strname = txtname.Text;
        string strmail = txtmail.Text;
        string strsub = txtsub.Text;
        string strmsg = txtmsg.Text;
        string que = "insert into feedback values(@name,@mail,@sub,@msg)";
        SqlCommand cmd = new SqlCommand(que, con);
        cmd.Parameters.AddWithValue("@name", strname);
        cmd.Parameters.AddWithValue("@mail", strmail);
        cmd.Parameters.AddWithValue("@sub", strsub);
        cmd.Parameters.AddWithValue("@msg", strmsg);
        cmd.ExecuteNonQuery();
        
        try
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("mad.wearemad@gmail.com");
            msg.To.Add(txtmail.Text);
            msg.Subject = "Thank you!!";
            msg.Body = "Dear Customer, Thank you for your valuable feedback.You feedback will be answered soon.Thank you. :P";
            SmtpClient sc = new SmtpClient("smtp.gmail.com");
            sc.Port = 587;
            sc.Credentials = new NetworkCredential("mad.wearemad@gmail.com", "sneha@123");
            sc.EnableSsl = true;
            sc.Send(msg);
            Response.Redirect("welcomeFeedback.aspx");

        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }

    }
    protected void txtmsg_TextChanged(object sender, EventArgs e)
    { }
    protected void btncncl_Click(object sender, EventArgs e)
    {

        txtname.Text = "";
        txtmail.Text = "";
        txtmsg.Text = "";
    }
}