using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class rgraph : System.Web.UI.Page
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

    
    protected void Button1_Click(object sender, EventArgs e)
    {
      
      
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select Assignment_1,Mid_term,Assignment_2,Final,Project from class_view c where c.Id='" + DropDownList1.Text + "'", con);
            DataTable dt8 = new DataTable();
            da.Fill(dt8);
            int a = Convert.ToInt32(dt8.Rows[0][0].ToString());
            int b = Convert.ToInt32(dt8.Rows[0][1].ToString());
            int c = Convert.ToInt32(dt8.Rows[0][2].ToString());
            int d = Convert.ToInt32(dt8.Rows[0][3].ToString());
            int f = Convert.ToInt32(dt8.Rows[0][4].ToString());
            this.Chart3.Series["Assignment_1"].Points.AddXY("Assignment1", a);
            this.Chart3.Series["Assignment_1"].Points.AddXY("midterm", b);
            this.Chart3.Series["Assignment_1"].Points.AddXY("Assignment2", c);
            this.Chart3.Series["Assignment_1"].Points.AddXY("final", d);
            this.Chart3.Series["Assignment_1"].Points.AddXY("Project", f);
        }
        catch(Exception k)
        {
            Console.WriteLine("No Assignments found for the given ID {0}", k);
        }
    }
    protected void Chart3_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
