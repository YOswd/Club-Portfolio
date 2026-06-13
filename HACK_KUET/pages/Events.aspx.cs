using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HACK_KUET
{
    public partial class Events : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEvents();
            }
        }

        void LoadEvents()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"SELECT Title, Description, StartDate, EndDate, Location, ImageUrl
                         FROM Events
                         ORDER BY StartDate DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();

                da.Fill(dt);

                rptEvents.DataSource = dt;
                rptEvents.DataBind();
            }
        }
    }
}