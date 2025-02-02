using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelRegistration
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["value1"].ToString();
            totalcost.Text = Session["value2"].ToString();
        }

        protected void PayBTN_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Payment Done Successfully')</script>");
            Server.Transfer("WelcomePage.aspx");
        }
    }
}