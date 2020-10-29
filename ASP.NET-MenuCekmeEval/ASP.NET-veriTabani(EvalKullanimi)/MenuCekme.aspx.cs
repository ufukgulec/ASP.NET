using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASP.NET_veriTabani_EvalKullanimi_
{
    public partial class MenuCekme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            menuGetir();
            
        }

        private void menuGetir()
        {
            sqlBaglantisi sql = new sqlBaglantisi();
            SqlCommand komut = new SqlCommand("select * from Tbl_kategori", sql.baglan());
            SqlDataReader reader = komut.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            sorgu("Tbl_tur", button.Text);
        }

        private void sorgu(string tablo, string sor)
        {
            sqlBaglantisi sql = new sqlBaglantisi();
            SqlCommand komut = new SqlCommand("select * from Tbl_tur t inner join tbl_kategori k on t.kategoriID=k.kategoriID where k.kategoriAd=@sor ", sql.baglan());
            komut.Parameters.AddWithValue("tablo", tablo);
            komut.Parameters.AddWithValue("sor", sor);
            SqlDataReader reader = komut.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();
        }
    }
}