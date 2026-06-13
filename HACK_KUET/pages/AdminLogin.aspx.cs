using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HACK_KUET
{
    public partial class AdminLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text.Trim();
            string password = txtPass.Text.Trim();

            if (username == "admin" && password == "1234")
            {
                Session["Admin"] = "admin";

                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(),
                    "alert", "alert('Invalid username or password');", true);
            }
        }
    }
}