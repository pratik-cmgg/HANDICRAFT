using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminSite_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //    string strconn;
        //    strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        //    SqlConnection objConn = new SqlConnection(strconn);

        //    string strSelectQry = "Select * from Admin where name=@name And pass=@pass";
        //    SqlCommand objCmd = new SqlCommand(strSelectQry, objConn);
        //    objCmd.Parameters.AddWithValue("@name", txtname.Text);
        //    objCmd.Parameters.AddWithValue("@pass", txtpass.Text);
        //    objConn.Open();

        //    SqlDataReader objReader = objCmd.ExecuteReader();
        //    //'Data.CommandBehavior.SingleRow);

        //    if (objReader.Read())
        //    {
        //        Session["ownername"] = txtname.Text;
        //        Response.Redirect("AdminPage.aspx");
        //    }
        //    else
        //    {
        //        lblError.Text = "Please Enter your correct user name or Password";
        //        txtname.Text = "";
        //        txtpass.Text = "";

        //        Session.Clear();
        //    }
        //    objConn.Close();
        //}
        //protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        //{
        //    txtname.Text = "";
        //    txtpass.Text = "";
        //}
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);

        string strSelectQry = "Select * from Admin where name=@name And pass=@pass";
        SqlCommand objCmd = new SqlCommand(strSelectQry, objConn);
        objCmd.Parameters.AddWithValue("@name", txtname.Text);
        objCmd.Parameters.AddWithValue("@pass", txtpass.Text);
        objConn.Open();

        SqlDataReader objReader = objCmd.ExecuteReader();
        //'Data.CommandBehavior.SingleRow);

        if (objReader.Read())
        {
            Session["ownername"] = txtname.Text;
            Response.Redirect("AdminPage.aspx");
        }
        else
        {
            lblError.Text = "Please Enter your correct user name or Password";
            txtname.Text = "";
            txtpass.Text = "";

            Session.Clear();
        }
        objConn.Close();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        txtname.Text = "";
        txtpass.Text = "";
    }

  }