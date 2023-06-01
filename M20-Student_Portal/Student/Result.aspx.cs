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
    public partial class WebForm5 : System.Web.UI.Page
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
                string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Result where SmartcardID = '" + Label30.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["SmartcardID"].ToString();
                    TextBox3.Text = dr["AI"].ToString();
                    TextBox4.Text = dr["AILab"].ToString();
                    TextBox5.Text = dr["WebD"].ToString();
                    TextBox6.Text = dr["WebDLab"].ToString();
                    TextBox7.Text = dr["CD"].ToString();
                    TextBox8.Text = dr["DCN"].ToString();
                    TextBox9.Text = dr["ProjectLab"].ToString();
                    TextBox11.Text = dr["MaxMarks"].ToString();
                    TextBox12.Text = dr["Obtained"].ToString();
                    TextBox14.Text = dr["Percentage"].ToString();
                }
                con.Close();
            }
        }

        protected void TextBox5_TextChanged()
        {

        }

        protected void TextBox7_TextChanged()
        {

        }

        protected void TextBox8_TextChanged()
        {

        }

        protected void TextBox11_TextChanged()
        {

        }
    }
}