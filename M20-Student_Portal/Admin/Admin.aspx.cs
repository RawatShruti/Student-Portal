﻿using System;
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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label10.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String g;
            if(RadioButton1.Checked)
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
            SqlCommand cmd = new SqlCommand("Insert into Admin values(@ID,@Name,@DOB,@Gender,@DOJ,@Address,@Contact,@Email,@Password)", con);
            cmd.Parameters.AddWithValue("@ID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@DOB", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Gender", g);
            cmd.Parameters.AddWithValue("@DOJ", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Contact", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data entered successfully!')</script>");
            //Label10.Visible = true;
            GridView1.DataBind();
            con.Close();
        }
    }
}