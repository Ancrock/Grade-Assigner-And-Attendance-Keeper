using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class home : System.Web.UI.Page
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


        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        ////data
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select fname,email,Rank,Grade,Average from student_data s,class_view k where s.sid=k.Id and k.Id='" + DropDownList1.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Label1.Text = dt.Rows[0][0].ToString();
            Label2.Text = dt.Rows[0][1].ToString();
            Label3.Text = dt.Rows[0][2].ToString();
            Label4.Text = dt.Rows[0][3].ToString();
            Label6.Text = dt.Rows[0][4].ToString();

            SqlDataAdapter da6 = new SqlDataAdapter("select Assignment_1,Mid_term,Assignment_2,Final,Project from class_view c where c.Id='" + DropDownList1.Text + "' ", con);
            DataTable dt6 = new DataTable();
            da6.Fill(dt6);
            int a = Convert.ToInt32(dt6.Rows[0][0].ToString());
            int b = Convert.ToInt32(dt6.Rows[0][1].ToString());
            int z = Convert.ToInt32(dt6.Rows[0][2].ToString());
            int d = Convert.ToInt32(dt6.Rows[0][3].ToString());
            int f = Convert.ToInt32(dt6.Rows[0][4].ToString());
            int i = a + b + z + d + f;
            Label5.Text = i.ToString();
        }
        catch(Exception l)
        {
            Console.WriteLine("No assignment for this ID",l);
        }

    }
}