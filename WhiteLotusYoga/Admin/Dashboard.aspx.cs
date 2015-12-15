using System;
using System.Configuration;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLotusYoga
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"].ToString() != "admin")
            {
                Response.Redirect("~/");
            }
        }

        public int getNumberOfRegisteredUsers()
        {
            int users = 0;
            SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            SqlCommand thisCommand = connStr.CreateCommand();
            thisCommand.CommandText = @"SELECT count(*) from account";
            connStr.Open();
            users = (int)thisCommand.ExecuteScalar();
            connStr.Close();
            return users;
        }

        public int getStaffCount()
        {
            int staffCount = 0;
            SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            SqlCommand thisCommand = connStr.CreateCommand();
            thisCommand.CommandText = @"SELECT count(*) from teacher";
            connStr.Open();
            staffCount = (int)thisCommand.ExecuteScalar();
            connStr.Close();
            return staffCount;
        }


        public string getStaffLoopData()
        {
            string htmlStr = "";
            SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            SqlCommand thisCommand = connStr.CreateCommand();
            thisCommand.CommandText = @"SELECT T.first_name, T.last_name, T.bio
                                      FROM teacher T";
            connStr.Open();
            SqlDataReader reader = thisCommand.ExecuteReader();

            while (reader.Read())
            {
                string firstName = reader.GetString(0);
                string lastName = reader.GetString(1);
                string bio = reader.GetString(2);
                htmlStr += "<tr><td id=\"staffItemLeft\">" + firstName + " " + lastName + "</td><td id=\"staffItemRight\">" + bio + "</td></tr>";
            }
            connStr.Close();
            return htmlStr;
        }

        protected void createTeacher_Click(object sender, EventArgs e)
        {
            var firstName = "";
            var lastName = "";
            var bio = "";

            try
            {
                firstName = Request.Form["firstNameInput"];
                lastName = Request.Form["lastNameInput"];
                bio = Request.Form["shortBioInput"];

                SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                connStr.Open();
                string createTeacher = "INSERT INTO teacher (first_name, last_name, bio) VALUES ('" + firstName + "', '" + lastName + "', '" + bio + "')";
                SqlCommand createCommand = new SqlCommand(createTeacher, connStr);
                createCommand.ExecuteNonQuery();
                connStr.Close();
                Response.Write(Request.Form["firstNameInput"] + " Added!");
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}