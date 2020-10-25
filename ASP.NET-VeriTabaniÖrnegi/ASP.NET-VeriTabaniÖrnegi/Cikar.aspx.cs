using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASP.NET_VeriTabaniÖrnegi
{
    public partial class Cikar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TextBox1.Text))
            {
                Response.Write("Arama Yapmanız lazım...");
            }else
            Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DataList1.Items.Count > 0)
            {
                cikar();
            }
            else
                Response.Write("Veri tabanında bulunamadı");    
        }
        protected void cikar() 
        {
            string connString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connString);
            SqlCommand komut = new SqlCommand("Delete from [Table] where Ad=@Ad", sqlConnection);
            komut.Parameters.AddWithValue("Ad", TextBox1.Text);
            try
            {
                sqlConnection.Open();
                komut.ExecuteNonQuery();
                Response.Write("Silindi...");
            }
            catch (Exception ex)
            {
                Response.Write("HATA!!" + ex.Message);
            }
            finally
            {
                sqlConnection.Close();
            }
        }
    }
}