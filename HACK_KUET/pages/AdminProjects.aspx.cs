using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HACK_KUET
{
    public partial class AdminProjects : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

        private int EditId
        {
            get { return ViewState["EditId"] != null ? (int)ViewState["EditId"] : -1; }
            set { ViewState["EditId"] = value; }
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
                LoadProjects();
            }
        }

        void LoadProjects()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Projects ORDER BY ProjectID ASC", con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridViewProjects.DataSource = dt;
                GridViewProjects.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (EditId == -1)
                InsertProject();
            else
                UpdateProject(EditId);
        }

        void InsertProject()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"INSERT INTO Projects
                (Title, ShortDescription, FullDescription, ImageUrl, Category, IsFeatured)
                VALUES (@Title, @Short, @Full, @Image, @Category, @Featured)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Short", txtShort.Text);
                cmd.Parameters.AddWithValue("@Full", txtFull.Text);
                cmd.Parameters.AddWithValue("@Image", txtImage.Text);
                cmd.Parameters.AddWithValue("@Category", txtCategory.Text);
                cmd.Parameters.AddWithValue("@Featured", chkFeatured.Checked);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            Clear();
            LoadProjects();
        }

        void UpdateProject(int id)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"UPDATE Projects SET
                    Title=@Title,
                    ShortDescription=@Short,
                    FullDescription=@Full,
                    ImageUrl=@Image,
                    Category=@Category,
                    IsFeatured=@Featured
                    WHERE ProjectID=@Id";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Short", txtShort.Text);
                cmd.Parameters.AddWithValue("@Full", txtFull.Text);
                cmd.Parameters.AddWithValue("@Image", txtImage.Text);
                cmd.Parameters.AddWithValue("@Category", txtCategory.Text);
                cmd.Parameters.AddWithValue("@Featured", chkFeatured.Checked);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            EditId = -1;
            btnSave.Text = "Add Project";

            Clear();
            LoadProjects();
        }

        protected void GridViewProjects_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "DeleteProject")
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("DELETE FROM Projects WHERE ProjectID=@Id", con);
                    cmd.Parameters.AddWithValue("@Id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                LoadProjects();
            }
            else if (e.CommandName == "EditProject")
            {
                LoadProjectById(id);
            }
        }

        void LoadProjectById(int id)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Projects WHERE ProjectID=@Id", con);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtTitle.Text = dr["Title"].ToString();
                    txtShort.Text = dr["ShortDescription"].ToString();
                    txtFull.Text = dr["FullDescription"].ToString();
                    txtImage.Text = dr["ImageUrl"].ToString();
                    txtCategory.Text = dr["Category"].ToString();
                    chkFeatured.Checked = Convert.ToBoolean(dr["IsFeatured"]);

                    EditId = id;
                    btnSave.Text = "Update Project";
                }
            }
        }

        void Clear()
        {
            txtTitle.Text = "";
            txtShort.Text = "";
            txtFull.Text = "";
            txtImage.Text = "";
            txtCategory.Text = "";
            chkFeatured.Checked = false;
        }
    }
}