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
public partial class adminSite_viewFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["ownername"] == null)
            Response.Redirect("AdminLogin.aspx");

        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);


        string strQry = " select f_id from feedback";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "feedback");
        GridView1.AutoGenerateSelectButton = true;
        GridView1.DataSource = objdataset;
        GridView1.DataBind();
 
    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        int f_id = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = "delete from feedback where f_id=" +f_id;
        SqlCommand objcmd = new SqlCommand(strqury, objConn);


        if (f_id == null)
            lblmsg.Text = "Please Select Record";
        else
        {
            objConn.Open();
            int intReco = objcmd.ExecuteNonQuery();
            if (intReco > 0)
            {
                lblmsg.Visible = true;
                lblmsg.Text = "Feedback Record Deleted Successfully";
            }

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn =new SqlConnection(strconn);

        int f_id=Convert.ToInt32 (GridView1.SelectedValue);
        string strqury = " select * from feedback where f_id ="+f_id;

        SqlCommand objcmd=new SqlCommand(strqury, objConn);
         objcmd.Parameters.AddWithValue("@f_id",f_id);

            string strCustDetails ;
        objConn.Open();
         SqlDataReader objreader = objcmd.ExecuteReader();
        objreader.Read();
        lblmsg.Visible = true;
        strCustDetails = "<br>" + "Feedback id  - " + objreader[0] + "<br><br>";
        strCustDetails += "Name   - " + objreader[1] + "<br><br>";
        strCustDetails += "Email  - " + objreader[2] + "<br><br>";
        strCustDetails += "Subject  - " + objreader[3] + "<br><br>";
        strCustDetails += "Feedback - " + objreader[4] + "<br><br>";
        lblmsg.Text = strCustDetails;
        Session["customeremail"] = objreader[2];
        objConn.Close();
        txtto.Text=Session["customeremail"].ToString();
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("mad.wearemad@gmail.com");
            msg.To.Add(txtto.Text);
            msg.Subject = txtsub.Text;
            msg.Body = txtmsg.Text;
            SmtpClient sc = new SmtpClient("smtp.gmail.com");
            sc.Port =  587;
            sc.Credentials = new NetworkCredential("mad.wearemad@gmail.com", "sneha@123");
            sc.EnableSsl = true;
            sc.Send(msg);
            Response.Redirect("viewFeedback.aspx");
        }
        catch(Exception ex)
        {
            Response.Write(ex);
        }
    }
}