using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HACK_KUET
{
    public partial class Projects : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFeaturedProjects();
            }
        }

        void LoadFeaturedProjects()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"
                    SELECT ProjectID, Title, ShortDescription,
                           FullDescription, ImageUrl, Category
                    FROM Projects
                    WHERE IsFeatured = 1
                    ORDER BY ProjectID DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                rptFeaturedProjects.DataSource = dt;
                rptFeaturedProjects.DataBind();
            }
        }
    }
}