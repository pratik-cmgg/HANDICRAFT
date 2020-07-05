using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminSite_viewSubCategory : System.Web.UI.Page
{
    string imgpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ownername"] == null)
            Response.Redirect("AdminLogin.aspx");

        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);


        string strQry = " select sub_id from subCategory";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "subCategory");
        GridView1.AutoGenerateSelectButton = true;
        GridView1.DataSource = objdataset;
        GridView1.DataBind();
 
    }
    protected void fillproducts()
    {


        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        string strQry = " select sub_id from sub_category";
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
    //    string strqury = "delete from subCategory where sub_id=" + sub_id;


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
    
    //    //string strconn;
    //    //strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
    //    //SqlConnection objConn = new SqlConnection(strconn);


    //    //int sub_id = Convert.ToInt32(GridView1.SelectedValue);
    //    //string strqury = "delete from subCategory where sub_id=@sub_id";

     

    //    //SqlCommand objcmd = new SqlCommand(strqury, objConn);
    //    //objcmd.Parameters.AddWithValue("@sub_id", sub_id);


    //    //if (sub_id == null)
    //    //       lblmsg.Text = "Please Select a Record";
    //    //else
    //    //{
    //    //    objConn.Open();
    //    //    int intReco = objcmd.ExecuteNonQuery();
    //    //    if (intReco > 0)
    //    //    {
    //    //        lblmsg.Visible = true;
    //    //        string filePath = Server.MapPath(imgpath);
    //    //        if (System.IO.File.Exists(filePath))
    //    //        {
    //    //            System.IO.File.Delete(filePath);


    //    //        }

    //    //        Response.Redirect("abc.aspx");
    //    //        //lblmsg.Text = "Product Record Deleted Successfully";
    //    //        //productimage.ImageUrl = "";
    //    //        //fillproducts();


    //    //    }

    //    //}
    //    //objConn.Close();



   

    //}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        int sub_id = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = " select * from subCategory where sub_id =" + sub_id;

        SqlCommand objcmd = new SqlCommand(strqury, objConn);
        objcmd.Parameters.AddWithValue("@sub_id", sub_id);
        string strCat;
        objConn.Open();
        SqlDataReader objreader = objcmd.ExecuteReader();
        objreader.Read();
        lblmsg.Visible = true;
        strCat = "<br>" + "SubCategory id  - " + objreader[0] + "<br>";
        strCat += "<br>" + "Category id  - " + objreader[1] + "<br><br>";
        strCat += "Name   - " + objreader[2] + "<br><br>";
        strCat += "Description  - " + objreader[3] + "<br><br>";
        productimage.ImageUrl = "~/"+objreader[4].ToString();
        imgpath = objreader[4].ToString();
         
        lblmsg.Text = strCat;
        objConn.Close();
  
    }
}