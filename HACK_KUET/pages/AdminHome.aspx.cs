using System;
using System.Data.SqlClient;
using System.Configuration;

namespace HACK_KUET
{
    public partial class AdminHome : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadCounts();
            }
        }

        void LoadCounts()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                // Messages
                SqlCommand cmd1 = new SqlCommand("SELECT COUNT(*) FROM ContactMessages", con);
                lblMessages.Text = cmd1.ExecuteScalar().ToString();

                // Events
                SqlCommand cmd2 = new SqlCommand("SELECT COUNT(*) FROM Events", con);
                lblEvents.Text = cmd2.ExecuteScalar().ToString();

                // Members
                SqlCommand cmd3 = new SqlCommand("SELECT COUNT(*) FROM Members", con);
                lblMembers.Text = cmd3.ExecuteScalar().ToString();

                // Projects
                SqlCommand cmd4 = new SqlCommand("SELECT COUNT(*) FROM Projects", con);
                lblProjects.Text = cmd4.ExecuteScalar().ToString();
            }
        }
    }
}