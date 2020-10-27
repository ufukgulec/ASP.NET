using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASP.NET_Login
{
    public partial class kayitOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void giris_Click(object sender, EventArgs e)
        {
            

            try
            {
                SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP;Initial Catalog=aspLogin;Integrated Security=True");
                baglanti.Open();
                SqlCommand komut = new SqlCommand("insert into kullanici(kullaniciAdi,kullaniciSoyadi,kullaniciEposta,kullaniciParola) values (@ad,@soyad,@eposta,@parola)",baglanti);
                komut.Parameters.AddWithValue("@ad", isim.Text.ToUpper());
                komut.Parameters.AddWithValue("@soyad", soyisim.Text.ToUpper());
                komut.Parameters.AddWithValue("eposta", Eposta.Text);
                komut.Parameters.AddWithValue("parola", Parola.Text);
                komut.ExecuteNonQuery();
                giris.Text = "Başarılı";
                giris.Enabled = false;
                Anasayfa.Visible = true;
            }
            catch (Exception ex)
            {
                Response.Write("Hata:" + ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }
    }
}