using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class assign : System.Web.UI.Page
{
    public int findout(int i, int t)
    {
        int h = i * 100;
        int j = h / t;
        return j;
    }
    public int findtotal(System.Int32 a, System.Int32 b, System.Int32 c, System.Int32 d, System.Int32 e)
    {
        System.Int32 z = a + b + c + d + e;
        return z;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);


        if (!IsPostBack)
        {

            SqlDataAdapter da = new SqlDataAdapter("select sid from student_data", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            DropDownList3.DataTextField = "sid";
            DataBind();

            SqlDataAdapter da1 = new SqlDataAdapter("select cid from class_data", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            DropDownList4.DataSource = dt1;
            DropDownList4.DataTextField = "cid";
            DataBind();
        }

           /* SqlDataAdapter da3 = new SqlDataAdapter("select assignment_1,mid_term,Assignment_2,Final,Project from allocate a where a.Id ='" + DropDownList4.Text + "' ", con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            int a = Convert.ToInt32(dt3.Rows[0][0].ToString());
            int b = Convert.ToInt32(dt3.Rows[0][1].ToString());
            int c = Convert.ToInt32(dt3.Rows[0][2].ToString());
            int d = Convert.ToInt32(dt3.Rows[0][3].ToString());
            int q = Convert.ToInt32(dt3.Rows[0][4].ToString());
            if (!IsPostBack)
            {
                for (int i = 0; i <= a; i++)
                {
                    DropDownList2.Items.Add(i.ToString());
                }
                for (int i = 0; i <= b; i++)
                {
                    DropDownList6.Items.Add(i.ToString());
                }
                for (int i = 0; i <= c; i++)
                {
                    DropDownList8.Items.Add(i.ToString());
                }
                for (int i = 0; i <= d; i++)
                {
                    DropDownList10.Items.Add(i.ToString());
                }
                for (int i = 0; i <= q; i++)
                {
                    DropDownList12.Items.Add(i.ToString());
                }
        




        }*/

    }
   
  


  
    protected void Button18_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlDataAdapter da12 = new SqlDataAdapter("select Id from class_view c where c.Id='" + DropDownList3.Text + "'", con);
        DataTable dt12 = new DataTable();
        da12.Fill(dt12);
        if (dt12.Rows.Count != 0)
        {
            Response.Write("<script language='javascript'>alert('Assignments already present for ' '" + DropDownList1.Text + "')</script>");
        }
        else
        {



            con.Open();
            SqlCommand cmd6 = new SqlCommand("insert into assign_data(sid,cid,atype,points) values('" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "')", con);
            cmd6.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Class Information added Successfully";

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into assign_data(sid,cid,atype,points) values('" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList11.Text + "','" + DropDownList12.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Class Information added Successfully";

            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into assign_data(sid,cid,atype,points) values('" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList9.Text + "','" + DropDownList10.Text + "')", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Class Information added Successfully";

            con.Open();
            SqlCommand cmd2 = new SqlCommand("insert into assign_data(sid,cid,atype,points) values('" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList7.Text + "','" + DropDownList8.Text + "')", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Class Information added Successfully";

            con.Open();
            SqlCommand cmd3 = new SqlCommand("insert into assign_data(sid,cid,atype,points) values('" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "')", con);
            cmd3.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Class Information added Successfully";
            try
            {

                SqlDataAdapter da11 = new SqlDataAdapter("select fname from student_data s where s.sid = '" + DropDownList3.Text + "' ", con);
                DataTable dt11 = new DataTable();
                da11.Fill(dt11);
                Label11.Text = dt11.Rows[0][0].ToString();

                int q = Convert.ToInt32(DropDownList2.Text);
                int w = Convert.ToInt32(DropDownList6.Text);
                int r = Convert.ToInt32(DropDownList8.Text);
                int y = Convert.ToInt32(DropDownList10.Text);
                int u = Convert.ToInt32(DropDownList12.Text);
                int i = findtotal(q,w,r,y,u);
                Label6.Text = Convert.ToString(i);

                SqlDataAdapter da2 = new SqlDataAdapter("select Total from allocate a where a.Id='" + DropDownList4.Text + "'", con);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                int c = Convert.ToInt32(dt2.Rows[0][0].ToString());
                int t = c;

                Label7.Text = t.ToString();

                int g = i * 100;

                int k = findout(i, t);

                Label8.Text = k.ToString() + " %";

                //grade

                if (k >= 90 && k <= 100)
                {
                    Label9.Text = "A";
                    Label10.Text = "1";
                    Label9.ForeColor = System.Drawing.Color.Green;

                }

                else if (k >= 80 && k <= 89)
                {
                    Label9.Text = "B";
                    Label10.Text = "2";
                    Label9.ForeColor = System.Drawing.Color.Green;
                }

                else if (k >= 75 && k <= 79)
                {
                    Label9.Text = "C";
                    Label10.Text = "3";
                    Label9.ForeColor = System.Drawing.Color.Green;
                }

                else if (k >= 70 && k <= 74)
                {
                    Label9.Text = "D";
                    Label10.Text = "4";
                    Label9.ForeColor = System.Drawing.Color.Orange;
                }

                else if (k >= 0 && k <= 69)
                {
                    Label9.Text = "F";
                    Label10.Text = "5";
                    Label9.ForeColor = System.Drawing.Color.Red;
                }

                 con.Open();
                /* SqlDataAdapter da7 = new SqlDataAdapter("select average from class_view a'", con);
                 DataTable dt7 = new DataTable();
                 da7.Fill(dt7);
                int l = Convert.ToInt32(dt2.Rows[0][0].ToString());
                if(l==null)
                {
                    Label10.Text = "1";
                }
                else
                {

                }*/


               
                SqlCommand cmd10 = new SqlCommand("insert into class_view values('" + DropDownList4.Text + "','" + DropDownList3.Text + "','" + Label11.Text + "','" + DropDownList2.Text + "','" + DropDownList6.Text + "','" + DropDownList8.Text + "','" + DropDownList10.Text + "','" + DropDownList12.Text + "','" + Label8.Text + "','" + Label9.Text + "','" + Label10.Text + "','" + Label7.Text + "')", con);
           


                try

                {
                    cmd10.ExecuteNonQuery();
                }
                catch
                {
                    throw new ArgumentException("No grade distribution defined");
                    Console.WriteLine("The marks for student already assigned. Please go to the Gradebook to change the grades.");
                }
                con.Close();
                Label5.Text = "Class Information added Successfully";
            }
            catch
            {
                Console.WriteLine("anything");
                throw new ArgumentException("No grade distribution defined");
            }
        }
        //data
    }





    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        try
        {
            SqlDataAdapter da3 = new SqlDataAdapter("select assignment_1,mid_term,Assignment_2,Final,Project from allocate a where a.Id ='" + DropDownList4.Text + "' ", con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            int a = Convert.ToInt32(dt3.Rows[0][0].ToString());
            int b = Convert.ToInt32(dt3.Rows[0][1].ToString());
            int c = Convert.ToInt32(dt3.Rows[0][2].ToString());
            int d = Convert.ToInt32(dt3.Rows[0][3].ToString());
            int q = Convert.ToInt32(dt3.Rows[0][4].ToString());
            DropDownList12.Items.Clear();
            DropDownList6.Items.Clear();
            DropDownList8.Items.Clear();
            DropDownList10.Items.Clear();
            DropDownList12.Items.Clear();

            for (int i = 0; i <= a; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (int i = 0; i <= b; i++)
            {
                DropDownList6.Items.Add(i.ToString());
            }
            for (int i = 0; i <= c; i++)
            {
                DropDownList8.Items.Add(i.ToString());
            }
            for (int i = 0; i <= d; i++)
            {
                DropDownList10.Items.Add(i.ToString());
            }
            for (int i = 0; i <= q; i++)
            {
                DropDownList12.Items.Add(i.ToString());
            }
        }
        catch
        {
            throw new ArgumentException("No grade distribution defined");
        }
         }
}