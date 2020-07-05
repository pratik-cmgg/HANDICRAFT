using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class adminSite_addNewProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ownername"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
   
    }
    //protected void btnAdd_Click(object sender, EventArgs e)
    //{
    //    int subcatid = Convert.ToInt32(DropDownList1.SelectedValue);
    //    string folderPath = "";
    //    string tablePath = "";
    //    string url = ConfigurationManager.ConnectionStrings["handicon"].ToString();
    //    SqlConnection con = new SqlConnection(url);
    //    con.Open();
    //    string strname = txtname.Text;
    //    string strprice = txtprc.Text;
    //    string strdes = txtdes.Text;
    //    string strsize = txtsize.Text;
    //    string strmat = txtmat.Text;
    //    string strclr = txtclr.Text;
    //    string strcap = txtcap.Text;
    //    string strweight = txtweight.Text;
    //    string strsui = txtSuitable.Text;
    //    string strshape = txtshape.Text;
    //    if (subcatid == 1)
    //    {
    //        folderPath = "~/images/HomeNLiving/wallDecor";
    //        tablePath = @"images/HomeNLiving/wallDecor";
    //    }
    //    else if (subcatid == 2)
    //    {
    //        folderPath = "~/images/HomeNLiving/clocks";
    //        tablePath = @"images/HomeNLiving/clocks";
    //    }
    //    else if (subcatid == 3)
    //    {
    //        folderPath = "~/images/HomeNLiving/photoFrames";
    //        tablePath = @"images/HomeNLiving/photoFrames";
    //    }
    //    else if (subcatid == 4)
    //    {
    //        folderPath = "~/images/HomeNLiving/keyHolder";
    //        tablePath = @"images/HomeNLiving/keyHolder";
    //    }
    //    else if (subcatid == 5)
    //    {
    //        folderPath = "~/images/LightingNLamps/DecorativeNMoodLighting";
    //        tablePath = @"images/LightingNLamps/DecorativeNMoodLighting";
    //    }
    //    else if (subcatid == 6)
    //    {
    //        folderPath = "~/images/LightingNLamps/Lamps";
    //        tablePath = @"images/LightingNLamps/Lamps";
    //    }
    //    else if (subcatid == 7)
    //    {
    //        folderPath = "~/images/LightingNLamps/WallMountCandleHolder";
    //        tablePath = @"images/LightingNLamps/WallMountCandleHolder";
    //    }
        

    //    if (FileUpload1.HasFile)
    //    {
    //        string filename = FileUpload1.PostedFile.FileName.ToString();
    //        FileUpload1.SaveAs(Server.MapPath(folderPath + filename));
    //    }
    //    string pro_imgurl = tablePath + FileUpload1.PostedFile.FileName;
    //    string strname1 = DropDownList1.Text;

    //    string strQuery = "insert into product values(@subcatid,@name,@img,@price,@des,@size,@material,@color,@capacity,@weight,@suitable,@shape)";
    //    SqlCommand cmd = new SqlCommand(strQuery, con);
    //    cmd.Parameters.AddWithValue("@subcatid", subcatid);
    //    cmd.Parameters.AddWithValue("@name", strname);
    //    cmd.Parameters.AddWithValue("@img", pro_imgurl);
    //    cmd.Parameters.AddWithValue("@price",strprice);
    //    cmd.Parameters.AddWithValue("@des", strdes);
    //    cmd.Parameters.AddWithValue("@size", strsize);
    //    cmd.Parameters.AddWithValue("@material", strmat);
    //    cmd.Parameters.AddWithValue("@color", strclr);
    //    cmd.Parameters.AddWithValue("@capacity", strcap);
    //    cmd.Parameters.AddWithValue("@weight", strweight);
    //    cmd.Parameters.AddWithValue("@suitable", strsui);
    //    cmd.Parameters.AddWithValue("@shape", strshape);
    //    cmd.ExecuteNonQuery();
    //    Response.Redirect("AdminPage.aspx");
    //    con.Close();
      


    
    //}
    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        int subcatid = Convert.ToInt32(DropDownList1.SelectedValue);
        string folderPath = "";
        string tablePath = "";
        string url = ConfigurationManager.ConnectionStrings["handicon"].ToString();
        SqlConnection con = new SqlConnection(url);
        con.Open();
        string strname = txtname.Text;
        string strprice = txtprc.Text;
        string strdes = txtdes.Text;
        string strsize = txtsize.Text;
        string strmat = txtmat.Text;
        string strclr = txtclr.Text;
        string strcap = txtcap.Text;
        string strweight = txtweight.Text;
        string strsui = txtSuitable.Text;
        string strshape = txtshape.Text;
        if (subcatid == 1)
        {
            folderPath = "~/images/HomeNLiving/WallDecor/";
            tablePath = @"images\HomeNLiving\WallDecor\";
        }
        else if (subcatid == 2)
        {
            folderPath = "~/images/HomeNLiving/clocks/";
            tablePath = @"images\HomeNLiving\clocks\";
        }
        else if (subcatid == 3)
        {
            folderPath = "~/images/HomeNLiving/photoFrames/";
            tablePath = @"images\HomeNLiving\photoFrames\";
        }
        else if (subcatid == 4)
        {
            folderPath = "~/images/HomeNLiving/keyHolder/";
            tablePath = @"images\HomeNLiving\keyHolder\";
        }
        else if (subcatid == 5)
        {
            folderPath = "~/images/LightingNLamps/DecorativeNMoodLighting/";
            tablePath = @"images\LightingNLamps\DecorativeNMoodLighting\";
        }
        else if (subcatid == 6)
        {
            folderPath = "~/images/LightingNLamps/Lamps/";
            tablePath = @"images\LightingNLamps\Lamps\";
        }
        else if (subcatid == 7)
        {
            folderPath = "~/images/LightingNLamps/WallMountCandleHolder/";
            tablePath = @"images\LightingNLamps\WallMountCandleHolder\";
        }

        else if (subcatid == 8)
        {
            folderPath = "~/images/ReligionNSpirituality/vastuHandicrafts/";
            tablePath = @"images\ReligionNSpirituality\vastuHandicrafts\";
        }
        else if (subcatid == 9)
        {
            folderPath = "~/images/ReligionNSpirituality/religiousHangers/";
            tablePath = @"images\ReligionNSpirituality\religiousHangers\";
        }
        else if (subcatid == 10)
        {
            folderPath = "~/images/ReligionNSpirituality/fengShui/";
            tablePath = @"images\ReligionNSpirituality\fengShui\";
        }
        else if (subcatid == 15)
        {
            folderPath = "~/images/KitchenNDining/CutleryNTableware/";
            tablePath = @"images\KitchenNDining\CutleryNTableware\";
        }
        else if (subcatid == 16)
        {
            folderPath = "~/images/KitchenNDining/kitchentorage/";
            tablePath = @"images\KitchenNDining\kitchentorage\";
        }
        else if (subcatid == 17)
        {
            folderPath = "~/images/KitchenNDining/VegiNFruitBasket/";
            tablePath = @"images\KitchenNDining\VegiNFruitBasket\";
        }
        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.PostedFile.FileName.ToString();
            FileUpload1.SaveAs(Server.MapPath(folderPath + filename));
        }
        string pro_imgurl = tablePath + FileUpload1.PostedFile.FileName;
        string strname1 = DropDownList1.Text;

        string strQuery = "insert into product values(@subcatid,@name,@img,@price,@des,@size,@material,@color,@capacity,@weight,@suitable,@shape)";
        SqlCommand cmd = new SqlCommand(strQuery, con);
        cmd.Parameters.AddWithValue("@subcatid", subcatid);
        cmd.Parameters.AddWithValue("@name", strname);
        cmd.Parameters.AddWithValue("@img", pro_imgurl);
        cmd.Parameters.AddWithValue("@price", strprice);
        cmd.Parameters.AddWithValue("@des", strdes);
        cmd.Parameters.AddWithValue("@size", strsize);
        cmd.Parameters.AddWithValue("@material", strmat);
        cmd.Parameters.AddWithValue("@color", strclr);
        cmd.Parameters.AddWithValue("@capacity", strcap);
        cmd.Parameters.AddWithValue("@weight", strweight);
        cmd.Parameters.AddWithValue("@suitable", strsui);
        cmd.Parameters.AddWithValue("@shape", strshape);
        cmd.ExecuteNonQuery();
        Response.Redirect("addNewProducts.aspx");
        con.Close();
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }


   
}