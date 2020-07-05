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
public partial class adminSite_viewJoinRequest : System.Web.UI.Page
{
    string imgpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ownername"] == null)
            Response.Redirect("AdminLogin.aspx");

        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);


        string strQry = " select id from tblJoin_request1";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "joinRequest");
        GridView1.AutoGenerateSelectButton = true;
        GridView1.DataSource = objdataset;
        GridView1.DataBind();
 
    }
    protected void fillproducts()
    {


        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        string strQry = " select id from tblJoin_request1";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "joinRequest");


        GridView1.AutoGenerateSelectButton = true;

        GridView1.DataSource = objdataset;
        GridView1.DataBind();
    }


    protected void btndel_Click(object sender, EventArgs e)
    {
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);


        int id = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = "delete from tblJoin_request1 where id=@id";

       // lblmsg.Text = strqury;

        SqlCommand objcmd = new SqlCommand(strqury, objConn);
        objcmd.Parameters.AddWithValue("@id", id);


        if (id == null)
            lblmsg.Text = "Please Select Record";
        else
        {
            objConn.Open();
            int intReco = objcmd.ExecuteNonQuery();
            if (intReco > 0)
            {
                lblmsg.Visible = true;
                string filePath = Server.MapPath(imgpath);
                if (System.IO.File.Exists(filePath))
                {
                    System.IO.File.Delete(filePath);


                }


                lblmsg.Text = "Product Record Deleted Successfully";
                productimage.ImageUrl = "";
                //Image1.ImageUrl = "";
                fillproducts();


            }

        }
        objConn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        int id = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = " select * from tblJoin_request1 where id =" + id;

        SqlCommand objcmd = new SqlCommand(strqury, objConn);
        objcmd.Parameters.AddWithValue("@id", id);
        string strCat;
        objConn.Open();
        SqlDataReader objreader = objcmd.ExecuteReader();
        objreader.Read();
        lblmsg.Visible = true;
        strCat = "<br>" + "Id  - " + objreader[0] + "<br>";
        strCat += "<br>" + "Name  - " + objreader[1] + "<br><br>";
        strCat += "Mail_ID   - " + objreader[2] + "<br><br>";
        strCat += "Password   - " + objreader[3] + "<br><br>";
        strCat += "Mobile Number   - " + objreader[4] + "<br><br>";
        productimage.ImageUrl = "~/" + objreader[5].ToString();
        imgpath = objreader[5].ToString();
        strCat += "Image Description  - " + objreader[6] + "<br><br>";
        strCat += "Address  - " + objreader[7] + "<br><br>";
        
        lblmsg.Text = strCat;
        Session["customeremail"] = objreader[2];
        objConn.Close();
        txtTo.Text = Session["customeremail"].ToString();
    
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("mad.wearemad@gmail.com");
            msg.To.Add(txtTo.Text);
            msg.Subject = txtsub.Text;
            msg.Body = txtmsg.Text;
            SmtpClient sc = new SmtpClient("smtp.gmail.com");
            sc.Port = 587;
            sc.Credentials = new NetworkCredential("mad.wearemad@gmail.com", "sneha@123");
            sc.EnableSsl = true;
            sc.Send(msg);
            Response.Redirect("viewFeedback.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}