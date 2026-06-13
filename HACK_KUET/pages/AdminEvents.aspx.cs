using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HACK_KUET
{
    public partial class AdminEvents : System.Web.UI.Page
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
                LoadEvents();
            }
        }

        void LoadEvents()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT * FROM Events ORDER BY StartDate DESC", con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                GridViewEvents.DataSource = dt;
                GridViewEvents.DataBind();
            }
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            DateTime startDate, endDate;

            // Start Date
            if (!DateTime.TryParse(txtStartDate.Text.Trim(), out startDate))
            {
                Response.Write("<script>alert('Invalid start date');</script>");
                return;
            }

            // End Date (only if multi-day)
            if (chkMultiDay.Checked)
            {
                if (!DateTime.TryParse(txtEndDate.Text.Trim(), out endDate))
                {
                    Response.Write("<script>alert('Invalid end date');</script>");
                    return;
                }
            }
            else
            {
                endDate = startDate;
            }

            // Image Upload
            string imagePath = "";

            if (fuImage.HasFile)
            {
                string fileName = System.IO.Path.GetFileName(fuImage.FileName);
                string folderPath = Server.MapPath("~/images/events/");

                if (!System.IO.Directory.Exists(folderPath))
                {
                    System.IO.Directory.CreateDirectory(folderPath);
                }

                string fullPath = folderPath + fileName;
                fuImage.SaveAs(fullPath);

                imagePath = "~/images/events/" + fileName;
            }

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"INSERT INTO Events
                                (Title, Description, StartDate, EndDate, Location, ImageUrl)
                                VALUES
                                (@Title, @Description, @StartDate, @EndDate, @Location, @ImageUrl)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Title", txtTitle.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@StartDate", startDate);
                cmd.Parameters.AddWithValue("@EndDate", endDate);
                cmd.Parameters.AddWithValue("@Location", txtLocation.Text.Trim());
                cmd.Parameters.AddWithValue("@ImageUrl", imagePath);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            ClearFields();
            LoadEvents();
        }

        // DELETE
        protected void GridViewEvents_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteEvent")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand(
                        "DELETE FROM Events WHERE Id=@Id", con);

                    cmd.Parameters.AddWithValue("@Id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                LoadEvents();
            }
        }

        void ClearFields()
        {
            txtTitle.Text = "";
            txtDescription.Text = "";
            txtStartDate.Text = "";
            txtEndDate.Text = "";
            txtLocation.Text = "";

            chkMultiDay.Checked = false;
        }
    }
}