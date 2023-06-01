using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace M20_Student_Portal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                CustomValidator1.ErrorMessage = "Select your account type";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            if (DropDownList1.SelectedIndex == 1)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select SmartcardID, Name from Admin where SmartcardID = '" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["id"] = dr["SmartcardID"].ToString();
                    Session["name"] = dr["Name"].ToString();
                    Response.Redirect("~/Admin/Profile.aspx");
                }
                Response.Write("<script>alert('Invalid password or you are not  an admin!')</script>");
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select SmartcardID, Name from Student where SmartcardID = '" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["id"] = dr["SmartcardID"].ToString();
                    Session["name"] = dr["Name"].ToString();
                    Response.Redirect("~/Student/Profile.aspx");
                }
                Response.Write("<script>alert('Invalid password or you are not a student!')</script>");
            }
            else
            {
                CustomValidator1.ErrorMessage = "Select your account type";
                Response.Write("<script>alert('Invalid account type')</script>");
            }
            con.Close();
        }
    }
}