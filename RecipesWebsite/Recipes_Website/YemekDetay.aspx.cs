using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Recipes_Website
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlConn bgl = new SqlConn();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = (Request.QueryString["Yemekid"]).Replace("'", "");

            SqlCommand cmd = new SqlCommand("Select YemekAd from Yemekler where Yemekid=@id", bgl.baglanti());
            cmd.Parameters.AddWithValue("@id", yemekid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())//veri yazdırcak ama kurala göre yemekid e göre
            {
                Label2.Text = dr[0].ToString(); //dr[0] 0.parametreyi yaz->0.parametre yemekAd demek
            }
            bgl.baglanti().Close();
        }
    }
}