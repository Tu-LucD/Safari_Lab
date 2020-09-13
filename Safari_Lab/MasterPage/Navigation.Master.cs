using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safari_Lab
{
    public partial class Navigation : System.Web.UI.MasterPage
    {
        SqlConnection con;
        String myCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|SafariDB.mdf;Integrated Security=False";
        SqlCommand cmd;
        public string txt1, txt2, txt3, txt4, txt5, txt6, txt7;
        public string img1;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Connect();
                cmd.CommandText = "select * from TextNavigation where id=1";
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
                }

                cmd.CommandText = "select * from ImageHome where id=1";
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    img1 = reader["image1"].ToString();
                }


                con.Close();
            }
            catch(Exception ex)
            {

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