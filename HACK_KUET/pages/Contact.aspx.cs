using System;
using System.Data.SqlClient;
using System.Configuration;

namespace HACK_KUET
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void btnSend_Click(object sender, EventArgs e)
        {
            // 1. Basic validation
            if (string.IsNullOrWhiteSpace(txtName.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtMessage.Text))
            {
                Response.Write("<script>alert('Please fill all required fields');</script>");
                return;
            }

            try
            {
                // 2. Get connection string
                string cs = ConfigurationManager.ConnectionStrings["HACK_KUET_DB"].ConnectionString;

                // 3. Insert into database
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = @"INSERT INTO ContactMessages 
                                    (Name, Email, Subject, Message) 
                                    VALUES (@Name, @Email, @Subject, @Message)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Subject", txtSubject.Text.Trim());
                        cmd.Parameters.AddWithValue("@Message", txtMessage.Text.Trim());

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                // 4. Clear fields after success
                txtName.Text = "";
                txtEmail.Text = "";
                txtSubject.Text = "";
                txtMessage.Text = "";

                // 5. Success message
                Response.Write("<script>alert('Message sent successfully!');</script>");
            }
            catch (Exception ex)
            {
                // 6. Error handling
                Response.Write("<script>alert('Error: " + ex.Message.Replace("'", "") + "');</script>");
            }
        }
    }
}