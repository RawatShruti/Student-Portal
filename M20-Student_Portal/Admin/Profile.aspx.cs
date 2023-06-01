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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label30.Text = Session["id"].ToString();
                Label12.Visible = false;
                string g = "";
                string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Admin where SmartcardID = '" + Label30.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["SmartcardID"].ToString();
                    TextBox2.Text = dr["Name"].ToString();
                    TextBox9.Text = dr["DOB"].ToString();
                    g = dr["Gender"].ToString();
                    TextBox8.Text = dr["DOJ"].ToString();
                    TextBox3.Text = dr["Address"].ToString();
                    TextBox4.Text = dr["ContactNo"].ToString();
                    TextBox5.Text = dr["Email"].ToString();
                    TextBox6.Text = dr["Password"].ToString();
                }
                if (g.Equals("Male"))
                {
                    RadioButton1.Checked = true;
                }
                else if (g.Equals("Female"))
                {
                    RadioButton2.Checked = true;
                }
                else
                {
                    RadioButton3.Checked = true;
                }
                con.Close();
                Button1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
            TextBox9.Enabled = true;
            TextBox8.Enabled = true;
            RadioButton1.Enabled = true;
            RadioButton2.Enabled = true;
            RadioButton3.Enabled = true;
            Button2.Visible = true;
            Button3.Visible = true;
            Button1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Password.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String g;
            if (RadioButton1.Checked)
            {
                g = "Male";
            }
            else if (RadioButton2.Checked)
            {
                g = "Female";
            }
            else
            {
                g = "Other";
            }
            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Admin set Name=@Name, DOB=@DOB,Gender=@Gender,DOJ=@DOJ,Address=@Address,ContactNo=@ContactNo,Email=@Email where SmartcardID= '" + TextBox1.Text + "'", con);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@DOB", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Gender", g);
            cmd.Parameters.AddWithValue("@DOJ", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ContactNo", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox5.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label12.Visible = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
            TextBox9.Enabled = false;
            TextBox8.Enabled = false;
            RadioButton1.Enabled = false;
            RadioButton2.Enabled = false;
            RadioButton3.Enabled = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button1.Visible = true;
        }
    }
}