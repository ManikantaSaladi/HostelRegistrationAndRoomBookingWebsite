using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelRegistration
{
    public partial class RegistrationSuccessfullPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}