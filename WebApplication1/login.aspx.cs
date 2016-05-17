using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
        {
            Response.Redirect("home.aspx");
        }
        else
        {

        Label2.Text = "Username or password incorrect";

        }
        
    }
   
}