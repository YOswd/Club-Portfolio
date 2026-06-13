using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HACK_KUET
{
    public partial class AdminMembers : System.Web.UI.Page
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
                LoadMembers();
            }
        }

        // READ
        void LoadMembers()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT * FROM Members ORDER BY Id ASC", con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                GridViewMembers.DataSource = dt;
                GridViewMembers.DataBind();
            }
        }

        // CREATE
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"INSERT INTO Members (Name, Position, ImageUrl)
                 VALUES (@Name, @Position, @ImageUrl)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@Position", txtPosition.Text.Trim());
                cmd.Parameters.AddWithValue("@ImageUrl", txtImageUrl.Text.Trim());

                con.Open();
                cmd.ExecuteNonQuery();
            }

            ClearFields();
            LoadMembers();
        }

        // DELETE
        protected void GridViewMembers_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteMember")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand(
                        "DELETE FROM Members WHERE Id=@Id", con);

                    cmd.Parameters.AddWithValue("@Id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                LoadMembers();
            }
        }

        void ClearFields()
        {
            txtName.Text = "";
            txtPosition.Text = "";
            txtImageUrl.Text = "";
        }
    }
}