using System;
using System.Data.SqlClient;
using System.Configuration;

namespace HACK_KUET
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ClubDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO ContactMessages (Name, Email, Message) VALUES (@Name, @Email, @Message)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@Message", txtMessage.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";

            Response.Write("<script>alert('Message sent successfully!');</script>");
        }
    }
}