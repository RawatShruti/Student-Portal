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
    public partial class WebForm3 : System.Web.UI.Page
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
            double ai, ail, web, webl, cd, dcn, project, total, Percentage, max;
            ai = double.Parse(TextBox3.Text);
            ail = double.Parse(TextBox4.Text);
            web = double.Parse(TextBox5.Text);
            webl = double.Parse(TextBox6.Text);
            cd = double.Parse(TextBox7.Text);
            dcn = double.Parse(TextBox8.Text);
            project = double.Parse(TextBox9.Text);
            total = ai + ail + web + webl + cd + dcn + project;
            max = 700.00;
            Percentage = total / 7;
            TextBox11.Text = max.ToString();
            TextBox12.Text = total.ToString();
            TextBox14.Text = Percentage.ToString();
            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Result values(@SmartcardID,@AI,@AILab,@WebD,@WebDLab,@CD,@DCN,@ProjectLab,@MaxMarks,@Obtained, @Percentage)", con);
            cmd.Parameters.AddWithValue("@SmartcardID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@AI", ai);
            cmd.Parameters.AddWithValue("@AILab", ail);
            cmd.Parameters.AddWithValue("@WebD", web);
            cmd.Parameters.AddWithValue("@WebDLab", webl);
            cmd.Parameters.AddWithValue("@CD", cd);
            cmd.Parameters.AddWithValue("@DCN", dcn);
            cmd.Parameters.AddWithValue("@ProjectLab", project);
            cmd.Parameters.AddWithValue("@MaxMarks", max);
            cmd.Parameters.AddWithValue("@Obtained", total);
            cmd.Parameters.AddWithValue("@Percentage", Percentage);
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
            con.Close();
            Response.Write("<script>alert('Data entered successfully!')</script>");
        }
    }
}