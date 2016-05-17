using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class student : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into student_data(sid,fname,lname,email) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Student Information added Successfully";
        }
        catch (Exception l)
        {
            Console.WriteLine("Student with the same id already exists", l);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Random r = new Random();
        int i = r.Next(1111, 9999);
        TextBox1.Text = i.ToString();
    }
}