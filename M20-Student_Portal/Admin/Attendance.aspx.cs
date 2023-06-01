using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace M20_Student_Portal.Admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select RollNo,Name from Student where SmartcardID = '" + TextBox1.Text + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr["RollNo"].ToString();
                TextBox10.Text = dr["Name"].ToString();
            }
            else
            {
                Response.Write("<script>alert('No data found!')</script>");
            }
            con.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double working, absent, present, total, percentage;
            working = double.Parse(TextBox3.Text);
            absent = double.Parse(TextBox4.Text);
            present = working - absent;
            total = present/working;
            percentage = total*100.00;
            TextBox5.Text = present.ToString();
            TextBox6.Text = percentage.ToString();
            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Attendance values(@SmartcardID,@Workingdays,@Absent,@Present,@Percentage)", con);
            cmd.Parameters.AddWithValue("@SmartcardID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Workingdays", working);
            cmd.Parameters.AddWithValue("@Absent", absent);
            cmd.Parameters.AddWithValue("@Present", present);
            cmd.Parameters.AddWithValue("@Percentage", percentage);
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
            con.Close();
            Response.Write("<script>alert('Data entered successfully!')</script>");
        }

        protected void TextBox3_TextChanged()
        {

        }
    }
}