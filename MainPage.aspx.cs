using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelRegistration
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBTN_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
            con.Open();
            string Q = @"INSERT INTO [dbo].[HOTELQUERIES]
                   ([FullName]
                   ,[PhoneNo]
                   ,[EmaiId]
                   ,[Message])
             VALUES ('" + fullname.Text + "','" + phoneno.Text + "','" + emailid.Text + "','" + msg.Text + "')";
            SqlCommand cmd = new SqlCommand(Q, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your Query Submitted Successfully')</script>");
        }
    }
}