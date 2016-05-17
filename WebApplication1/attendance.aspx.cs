using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class attendance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select sid from student_data", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "sid";
            DataBind();

            SqlDataAdapter da1 = new SqlDataAdapter("select cid from class_data", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            DropDownList2.DataSource = dt1;
            DropDownList2.DataTextField = "cid";
            DataBind();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Random r = new Random();
        int i = r.Next(1111, 9999);
        TextBox4.Text = i.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into atten_data values('" + TextBox4.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox3.Text + "','" + RadioButtonList1.Text + "','" + DropDownList3.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Attendance Information added Successfully";
        }
        catch(Exception k)
        {
            Console.WriteLine("exception occured. assignment with the same id already present {0}", k);
        }
    }
}