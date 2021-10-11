using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Recipes_Website
{
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConn bgl = new SqlConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select YemekAd,YemekMalzeme,YemekTarif,YemekResim,YemekTarih,YemekPuan,KategoriAd from Yemekler y left join Kategoriler k on y.Kategoriid=k.Kategoriid", bgl.baglanti());

            SqlDataReader rd = cmd.ExecuteReader();
            DataList2.DataSource = rd;
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}