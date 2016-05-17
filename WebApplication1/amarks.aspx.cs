using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



public partial class amarks : System.Web.UI.Page
{
    public int add (System.Int32 a, System.Int32 b, System.Int32 c,System.Int32 d,System.Int32 e)
    {
        System.Int32 z = a + b + c + d + e;
        return z;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        if (!IsPostBack)
        {
            for(int i=0;i<=100;i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (int i = 0; i <= 100; i++)
            {
                DropDownList6.Items.Add(i.ToString());
            }
            for (int i = 0; i <= 100; i++)
            {
                DropDownList8.Items.Add(i.ToString());
            }
            for (int i = 0; i <= 100; i++)
            {
                DropDownList10.Items.Add(i.ToString());
            }
            for (int i = 0; i <= 100; i++)
            {
                DropDownList12.Items.Add(i.ToString());
            }


            SqlDataAdapter da1 = new SqlDataAdapter("select cid from class_data", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            DropDownList4.DataSource = dt1;
            DropDownList4.DataTextField = "cid";
            DataBind();

        }

    }





    protected void Button18_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        try
        {
            int i = Convert.ToInt32(DropDownList2.Text);
            int j = Convert.ToInt32(DropDownList6.Text);
            int k = Convert.ToInt32(DropDownList8.Text);
            int l = Convert.ToInt32(DropDownList10.Text);
            int m = Convert.ToInt32(DropDownList12.Text);
            int n = add(i,j,k,l,m);
            Label6.Text = Convert.ToString(n);
            con.Open();
            SqlCommand cmd6 = new SqlCommand("insert into allocate values('" + DropDownList4.Text + "','" + DropDownList2.Text + "','" + DropDownList6.Text + "','" + DropDownList8.Text + "','" + DropDownList10.Text + "','" + DropDownList12.Text + "','" + Label6.Text + "')", con);
            cmd6.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Class Information added Successfully";
        }
        catch(Exception b)
        {
            Console.WriteLine("Grade distribution for the class already defined ",b);
        }
    }
 }