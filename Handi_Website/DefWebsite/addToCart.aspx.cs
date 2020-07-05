using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class addToCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mail"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            string name = (string)Session["mail"];

            Label masterlbl = (Label)Master.FindControl("lblUser");


            masterlbl.Text = "welcome!!!" + name;
            ((Button)Master.FindControl("btnLogout")).Text = "Logout";



        }

       
       
        string url = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
        SqlConnection con = new SqlConnection(url);
        int pro_id = Convert.ToInt32(Request.QueryString["pro_id"]);
        
        con.Open();
        SqlCommand objCmd = new SqlCommand("select * from product where pro_id=@pro_id", con);
        objCmd.Parameters.AddWithValue("@pro_id", pro_id);
        SqlDataReader rs = objCmd.ExecuteReader();

        rs.Read();
        string ProductName=rs.GetString(2);
         string ProductImageUrl= rs.GetString(3);
         Double Price = rs.GetDouble(4);
       

        Cart c = (Cart)Session["cart"];
        c.Insert(pro_id, Price, 1, ProductName, ProductImageUrl);
        Response.Write("");
        Label1.Text = "Product added successfully!!";
        Session["cart"] = c;
       Response.Redirect("subCategory.aspx");
           }
    }
