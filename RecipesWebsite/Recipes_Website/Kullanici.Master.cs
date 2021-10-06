using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Recipes_Website
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        SqlConn bgl = new SqlConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Kategoriler", bgl.baglanti());

            SqlDataReader rd = cmd.ExecuteReader();
            DataList1.DataSource = rd;
            DataList1.DataBind();
        }
    }
}