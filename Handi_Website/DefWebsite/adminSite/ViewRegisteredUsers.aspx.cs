using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminSite_ViewRegisteredUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ownername"] == null)
            Response.Redirect("AdminLogin.aspx");

        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        string strQry = " select cust_id from userRegistration";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "RegistrationForm");
        GridView1.AutoGenerateSelectButton = true;
        GridView1.DataSource = objdataset;
        GridView1.DataBind();


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn =new SqlConnection(strconn);

        int cust_id =Convert.ToInt32 ( GridView1.SelectedValue);
        string strqury = " select * from userRegistration where cust_id =@cust_id";
        SqlCommand objcmd=new SqlCommand(strqury, objConn);
        objcmd.Parameters.AddWithValue("@cust_id", cust_id);
        string strCustDetails ;
        objConn.Open();
        SqlDataReader objreader = objcmd.ExecuteReader();
        objreader.Read();
        lblmsg.Visible = true;
        strCustDetails = "<br>" + "Customer id  - " + objreader[0] + "<br><br>";
        strCustDetails += "Customer Name   - " + objreader[1] + "<br><br>";
        strCustDetails += "Customer Email Id   - " + objreader[2] + "<br><br>";
        strCustDetails += "Customer Password   - " + objreader[3] + "<br><br>";
         strCustDetails += "Customer Mobile No.  - " + objreader[4] + "<br><br>";
        strCustDetails += "Customer Address  - " + objreader[5] + "<br><br>";
        lblmsg.Text = strCustDetails;

        objConn.Close();

}
    protected void btndel_Click(object sender, EventArgs e)
    {
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        int cust_id = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = "delete from userRegistration where cust_id=" +cust_id;
     
  
   SqlCommand objcmd = new SqlCommand(strqury, objConn);
        if (cust_id == null)
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
}
