using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelRegistration
{
    public partial class BookingDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
       
        private void GetData()
        {
            string Q1 = $"SELECT * FROM [dbo].[HOTELREGISTRATION] WHERE [UserName] = '{username.Text}'";
            SqlCommand cmd1 = new SqlCommand(Q1, con);
            SqlDataAdapter SDA = new SqlDataAdapter(cmd1);
            DataSet DS = new DataSet();
            SDA.Fill(DS);
            GridView1.DataSource = DS.Tables[0];
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetData();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow GVR = GridView1.Rows[e.RowIndex];
            con.Open();
            var Q1 = $"DELETE FROM [dbo].[HOTELREGISTRATION] WHERE [UserName] = '{username.Text}'";
            SqlCommand cmd1 = new SqlCommand(Q1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data Deleted Succeessfully')</script>");
            GetData();
        }

        protected void SubmitBTN_Click(object sender, EventArgs e)
        {
            con.Open();
            string Q = $"SELECT UserName FROM [dbo].[HOTELREGISTRATION] WHERE [UserName] = '{username.Text}'";
            SqlCommand cmd = new SqlCommand(Q, con);
            var Un = cmd.ExecuteScalar().ToString();
            if (username.Text == Un)
            {
                GetData();
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials')</script>");
            }
            con.Close();
            username.Text = string.Empty;
        }
    }
}