using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HACK_KUET
{
    public partial class AdminMessages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Security check (must be logged in)
            if (Session["Admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadMessages();
            }
        }

        // Load all messages from database
        private void LoadMessages()
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = @"SELECT Id, Name, Email, Subject, Message, CreatedAt 
                                     FROM ContactMessages 
                                     ORDER BY CreatedAt DESC";

                    using (SqlDataAdapter da = new SqlDataAdapter(query, con))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        GridViewMessages.DataSource = dt;
                        GridViewMessages.DataBind();

                        lblCount.Text = dt.Rows.Count.ToString();
                        lblCountTop.Text = dt.Rows.Count.ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error loading messages: " +
                               ex.Message.Replace("'", "") + "');</script>");
            }
        }

        // Handle delete button click from GridView
        protected void GridViewMessages_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            // Re-check session for safety
            if (Session["Admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
                return;
            }

            if (e.CommandName == "DeleteMessage")
            {
                try
                {
                    int id;

                    // Safe conversion
                    if (!int.TryParse(e.CommandArgument.ToString(), out id))
                    {
                        return;
                    }

                    string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        string query = "DELETE FROM ContactMessages WHERE Id = @Id";

                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@Id", id);

                            con.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Refresh grid after delete
                    LoadMessages();

                    // Success alert
                    Response.Write("<script>alert('Message deleted successfully');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Delete failed: " +
                                   ex.Message.Replace("'", "") + "');</script>");
                }
            }
        }
    }
}