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
public partial class confirmOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        send_order_confirmation_mail();
        Session["cart"] = null;
        ((Button)Master.FindControl("btnLogout")).Text = "Logout";
    }
    protected void send_order_confirmation_mail()
    {
     /*     string customer_email_id = Session["customeremail"].ToString();

        var fromAddress = new MailAddress("aekkim.13@gmail.com");
     //   var fromPassword = "akshayholic";
        var toAddress = new MailAddress(customer_email_id);

        string subject = "order confirmed";
        string body = Session["orderdetails"].ToString();


        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
            UseDefaultCredentials = false,
            Credentials = new System.Net.NetworkCredential("aekkim.13@gmail.com", "akshayholic")
        };
        using (var message = new MailMessage(fromAddress, toAddress)
        {
            Subject = subject,
            Body = body
        })


smtp.Send(message);

        */

    }
}