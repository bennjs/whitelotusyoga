using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WhiteLotusYoga
{
    public class DBConnectivity
    {
        public static SqlConnection GetConnection()
        {
            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString;
            return new SqlConnection(conString);
        }
    }
}