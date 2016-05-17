using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class ratten : System.Web.UI.Page
{
    public int att_calculate(int i, int t)
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
            DropDownList4.DataSource = dt;
            DropDownList4.DataTextField = "sid";
            DataBind();

        }
    }
  
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        SqlDataAdapter da = new SqlDataAdapter("select count(*) from atten_data where status='Present' and sid='"+DropDownList4.Text+"' and amonth='"+DropDownList3.Text+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int i=Convert.ToInt32(dt.Rows[0][0].ToString());

        Label1.Text = i.ToString()+ " days";

        if(DropDownList3.Text=="APR" || DropDownList3.Text=="JUNE" || DropDownList3.Text=="SEPT" || DropDownList3.Text=="NOV")
        {
           Session["month"]="30";
        }
        else if(DropDownList3.Text=="FEB"){
            Session["month"]="28";
        }
        else{
 Session["month"]="31";
        }

        int k = Convert.ToInt32(Session["month"]);
        int l = att_calculate(i,k);

        SqlDataAdapter da1 = new SqlDataAdapter("select count(*) from atten_data where status='Absent' and sid='" + DropDownList4.Text + "' and amonth='" + DropDownList3.Text + "'", con);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        int d = Convert.ToInt32(dt1.Rows[0][0].ToString());
        Label2.Text = d.ToString() +" days";


        Label3.Text = k.ToString() + " days";
        Label4.Text = l.ToString() + " %";



    }
}