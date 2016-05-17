using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class stud : System.Web.UI.Page
{
  /*  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            get();
        }
    }
    public void get()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from class_data", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Label cname = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lbl");
        Label sname = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lbl1");
        Label sdate = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lbl2");
        Label edate = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lbl3");
        Label tname = (Label)GridView1.Rows[e.NewEditIndex].FindControl("lbl4");

        TextBox txt_cname = (TextBox)GridView1.Rows[e.NewEditIndex].FindControl("txt_class");
        TextBox txt_sname = (TextBox)GridView1.Rows[e.NewEditIndex].FindControl("txt_sname");
        TextBox txt_sdate = (TextBox)GridView1.Rows[e.NewEditIndex].FindControl("txt_sdate");
        TextBox txt_edate = (TextBox)GridView1.Rows[e.NewEditIndex].FindControl("txt_edate");
        TextBox txt_tname = (TextBox)GridView1.Rows[e.NewEditIndex].FindControl("txt_tname");

        cname.Visible = false; sname.Visible = false; sdate.Visible = false; edate.Visible = false; tname.Visible = false;
        txt_cname.Visible = true; txt_edate.Visible = true; txt_sdate.Visible = true; txt_sname.Visible = true; txt_tname.Visible = true;

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label cid = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_id");
         TextBox txt_cname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_class");
        TextBox txt_sname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_sname");
        TextBox txt_sdate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_sdate");
        TextBox txt_edate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_edate");
        TextBox txt_tname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_tname");

        con.Open();
        SqlCommand cmd = new SqlCommand("update class_data set cname='" + txt_cname.Text + "',sname='" + txt_sname.Text + "',sdate='" + txt_sdate.Text + "',edate='" + txt_edate.Text + "',tname='" + txt_tname.Text + "' where cid='" + cid.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        get();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label cid = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_id");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from class_data where cid='" + cid.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        get();

    }*/
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}