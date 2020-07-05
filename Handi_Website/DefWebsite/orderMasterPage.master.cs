using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class order : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["customeremail"] == null)
        {
            btnLogout.Text = "Login";

           
        }



        else
            btnLogout.Text = "Logout";
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
       if (btnLogout.Text.Equals("Logout"))
        {
            Session.Clear();

             Session.Abandon();
             btnLogout.Text = "Login";
            Response.Redirect("home.aspx");
        }
        else if (btnLogout.Text.Equals("Login"))
        {
            btnLogout.Text = "Logout";
            Response.Redirect("login.aspx");
        }
    }
       
    
}
