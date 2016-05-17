using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class rgrade : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       /*  SqlDataAdapter da = new SqlDataAdapter("select fname,points from assign_data a, student_data s where a.sid=s.sid", con);
        DataTable dt8 = new DataTable();
        da.Fill(dt8);
        Label11.Text = dt8.Rows[0][0].ToString();
        Label12.Text = dt8.Rows[1][0].ToString();
        Label3.Text = dt8.Rows[0][1].ToString();
        Label5.Text = dt8.Rows[0][0].ToString();
        Label4.Text = dt8.Rows[1][1].ToString();
        Label6.Text = dt8.Rows[1][0].ToString();
        int i = Convert.ToInt32(dt8.Rows[0][1].ToString());
        int j = Convert.ToInt32(dt8.Rows[1][1].ToString());
        int k = (i+j)/2;
        Label13.Text = k.ToString();
        int a = Convert.ToInt32(dt8.Rows[2][1].ToString());
        int b = Convert.ToInt32(dt8.Rows[3][1].ToString());
        int c = (a + b) / 2;
        Label14.Text = c.ToString();*/






    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        //SqlDataAdapter da1 = new SqlDataAdapter("select Id,name,Assignment_1,Mid_Term,Assignment_2,final,project,average from class_view c where c.ID = '""'", con);
        //DataSet dt1 = new DataSet();
        //da1.Fill(dt1);

    }
}