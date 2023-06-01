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
    public partial class WebForm4 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select * from Leave where SmartcardID = '" + Label30.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["SmartcardID"].ToString();
                    TextBox3.Text = dr["Hostel"].ToString();
                    TextBox4.Text = dr["Reason"].ToString();
                    DropDownList1.SelectedValue = dr["Status"].ToString();
                    TextBox5.Text = dr["From"].ToString();
                    TextBox6.Text = dr["To"].ToString();
                }
                con.Close();
            }
        }

        protected void TextBox6_TextChanged()
        {

        }

        protected void DropDownList1_SelectedIndexChanged()
        {

        }
    }
}