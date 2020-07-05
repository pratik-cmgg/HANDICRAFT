using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminSite_viewCategory : System.Web.UI.Page
{
    string imgpath;
    string strCat;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ownername"] == null)
            Response.Redirect("AdminLogin.aspx");

        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);


        string strQry = " select cat_id from Category";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "Category");
        GridView1.AutoGenerateSelectButton = true;
        GridView1.DataSource = objdataset;
        GridView1.DataBind();
 
    }
    protected void fillproducts()
    {


        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        string strQry = " select cat_id from category";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "allproducts");


        GridView1.AutoGenerateSelectButton = true;

        GridView1.DataSource = objdataset;
        GridView1.DataBind();
    }

    //protected void btndel_Click(object sender, EventArgs e)
    //{
    //    string strconn;
    //    strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
    //    SqlConnection objConn = new SqlConnection(strconn);

    //    int sub_id = Convert.ToInt32(GridView1.SelectedValue);
    //    string strqury = "delete from category where cat_id=" + sub_id;


    //    SqlCommand objcmd = new SqlCommand(strqury, objConn);
    //    if (sub_id == null)
    //        lblmsg.Text = "Please Select Record";
    //    else
    //    {
    //        objConn.Open();
    //        int intReco = objcmd.ExecuteNonQuery();
    //        if (intReco > 0)
    //        {
    //            lblmsg.Visible = true;
    //            lblmsg.Text = "Record Deleted Successfully";
    //        }

    //    }

     




    //}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        int cat_id = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = " select * from category where cat_id =" + cat_id;

        SqlCommand objcmd = new SqlCommand(strqury, objConn);
        objcmd.Parameters.AddWithValue("@cat_id", cat_id);
        
        objConn.Open();
        SqlDataReader objreader = objcmd.ExecuteReader();
        objreader.Read();
        lblmsg.Visible = true;
        
        strCat += "<br>" + "Category id  - " + objreader[0] + "<br><br>";
        strCat += "Name   - " + objreader[1] + "<br><br>";
        strCat += "Description  - " + objreader[2] + "<br><br>";
        productimage.ImageUrl = "~/" + objreader[3].ToString();
        imgpath = objreader[3].ToString();

        lblmsg.Text = strCat;
        objConn.Close();
  
    }
}