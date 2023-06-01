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
    public partial class WebForm3 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select * from Fee where SmartcardID = '" + Label30.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["SmartcardID"].ToString();
                    TextBox3.Text = dr["TotalFee"].ToString();
                    TextBox4.Text = dr["PaidFee"].ToString();
                    TextBox5.Text = dr["DueFee"].ToString();
                }
                con.Close();
            }
        }
    }
}