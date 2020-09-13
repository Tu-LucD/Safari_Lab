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
    public partial class masterHome : System.Web.UI.Page
    {
        SqlConnection con;
        String myCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|SafariDB.mdf;Integrated Security=False";
        SqlCommand cmd;
        public string img1, img2, img3, img4, img5, img6;
        public string txt1, txt2, txt3, txt4, txt5, txt6, txt7, txt8, txt9, txt10, txt11, txt12;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Connect();
                cmd.CommandText = "select * from ImageHome where id=1";
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    img1 = reader["image2"].ToString();
                    img2 = reader["image3"].ToString();
                    img3 = reader["image4"].ToString();
                    img4 = reader["image5"].ToString();
                    img5 = reader["image6"].ToString();
                    img6 = reader["image7"].ToString();
                }

                con.Close();
            }
            catch(Exception ex)
            {

            }
            Connect();
            cmd.CommandText = "select * from TextHome where id=1";
            SqlDataReader reader2 = cmd.ExecuteReader();
            while (reader2.Read())
            {
                txt1 = reader2["text1"].ToString();
                txt2 = reader2["text2"].ToString();
                txt3 = reader2["text3"].ToString();
                txt4 = reader2["text4"].ToString();
                txt5 = reader2["text5"].ToString();
                txt6 = reader2["text6"].ToString();
                txt7 = reader2["text7"].ToString();
                txt8 = reader2["text8"].ToString();
                txt9 = reader2["text9"].ToString();
                txt10 = reader2["text10"].ToString();
                txt11 = reader2["text11"].ToString();
                txt12 = reader2["text12"].ToString();
            }
            con.Close();
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