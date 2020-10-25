using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_FormElemanlari
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 8; i <= 72; i+=2)
                {
                    DropDownList1.Items.Add(i.ToString());
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Label1.Font.Bold==true)
            {
                Label1.Font.Bold = false;
            }
            else
            {
                Label1.Font.Bold = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label1.Font.Italic == true)
            {
                Label1.Font.Italic = false;
            }
            else
            {
                Label1.Font.Italic = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Label1.Font.Underline == true)
            {
                Label1.Font.Underline = false;
            }
            else
            {
                Label1.Font.Underline = true;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
            Label1.Font.Size = Convert.ToInt16(DropDownList1.SelectedValue);
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
            Label1.Font.Name = ListBox1.SelectedValue;
        }
    }
}