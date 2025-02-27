﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelRegistration
{
    public partial class UserDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = DESKTOP-CN59SUH ; Database = Asp.NetProjects ; user id = sa ; password = 1234");
        private void GetData()
        {
            username.Text = Session["value1"].ToString();
            password.Text = Session["value2"].ToString();
            string Q = $"SELECT * FROM [dbo].[REGISTRATIONPROJECT1] WHERE [UserName] = '{username.Text}' AND [password] = '{password.Text}'";
            SqlCommand cmd = new SqlCommand(Q, con);
            SqlDataAdapter SDA = new SqlDataAdapter(cmd);
            DataSet DS = new DataSet();
            SDA.Fill(DS);
            GridView1.DataSource = DS.Tables[0];
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow GVR = GridView1.Rows[e.RowIndex];
            con.Open();
            var Q1 = $"DELETE FROM [dbo].[REGISTRATIONPROJECT1] WHERE [UserName] = '{username.Text}'";
            SqlCommand cmd1 = new SqlCommand(Q1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data Deleted Succeessfully')</script>");
            GetData();
            username.Text = string.Empty;
            password.Text = string.Empty;
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow GVR1 = GridView1.Rows[e.RowIndex];
            TextBox t1 = (TextBox)GVR1.FindControl("firstname");
            TextBox t2 = (TextBox)GVR1.FindControl("lastname");
            Label t3 = (Label)GVR1.FindControl("username");
            TextBox t4 = (TextBox)GVR1.FindControl("gender");
            TextBox t5 = (TextBox)GVR1.FindControl("password");
            TextBox t6 = (TextBox)GVR1.FindControl("emailid");
            TextBox t7 = (TextBox)GVR1.FindControl("phoneno");
            TextBox t8 = (TextBox)GVR1.FindControl("address");
            TextBox t9 = (TextBox)GVR1.FindControl("age");
            TextBox t10 = (TextBox)GVR1.FindControl("languageknown");
            TextBox t11 = (TextBox)GVR1.FindControl("country");

            con.Open();
            var Q2 = $"UPDATE [dbo].[REGISTRATIONPROJECT1] SET [FirstName] = '{t1.Text}', [LastName] = '{t2.Text}', [Gender] = '{t4.Text}', [Password] = '{t5.Text}', [EmailId] = '{t6.Text}', [PhoneNo] = '{t7.Text}', [Address] = '{t8.Text}', [Age] = '{t9.Text}', [LanguageKnown] = '{t10.Text}', [Country] = '{t11.Text}' WHERE [UserName] = '{t3.Text}'";
            SqlCommand cmd2 = new SqlCommand(Q2, con);
            cmd2.ExecuteNonQuery();
            Response.Write("<script>alert('Data Updated Succeessfully')</script>");
            con.Close();
            GetData();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
        }

        protected void BookBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("RoomBookingPage.aspx");
        }
    }
}