using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Recipes_Website
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        SqlConn bgl = new SqlConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select top(1)* from GununYemegi where GununYemegiTarih between '" + Convert.ToString(DateTime.Now.Year) + "-" + Convert.ToString(DateTime.Now.Month) + "-" + Convert.ToString(DateTime.Now.Day) + " 00:00:00' and '" + Convert.ToString(DateTime.Now.Year) + "-" + Convert.ToString(DateTime.Now.Month) + "-" + Convert.ToString(DateTime.Now.Day) + " 23:59:59' order by GununYemegiTarih desc", bgl.baglanti());
             
            SqlDataReader rd = cmd.ExecuteReader();
            DataList2.DataSource = rd;
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}