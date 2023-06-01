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
    public partial class WebForm4 : System.Web.UI.Page
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
            double total, paid,due;
            total = double.Parse(TextBox3.Text);
            paid = double.Parse(TextBox4.Text);
            due = total - paid;
            TextBox5.Text = due.ToString();
            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Fee values(@SmartcardID,@TotalFee,@PaidFee,@DueFee)", con);
            cmd.Parameters.AddWithValue("@SmartcardID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@TotalFee", total);
            cmd.Parameters.AddWithValue("@PaidFee", paid);
            cmd.Parameters.AddWithValue("@DueFee", due);
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
            con.Close();
            Response.Write("<script>alert('Data entered successfully!')</script>");
        }

        protected void TextBox4_TextChanged()
        {

        }
    }
}