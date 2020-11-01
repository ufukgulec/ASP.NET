using adonet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace adonet
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        adonetEntities db = new adonetEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var kategoriler = db.kategoris.ToList();
            DataListKategori.DataSource = kategoriler;
            DataListKategori.DataBind();
        }
    }
}