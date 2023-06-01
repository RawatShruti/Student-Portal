using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace M20_Student_Portal.Student
{
    public partial class WebForm1 : System.Web.UI.Page
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
                //Label30.Text = "MCA1";
                Label12.Visible = false;
                string g = "";
                string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Student where SmartcardID = '" + Label30.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["SmartcardID"].ToString();
                    TextBox2.Text = dr["Name"].ToString();
                    TextBox9.Text = dr["DOB"].ToString();
                    g = dr["Gender"].ToString();
                    DropDownList1.SelectedValue = dr["Course"].ToString();
                    TextBox8.Text = dr["RollNo"].ToString();
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
            RadioButton1.Enabled = true;
            RadioButton2.Enabled = true;
            RadioButton3.Enabled = true;
            DropDownList1.Enabled = true;
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
            if (DropDownList1.SelectedValue == "--Select--")
            {
                Label12.Text = "Please select Valid Course";
                Label12.ForeColor = System.Drawing.Color.Red;
                Label12.Visible = true;
            }
            else
            {
                string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                /*SqlCommand cmd = new SqlCommand("UPDATE [Student] SET [Name] = @Name, [DOB] = @DOB, [Gender] = @Gender, [Course] = @Course, [RollNo] = @RollNo, [ContactNo] = @ContactNo, [Email] = @Email, [Address] = @Address, [Password] = @Password WHERE [SmartcardID] = @SmartcardID ", con);
                cmd.Parameters.AddWithValue("@SmartcardID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@DOB", TextBox9.Text);
                cmd.Parameters.AddWithValue("@Gender", g);
                cmd.Parameters.AddWithValue("@Course", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@RollNo", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@ContactNo", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox6.Text);*/
                SqlCommand cmd = new SqlCommand("Insert into Student values(@Name,@DOB,@Gender,@Course,@RollNo,@Address,@Contact,@Email,@Password) where SmartcardID = '"+ Label30.Text + "' ", con);
                //cmd.Parameters.AddWithValue("@ID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@DOB", TextBox9.Text);
                cmd.Parameters.AddWithValue("@Gender", g);
                cmd.Parameters.AddWithValue("@Course", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@RollNo", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Contact", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox6.Text);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("Select * from Student where SmartcardID = '" + Label30.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["SmartcardID"].ToString();
                    TextBox2.Text = dr["Name"].ToString();
                    TextBox9.Text = dr["DOB"].ToString();
                    g = dr["Gender"].ToString();
                    DropDownList1.SelectedValue = dr["Course"].ToString();
                    TextBox8.Text = dr["RollNo"].ToString();
                    TextBox3.Text = dr["Address"].ToString();
                    TextBox4.Text = dr["ContactNo"].ToString();
                    TextBox5.Text = dr["Email"].ToString();
                    TextBox6.Text = dr["Password"].ToString();
                }
                con.Close();
                Label12.Visible = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox5.Enabled = false;
                TextBox9.Enabled = false;
                RadioButton1.Enabled = false;
                RadioButton2.Enabled = false;
                RadioButton3.Enabled = false;
                DropDownList1.Enabled = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button1.Visible = true;
            }
        }
    }
}