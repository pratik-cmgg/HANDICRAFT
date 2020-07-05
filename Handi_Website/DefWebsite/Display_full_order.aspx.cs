using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Display_full_order : System.Web.UI.Page
{
    
    int tot = 0;
    int orderid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["customeremail"] == null)
        {
            Response.Redirect("login.aspx");
        }
        //orderid = Convert.ToInt32(Request.QueryString["id"].ToString());
        string url = ConfigurationManager.ConnectionStrings["handicon"].ToString();
        SqlConnection con = new SqlConnection(url);
        orderid = Convert.ToInt32(Request.QueryString["orderid"].ToString());
        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from orderedproducts where orderid="+ orderid +"";
        DataTable dt1 = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        da1.Fill(dt1);
        foreach (DataRow dr in dt1.Rows)
        { 
            tot=Convert.ToInt32(dr["price"].ToString()) * Convert.ToInt32(dr["quantity"].ToString());
        }
        Repeater1.DataSource = dt1;
        Repeater1.DataBind();
        con.Close();

        l1.Text = "total Order price:" + tot.ToString();

       

    }
}