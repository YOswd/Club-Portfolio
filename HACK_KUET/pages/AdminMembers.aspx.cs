using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace HACK_KUET
{
    public partial class AdminMembers : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

        private int EditMemberId
        {
            get { return ViewState["EditMemberId"] != null ? (int)ViewState["EditMemberId"] : -1; }
            set { ViewState["EditMemberId"] = value; }
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
            if (EditMemberId == -1)
            {
                InsertMember();
            }
            else
            {
                UpdateMember(EditMemberId);
            }
        }

        void InsertMember()
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

        void UpdateMember(int id)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"UPDATE Members
                         SET Name=@Name,
                             Position=@Position,
                             ImageUrl=@ImageUrl
                         WHERE Id=@Id";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@Position", txtPosition.Text.Trim());
                cmd.Parameters.AddWithValue("@ImageUrl", txtImageUrl.Text.Trim());
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            ClearFields();
            LoadMembers();

            EditMemberId = -1;
            btnAdd.Text = "Add Member";
        }

        // DELETE
        protected void GridViewMembers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "DeleteMember")
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("DELETE FROM Members WHERE Id=@Id", con);
                    cmd.Parameters.AddWithValue("@Id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                LoadMembers();
            }
            else if (e.CommandName == "EditMember")
            {
                LoadMemberById(id);
            }
        }

        void LoadMemberById(int id)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Members WHERE Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtName.Text = dr["Name"].ToString();
                    txtPosition.Text = dr["Position"].ToString();
                    txtImageUrl.Text = dr["ImageUrl"].ToString();

                    EditMemberId = id;
                    btnAdd.Text = "Update Member";
                }
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