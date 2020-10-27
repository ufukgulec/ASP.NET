using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASP.NET_Login
{
    public partial class girisYap : System.Web.UI.Page
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
                SqlCommand komut = new SqlCommand("select * from kullanici where kullaniciEposta=@eposta and kullaniciParola=@parola", baglanti);
                komut.Parameters.AddWithValue("@eposta", Eposta.Text);
                komut.Parameters.AddWithValue("@parola", Parola.Text);
                SqlDataReader reader = komut.ExecuteReader();
                if (reader.Read())
                {
                    Session["kullaniciAdi"] = reader["kullaniciAdi"].ToString();
                    Session["kullaniciSoyadi"] = reader["kullaniciSoyadi"].ToString();
                    Session["kullaniciEposta"] = reader["kullaniciEposta"].ToString();
                    Session["yetki"] = reader["yetki"].ToString();

                    Response.Redirect("giristenSonra.aspx");
                }
                else
                {
                    Response.Write("Hata");
                }
            }
            catch (Exception ex)
            {
                Response.Write("HAta: "+ex.Message);
            }

           
        }
    }
}