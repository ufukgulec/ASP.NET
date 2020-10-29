using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASP.NET_veriTabani_EvalKullanimi_
{
    public class sqlBaglantisi
    {
        public SqlConnection baglan()
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=DESKTOP;Initial Catalog=Dbo_eTicaret;Integrated Security=True");
            sqlConnection.Open();
            return sqlConnection;
        }
    }
}