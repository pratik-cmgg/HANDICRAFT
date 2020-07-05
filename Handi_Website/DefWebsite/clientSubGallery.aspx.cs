using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    protected bool ShowHidelink()
    {
        bool bStatus = false;

        if (Session["customername"] == null)
        {
            bStatus = false;

        }
        else
        {
            bStatus = true;


        }
        return bStatus;

    }
    protected void calladdtocart()
    {
        Response.Redirect("addToCart.aspx");
    }
    }
