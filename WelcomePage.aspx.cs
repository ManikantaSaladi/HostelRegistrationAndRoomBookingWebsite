using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelRegistration
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["value1"].ToString();
        }
    }
}