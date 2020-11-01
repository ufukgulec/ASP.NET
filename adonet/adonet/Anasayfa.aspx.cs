using adonet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace adonet
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        adonetEntities db = new adonetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var slayt = db.slayts.ToList();
            Repeater1.DataSource=slayt;
            Repeater1.DataBind();
            var favori = db.uruns.OrderByDescending(a => a.begeniSayisi).Take(4).ToList();
            ListViewUrunler.DataSource = favori;
            ListViewUrunler.DataBind();
        }
    }
}