using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Login
{
    public partial class giristenSonra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["kullaniciAdi"].ToString()+" "+Session["kullaniciSoyadi"].ToString();
            Label2.Text = Session["kullaniciEposta"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }
    }
}