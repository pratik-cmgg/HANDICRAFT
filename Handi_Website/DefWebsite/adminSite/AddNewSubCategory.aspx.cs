using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class adminSite_AddNewSubCategory : System.Web.UI.Page
{
   // string a;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ownername"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
   
    }
    //protected void btnadd_Click(object sender, EventArgs e)
    //{
    //    string folderPath = "";
    //    string tablePath = "";
    //    string url = ConfigurationManager.ConnectionStrings["handicon"].ToString();
    //    SqlConnection con = new SqlConnection(url);
    //    con.Open();
    //    string strcatname = DropDownList1.Text.Trim();
    //    string strname = txtname.Text;
    //    string strdes = txtdes.Text;
    //    if (strcatname.Equals(("Home & Living").Trim()))
    //    {
    //        folderPath = "~/images/subCatImages/";
    //        tablePath = @"images\subCatImages\";
    //    }

    //    //else if (strcatname == "Lighting & Lamps")
    //    //{
    //    //    folderPath = "~/images/subCatImages/";
    //    //    tablePath = @"images\subCatImages\";
    //    //}
    //    //else if (strcatname == "Religion & Spirituality")
    //    //{
    //    //    folderPath = "~/images/subCatImages/";
    //    //    tablePath = @"images\subCatImages\";
    //    //}
    //    //else if (strcatname == "Kitchen & Dining")
    //    //{
    //    //    folderPath = "~/images/subCatImages/";
    //    //    tablePath = @"images\subCatImages\";
    //    //}
    //    if (FileUpload1.HasFile)
    //    {
    //        string filename = FileUpload1.PostedFile.FileName.ToString();
    //        FileUpload1.SaveAs(Server.MapPath(folderPath + filename));
    //    }
    //        string sub_catimgurl = tablePath + FileUpload1.PostedFile.FileName;
    //        string strname1 = DropDownList1.Text;

    //        string strQuery = "insert into subCat values(@catname,@name,@des,@img)";
    //        SqlCommand cmd = new SqlCommand(strQuery, con);
    //        cmd.Parameters.AddWithValue("@catname", strcatname);
    //        cmd.Parameters.AddWithValue("@name", strname);
    //        cmd.Parameters.AddWithValue("@des", strdes);
    //        cmd.Parameters.AddWithValue("@img", sub_catimgurl);
    //        cmd.ExecuteNonQuery();
    //        Response.Redirect("AdminLogin.aspx");
    //        con.Close();
      


        
    //}
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        int subcatid = Convert.ToInt32(DropDownList1.SelectedValue);
        string folderPath = "";
        string tablePath = "";
        string url = ConfigurationManager.ConnectionStrings["handicon"].ToString();
        SqlConnection con = new SqlConnection(url);
        con.Open();
        string strname = txtname.Text;
        string strdes = txtdes.Text;
        if (subcatid == 1)
        {
           
            folderPath = "~/images/subCatImages/";
            tablePath = @"images\subCatImages\";
        }
        else if (subcatid == 4)
        {
           
            folderPath = "~/images/subCatImages/";
            tablePath = @"images\subCatImages\";
        }
        else if (subcatid == 5)
        {
            folderPath = "~/images/subCatImages/";
            tablePath = @"images\subCatImages\";
        }
        else if (subcatid == 6)
        {
            folderPath = "~/images/subCatImages/";
            tablePath = @"images\subCatImages\";
        }
        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.PostedFile.FileName.ToString();
            FileUpload1.SaveAs(Server.MapPath(folderPath + filename));
        }
        string sub_catimgurl = tablePath + FileUpload1.PostedFile.FileName;
        string strname1 = DropDownList1.Text;

        string strQuery = "insert into subCategory values(@subcatid,@name,@des,@img)";
        SqlCommand cmd = new SqlCommand(strQuery, con);
        cmd.Parameters.AddWithValue("@subcatid", subcatid);
        cmd.Parameters.AddWithValue("@name", strname);
        cmd.Parameters.AddWithValue("@des", strdes);
        cmd.Parameters.AddWithValue("@img", sub_catimgurl);
        cmd.ExecuteNonQuery();
        Response.Redirect("AdminPage.aspx");
        con.Close();    
    
    }
    protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    
   
}