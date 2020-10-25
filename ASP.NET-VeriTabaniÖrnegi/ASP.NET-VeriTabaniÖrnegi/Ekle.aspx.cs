using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASP.NET_VeriTabaniÖrnegi
{
    public partial class Ekle : System.Web.UI.Page
    {
        protected void veriEkle()
        {
            string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            //string sorgu = "insert into Table (Ad,Soyad,Eposta) values(@Ad,@Soyad,@Eposta)";

                SqlConnection sqlConnection = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("insert into [Table](Ad,Soyad,Eposta)values(@Ad,@Soyad,@Eposta)", sqlConnection);

            komut.Parameters.AddWithValue("Ad", TextBox1.Text);
            komut.Parameters.AddWithValue("Soyad", TextBox2.Text);
            komut.Parameters.AddWithValue("Eposta", TextBox3.Text);
            try
            {
                sqlConnection.Open();
                komut.ExecuteNonQuery();
                Response.Write("Kayıt Yapıldı...");
            }
            catch (Exception e)
            {

                Response.Write("Hata!!!"+e.Message);
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            veriEkle();
        }
    }
}