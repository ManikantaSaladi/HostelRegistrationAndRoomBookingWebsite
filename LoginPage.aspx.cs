using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelRegistration
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBTN_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
            con.Open();
            string Q = $"SELECT * FROM [dbo].[REGISTRATIONPROJECT1] WHERE [UserName] = '{UserName.Text}' AND [password] = '{password.Text}'";
            SqlCommand cmd = new SqlCommand(Q, con);

            SqlDataReader SDR = cmd.ExecuteReader();
            if (SDR.Read())
            {
                Response.Write("<script>alert('Login Successfull')</script>");
                Session["value1"] = UserName.Text;
                Session["value2"] = password.Text;
                Response.Redirect("UserDetails.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials')</script>");
            }
            con.Close();
        }
    }
}