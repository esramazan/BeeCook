using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Recipes_Website
{
    public partial class TarifPaylas : System.Web.UI.Page
    {
        SqlConn bgl = new SqlConn();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@TarifAd,@TarifMalzeme,@TarifYapilis,@TarifResim,@TarifSahip,@TarifSahipMail)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@TarifAd",txtYemekAdi.Text);
            cmd.Parameters.AddWithValue("@TarifMalzeme", txtMalzemeler.Text);
            cmd.Parameters.AddWithValue("@TarifYapilis", txtYapilis.Text);
            cmd.Parameters.AddWithValue("@TarifResim", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@TarifSahip", txtAdSoyad.Text);
            cmd.Parameters.AddWithValue("@TarifSahipMail", txtMail.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz incelenmek üzere alınmıştır.");
        }
    }
}