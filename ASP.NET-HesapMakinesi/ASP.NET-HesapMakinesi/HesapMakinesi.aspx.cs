using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_HesapMakinesi
{
    public partial class HesapMakinesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            public double birinciSayi;
            public double ikinciSayi;

        void sayilariAl()
        {
            try
            {
                if (!string.IsNullOrEmpty(TextBox1.Text) && !string.IsNullOrEmpty(TextBox2.Text))
                {
                    birinciSayi = Convert.ToDouble(TextBox1.Text);
                    ikinciSayi = Convert.ToDouble(TextBox2.Text);
                }
                else
                    Response.Write("Alanlar boş bırakılmaz...");
            }
            catch (System.FormatException)
            {
                Response.Write("Sayı giriniz...");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            sayilariAl();
            TextBox3.Text = ((birinciSayi+ikinciSayi).ToString());
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            sayilariAl();
            TextBox3.Text = ((birinciSayi - ikinciSayi).ToString());
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            sayilariAl();
            TextBox3.Text = ((birinciSayi * ikinciSayi).ToString());
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            sayilariAl();
            TextBox3.Text = ((birinciSayi / ikinciSayi).ToString());
        }
    }
}