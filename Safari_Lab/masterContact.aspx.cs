using System;
using System.Data;
using System.Data.SqlClient;

namespace Safari_Lab
{
    public partial class masterContact : System.Web.UI.Page
    {
        SqlConnection con;
        String myCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|SafariDB.mdf;Integrated Security=False";
        SqlCommand cmd;
        public string txt1, txt2, txt3, txt4, txt5, txt6, txt7, txt8, txt9, txt10;
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnSend.Enabled = true;
            try
            {
                Connect();
                cmd.CommandText = "select * from TextContact where id=1";
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    txt1 = reader["text1"].ToString();
                    txt2 = reader["text2"].ToString();
                    txt3 = reader["text3"].ToString();
                    txt4 = reader["text4"].ToString();
                    txt5 = reader["text5"].ToString();
                    txt6 = reader["text6"].ToString();
                    txt7 = reader["text7"].ToString();
                    txt8 = reader["text8"].ToString();
                    txt9 = reader["text9"].ToString();
                    txt10 = reader["text10"].ToString();
                }

                con.Close();
            }
            catch(Exception ex)
            {
                lblResult.Text = ex.Message;
            }
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

        public void Connect()
        {
            con = new SqlConnection(myCon);
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
        }
    }
}