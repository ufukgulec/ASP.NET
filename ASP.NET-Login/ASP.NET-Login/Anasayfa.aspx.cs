﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Login
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void giris_Click(object sender, EventArgs e)
        {
            Response.Redirect("girisYap.aspx");
        }

        protected void kayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayitOl.aspx");
        }
    }
}