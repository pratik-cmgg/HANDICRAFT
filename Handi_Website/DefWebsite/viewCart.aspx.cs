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

public partial class viewCart : System.Web.UI.Page
{
 Cart c;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["customeremail"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
            c = (Cart)Session["cart"];





           if (!Page.IsPostBack)
           {


               ReBindGrid();
           }

           if (c.Items == null)
           {

               TotalLabel.Visible = false;
           } 
    }
    protected void grdCart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdCart.EditIndex = e.NewEditIndex;
        ReBindGrid();
    }
    protected void grdCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQuantity = (TextBox)grdCart.Rows[e.RowIndex].Cells[2].Controls[0];
        int Quantity = Convert.ToInt32(txtQuantity.Text);
        if (Quantity == 0)
        {

            c.Items.RemoveAt(e.RowIndex);
        }




        else
        {

            c.Items[e.RowIndex].Quantity = Quantity;
        }
        grdCart.EditIndex = -1;
        ReBindGrid();
    }
    protected void grdCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdCart.EditIndex = -1;
        ReBindGrid();
    }
    protected void grdCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        c.Items.RemoveAt(e.RowIndex);
        ReBindGrid();
    }
    private void ReBindGrid()
    {
        //if (c.Items == null)
        //{
        //    Response.Redirect("category.aspx");
        //}

        grdCart.DataSource = c.Items;

        DataBind();
        TotalLabel.Text = string.Format("Total:{0,19:C}", c.Total);
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("home.aspx");
    }

    public static int GetRandomNumber(int min, int max)
    {
        Random getrandom = new Random();
        object syncLock = new object();

        lock (syncLock)
        { // synchronize
            return getrandom.Next(min, max);
        }
    }

    protected void Btnorder_Click(object sender, EventArgs e)
    {
        try
        {
            //           int orderid =GetRandomNumber(1, 100);
         //   string ErrMessage;
            string strconn;
            strconn = ConfigurationManager.ConnectionStrings["handiCon"].ToString();
            SqlConnection objConn = new SqlConnection(strconn);

            SqlCommand cmd = objConn.CreateCommand();



            cmd.Connection = objConn;

            SqlDataAdapter MyDataAdapter = new SqlDataAdapter();
            DataTable MyDataTable = new DataTable();

            int orderid;
            cmd.CommandText = "select max(orderid) from tblorder";
            MyDataAdapter.SelectCommand = cmd;
            objConn.Open();
            MyDataAdapter.Fill(MyDataTable);

            if (MyDataTable.Rows[0].ItemArray[0] is DBNull)
                orderid = 1;
            else
                orderid = Convert.ToInt32(MyDataTable.Rows[0].ItemArray[0]) + 1;
            objConn.Close();

            string orderdetails = "Your Order Details are as follows:\n";
            orderdetails += "Orderid=" + orderid;
            string customeremailid = Session["customeremail"].ToString();
            //c = (Cart)Session["cart"];
            string totalamount = c.Total.ToString();
            //DateTime orderdate = DateTime.Now;
            //string orderdate = DateTime.Now.ToString();
            //string orderdate=Convert.ToDateTime(DateTi
            //  me.Now).ToString("MM/dd/yyyy");

            //storingn order in order table




            objConn.Open();
            SqlCommand cmd1 = objConn.CreateCommand();


            cmd1.CommandText = "insert into tblorder(orderid,order_date,cust_mail,tot_amount) values(@orderid,@order_date,@customeremailid,@totalamount)";

            cmd1.Connection = objConn;


            cmd1.Parameters.AddWithValue("@orderid", orderid);

            cmd1.Parameters.AddWithValue("@order_date", DateTime.Now);

            cmd1.Parameters.AddWithValue("@customeremailid", customeremailid);

            cmd1.Parameters.AddWithValue("@totalamount", totalamount);

            cmd1.ExecuteNonQuery();
            orderdetails += "Order Date=" + DateTime.Now.ToString();
            orderdetails += "Total Amount=" + totalamount;




            int productid, quantity;
            double price;
            string productname, imgurl;
            SqlCommand cmd2 = objConn.CreateCommand();
            cmd2.Connection = objConn;
            cmd2.CommandText = "insert into orderedproducts values(@oid,@productid,@productname,@productimgurl,@quantity,@price)";

            foreach (CartItem item in c.Items)
            {
                cmd2.Parameters.Clear();

                Response.Write("Adding items to ordered table");

                productid = item.ProductID;
                price = item.Price;
                productname = item.ProductName;
                imgurl = item.ImageUrl;
                quantity = item.Quantity;


                Response.Write(productid);

                cmd2.Parameters.AddWithValue("@oid", orderid);
                cmd2.Parameters.AddWithValue("@productid", productid);
                cmd2.Parameters.AddWithValue("@productname", productname);
                cmd2.Parameters.AddWithValue("@productimgurl", @imgurl);
                cmd2.Parameters.AddWithValue("@quantity", quantity);
                cmd2.Parameters.AddWithValue("@price", price);
                cmd2.ExecuteNonQuery();
                orderdetails += "ProductName" + productname;
                orderdetails += "Quantity" + quantity;
                orderdetails += "Price" + price;

            }

            Session["orderdetails"] = orderdetails;



        }
        catch (Exception oe) { Response.Write(oe.Message); }
        Response.Redirect("confirmOrder.aspx");
    }

}