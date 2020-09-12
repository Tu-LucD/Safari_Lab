using System;
using System.Data;
using System.Data.SqlClient;

namespace Safari_Lab
{
    public partial class masterContact : System.Web.UI.Page
    {
        SqlConnection con;
        String myCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\james\Desktop\Safari3\Safari_Lab\App_Data\SafariDB.mdf;Integrated Security=True";
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            BtnSend.Enabled = true;
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            nameTxt.Text = "";
            emailTxt.Text = "";
            phoneTxt.Text = "";
            messageTxt.Text = "";
            lblResult.Text = "Cleared!";
            BtnSend.Enabled = true;
        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            try
            {
                Connect();
                cmd.CommandText = "insert into ContactInfo values (@name, @email, @phone, @message)";
                cmd.Parameters.AddWithValue("name", nameTxt.Text);
                cmd.Parameters.AddWithValue("email", emailTxt.Text);
                cmd.Parameters.AddWithValue("phone", phoneTxt.Text);
                cmd.Parameters.AddWithValue("message", messageTxt.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                lblResult.Text = "Your message has been saved successfully. Please wait a few days before our answer. Thank you!";
                BtnSend.Enabled = false;
            }
            catch(Exception ex)
            {
                lblResult.Text = ex.Message;
            }
            
        }

        private void Connect()
        {
            con = new SqlConnection(myCon);
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
        }
    }
}