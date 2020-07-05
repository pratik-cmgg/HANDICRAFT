using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminSite_viewOrderedProducts : System.Web.UI.Page
{
    string imgpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ownername"] == null)
            Response.Redirect("AdminLogin.aspx");

        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);


        string strQry = " select orderid from orderedproducts";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "product");
        GridView1.AutoGenerateSelectButton = true;
        GridView1.DataSource = objdataset;
        GridView1.DataBind();

    }
    protected void fillproducts()
    {


        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        string strQry = " select orderid from orderedproducts";
        SqlDataAdapter objadapter = new SqlDataAdapter(strQry, objConn);
        DataSet objdataset = new DataSet();
        objadapter.Fill(objdataset, "product");


        GridView1.AutoGenerateSelectButton = true;

        GridView1.DataSource = objdataset;
        GridView1.DataBind();
    }

    protected void btndel_Click(object sender, EventArgs e)
    {
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);


        int orderid = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = "delete from orderedproducts where orderid=@orderid";

        lblmsg.Text = strqury;

        SqlCommand objcmd = new SqlCommand(strqury, objConn);
        objcmd.Parameters.AddWithValue("@orderid", orderid);


        if (orderid == null)
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

        int orderid = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = " select * from orderedproducts where orderid=" + orderid;

        SqlCommand objcmd = new SqlCommand(strqury, objConn);
        objcmd.Parameters.AddWithValue("@orderid", orderid);
        string strCat;
        objConn.Open();
        SqlDataReader objreader = objcmd.ExecuteReader();
        objreader.Read();
        lblmsg.Visible = true;
        strCat = "<br>" + "Order_id  - " + objreader[0] + "<br><br>";
        strCat += "<br>" + "Product_id  - " + objreader[1] + "<br><br>";
        strCat += " Product Name   - " + objreader[2] + "<br><br>";
        productimage.ImageUrl = "~/" + objreader[3].ToString();
        imgpath = objreader[3].ToString();
        strCat += "Quantity  - " + objreader[4] + "<br><br>";
        strCat += "Price  - " + objreader[5] + "<br><br>";
        
        lblmsg.Text = strCat;
        objConn.Close();
    }
}