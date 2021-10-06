using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Recipes_Website
{
    public class SqlConn
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-U8L4T95; Initial Catalog=BeeCook; User ID=sa; Password=net_123;");
            baglan.Open();
            return baglan;
        }
    }
}