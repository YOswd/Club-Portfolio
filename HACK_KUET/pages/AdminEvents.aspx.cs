using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace HACK_KUET
{
    public partial class AdminEvents : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

        private int EditEventId
        {
            get { return ViewState["EditEventId"] != null ? (int)ViewState["EditEventId"] : -1; }
            set { ViewState["EditEventId"] = value; }
        }

        string GetExistingImage(int id)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT ImageUrl FROM Events WHERE Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                object result = cmd.ExecuteScalar();

                return result != null ? result.ToString() : "~/images/default.jpg";
            }
        }

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

        // LOAD EVENTS
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

        // ADD EVENT
        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            if (EditEventId == -1)
            {
                InsertEvent();
            }
            else
            {
                UpdateEvent(EditEventId);
            }
        }

        void InsertEvent()
        {
            SaveEventToDB("INSERT", -1);
        }

        void UpdateEvent(int id)
        {
            SaveEventToDB("UPDATE", id);
        }

        void DeleteEvent(int id)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "DELETE FROM Events WHERE Id=@Id";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        void SaveEventToDB(string mode, int id)
        {
            try
            {
                DateTime startDate, endDate;

                // Validate start date
                if (!DateTime.TryParse(txtStartDate.Text.Trim(), out startDate))
                {
                    Response.Write("<script>alert('Invalid start date');</script>");
                    return;
                }

                // End date handling
                if (chkMultiDay.Checked)
                {
                    if (!DateTime.TryParse(txtEndDate.Text.Trim(), out endDate))
                    {
                        Response.Write("<script>alert('Invalid end date');</script>");
                        return;
                    }

                    if (endDate < startDate)
                    {
                        Response.Write("<script>alert('End date cannot be before start date');</script>");
                        return;
                    }
                }
                else
                {
                    endDate = startDate;
                }

                // IMAGE UPLOAD
                string imagePath = "";

                if (fuImage.HasFile)
                {
                    string fileName = System.IO.Path.GetFileName(fuImage.FileName);
                    string folderPath = Server.MapPath("~/images/events/");

                    if (!System.IO.Directory.Exists(folderPath))
                        System.IO.Directory.CreateDirectory(folderPath);

                    fuImage.SaveAs(folderPath + fileName);

                    imagePath = "~/images/events/" + fileName;
                }
                else if (mode == "UPDATE")
                {
                    // keep existing image from DB
                    imagePath = GetExistingImage(id);
                }
                else
                {
                    imagePath = "~/images/default.jpg";
                }

                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query;

                    if (mode == "INSERT")
                    {
                        query = @"INSERT INTO Events
                          (Title, Description, StartDate, EndDate, Location, ImageUrl)
                          VALUES
                          (@Title, @Description, @StartDate, @EndDate, @Location, @ImageUrl)";
                    }
                    else
                    {
                        query = @"UPDATE Events SET
                          Title=@Title,
                          Description=@Description,
                          StartDate=@StartDate,
                          EndDate=@EndDate,
                          Location=@Location,
                          ImageUrl=@ImageUrl
                          WHERE Id=@Id";
                    }

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@Title", txtTitle.Text.Trim());
                    cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@StartDate", startDate);
                    cmd.Parameters.AddWithValue("@EndDate", endDate);
                    cmd.Parameters.AddWithValue("@Location", txtLocation.Text.Trim());
                    cmd.Parameters.AddWithValue("@ImageUrl", imagePath);

                    if (mode == "UPDATE")
                    {
                        cmd.Parameters.AddWithValue("@Id", id);
                    }

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                ClearFields();
                LoadEvents();

                EditEventId = -1;
                btnAddEvent.Text = "Add Event";

                Response.Write("<script>alert('Operation successful');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " +
                    ex.Message.Replace("'", "") + "');</script>");
            }
        }

        // DELETE EVENT
        protected void GridViewEvents_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "DeleteEvent")
            {
                DeleteEvent(id);
                LoadEvents();
            }
            else if (e.CommandName == "EditEvent")
            {
                LoadEventById(id);
            }
        }

        void LoadEventById(int id)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT * FROM Events WHERE Id=@Id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtTitle.Text = dr["Title"].ToString();
                    txtDescription.Text = dr["Description"].ToString();
                    txtStartDate.Text = Convert.ToDateTime(dr["StartDate"]).ToString("yyyy-MM-dd");
                    txtEndDate.Text = Convert.ToDateTime(dr["EndDate"]).ToString("yyyy-MM-dd");
                    txtLocation.Text = dr["Location"].ToString();

                    chkMultiDay.Checked =
                        Convert.ToDateTime(dr["EndDate"]) != Convert.ToDateTime(dr["StartDate"]);

                    EditEventId = id;
                    btnAddEvent.Text = "Update Event";
                }
            }
        }

        // CLEAR FORM
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