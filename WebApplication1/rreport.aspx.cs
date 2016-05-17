using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class rreport : System.Web.UI.Page
{
    public int calculate(System.Int32 a, System.Int32 b, System.Int32 c, System.Int32 d, System.Int32 e)
    {
        System.Int32 z = a + b + c + d + e;
        return z;
    }
    public int percentage(int i, int t)
    {
        int h = i * 100;
        int j = h / t;
        return j;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        SqlDataAdapter da1 = new SqlDataAdapter("select Id from class_view c where c.Id='" + DropDownList1.Text + "'", con);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        if (dt1.Rows.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('No Assignments for this ' + '" + DropDownList1.Text + "')</script>");
            pnl.Visible = false;
        }


       

    }
   

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        pnl.Visible = true;
        try
        {
            SqlDataAdapter da6 = new SqlDataAdapter("select Assignment_1,Mid_term,Assignment_2,Final,Project from class_view c where c.Id='" + DropDownList1.Text + "' ", con);
            DataTable dt6 = new DataTable();
            da6.Fill(dt6);
            int a = Convert.ToInt32(dt6.Rows[0][0].ToString());
            int b = Convert.ToInt32(dt6.Rows[0][1].ToString());
            int z = Convert.ToInt32(dt6.Rows[0][2].ToString());
            int d = Convert.ToInt32(dt6.Rows[0][3].ToString());
            int f = Convert.ToInt32(dt6.Rows[0][4].ToString());
            int i = calculate(a,b,z,d,f);
            Label8.Text = i.ToString();
            //percentage
            SqlDataAdapter da8 = new SqlDataAdapter("select Total from class_view c where c.Id='" + DropDownList1.Text + "' ", con);
            DataTable dt8 = new DataTable();
            da8.Fill(dt8);
            int t = Convert.ToInt32(dt8.Rows[0][0].ToString());
            Label5.Text = t.ToString();

            int g = i * 100;

            int k = percentage(i,t);

            Label9.Text = k.ToString() + " %";

            //grade

            if (k >= 90 && k <= 100)
            {
                Label7.Text = "A";
                Label10.Text = "1";
                Label7.ForeColor = System.Drawing.Color.Green;

            }

            else if (k >= 80 && k <= 89)
            {
                Label7.Text = "B";
                Label10.Text = "2";
                Label7.ForeColor = System.Drawing.Color.Green;
            }

            else if (k >= 75 && k <= 79)
            {
                Label7.Text = "C";
                Label10.Text = "3";
                Label7.ForeColor = System.Drawing.Color.Green;
            }

            else if (k >= 70 && k <= 74)
            {
                Label7.Text = "D";
                Label10.Text = "4";
                Label7.ForeColor = System.Drawing.Color.Orange;
            }

            else if (k >= 0 && k <= 69)
            {
                Label7.Text = "F";
                Label10.Text = "5";
                Label7.ForeColor = System.Drawing.Color.Red;
            }


            //data

            SqlDataAdapter da = new SqlDataAdapter("select fname,email,Professor,Assignment_1,Mid_term,Assignment_2,Final,Project from student_data s,class_view q,assign_data a,class_data c where s.sid=q.Id and a.cid=c.cid and s.sid = '" + DropDownList1.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Label1.Text = dt.Rows[0][0].ToString();
            Label2.Text = dt.Rows[0][1].ToString();
            Label12.Text = dt.Rows[0][3].ToString();
            Label13.Text = dt.Rows[0][4].ToString();
            Label17.Text = dt.Rows[0][5].ToString();
            Label18.Text = dt.Rows[0][6].ToString();
            Label19.Text = dt.Rows[0][7].ToString();
        }
        catch
        {
            Console.WriteLine("No assignments for the ID");
        }
    }
}