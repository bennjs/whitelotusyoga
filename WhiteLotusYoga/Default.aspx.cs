using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLotusYoga
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public string getWhileLoopData()
        {
            string htmlStr = "";
            SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            SqlCommand thisCommand = connStr.CreateCommand();
            thisCommand.CommandText = "SELECT id, name from class";
            connStr.Open();
            SqlDataReader reader = thisCommand.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string Name = reader.GetString(1);
                htmlStr += "<tr><td>" + id + "</td><td>" + Name + "</td></tr>";
            }

            connStr.Close();
            return htmlStr;
        }
    }
}