using System;
using System.Configuration;
using System.Data.SqlClient;

namespace HACK_KUET.pages
{
    public partial class Members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMembers();
            }
        }

        private void LoadMembers()
        {
            string connStr =
                ConfigurationManager.ConnectionStrings["ClubDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connStr))
            {
                con.Open();

                SqlCommand cmd =
                    new SqlCommand("SELECT Name, Position, ImageUrl FROM Members", con);

                SqlDataReader dr = cmd.ExecuteReader();

                string html = "";

                while (dr.Read())
                {
                    string position = dr["Position"].ToString();

                    string title = position.Contains("(")
                        ? position.Split('(')[0].Trim()
                        : position;

                    string detail = position.Contains("(")
                        ? position.Split('(')[1].Replace(")", "").Trim()
                        : "";

                    html += $@"
<div class='member-card'>
    <img src='{dr["ImageUrl"]}' alt='Member'>
    <h3>{dr["Name"]}</h3>
    <h4>{title}</h4>";

                    if (!string.IsNullOrEmpty(detail))
                    {
                        html += $"<p>({detail})</p>";
                    }

                    html += "</div>";
                }

                MembersContainer.InnerHtml = html;
            }
        }
    }
}