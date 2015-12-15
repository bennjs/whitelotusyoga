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
    public partial class Schedule : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string getClassLoopData()
        {
            string htmlStr = "";
            SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            SqlCommand thisCommand = connStr.CreateCommand();
            thisCommand.CommandText = @"SELECT C.name, T.first_name, C.short_description, C.studio, C.experience_level, cast(C.start_time as date) [classDate], cast(C.start_time as time(0)) [sTime], cast(C.end_time as time(0)) [eTime], C.id
                                      FROM class C, teacher T                                       
                                      WHERE DATEDIFF(dd, C.start_time, getdate()) <= 0 
                                      AND C.teacher_id = T.id
                                      ORDER BY [classDate] ASC";
            connStr.Open();
            SqlDataReader reader = thisCommand.ExecuteReader();

            while (reader.Read())
            {
                string Name = reader.GetString(0);
                string TeacherName = reader.GetString(1);
                string description = reader.GetString(2);
                string StudioName = reader.GetString(3);
                string ExperienceLevel = reader.GetString(4);
                DateTime ClassDate = reader.GetDateTime(5);
                TimeSpan StartTime = reader.GetTimeSpan(6);
                TimeSpan EndTime = reader.GetTimeSpan(7);
                int bookingID = reader.GetInt32(8);
                htmlStr += "<tr><td>" + Name + "</td><td>" + TeacherName + "</td><td>" + description + "</td><td>" + StudioName + "</td><td>" + StartTime.ToString(@"hh\:mm") + "</td><td>" + EndTime.ToString(@"hh\:mm") + "</td><td>" + ClassDate.ToString(@"dd/MM/yyyy") + "</td><td>" + ExperienceLevel + "</td><td>" + bookingID + "</td></tr>";
            }
            connStr.Close();
            return htmlStr;
        }
        public string getWorkshopLoopData()
        {
            string htmlStr = "";
            SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            SqlCommand thisCommand = connStr.CreateCommand();
            thisCommand.CommandText = @"SELECT W.name, T.first_name, W.short_description, W.studio, cast(W.start_time as date) [classDate], cast(W.start_time as time(0)) [sTime], cast(W.end_time as time(0)) [eTime], W.id
                                      FROM workshop W, teacher T                                         
                                      WHERE DATEDIFF(dd, W.start_time, getdate()) <= 0 
                                      AND W.teacher_id = T.id";
            connStr.Open();
            SqlDataReader reader = thisCommand.ExecuteReader();

            while (reader.Read())
            {
                string Name = reader.GetString(0);
                string TeacherName = reader.GetString(1);
                string description = reader.GetString(2);
                string StudioName = reader.GetString(3);
                DateTime ClassDate = reader.GetDateTime(4);
                TimeSpan StartTime = reader.GetTimeSpan(5);
                TimeSpan EndTime = reader.GetTimeSpan(6);
                int bookingID = reader.GetInt32(7);
                htmlStr += "<tr><td>" + Name + "</td><td>" + TeacherName + "</td><td>" + description + "</td><td>" + StudioName + "</td><td>" + StartTime.ToString(@"hh\:mm") + "</td><td>" + EndTime.ToString(@"hh\:mm") + "</td><td>" + ClassDate.ToString(@"dd/MM/yyyy") + "</td><td>" + bookingID + "</td></tr>";
            }

            connStr.Close();
            return htmlStr;
        }

        public void bookClass_Click(object sender, EventArgs e)
        {

            var currentUser = Session["UserName"].ToString();
            var bookingID = "";

            try
            {
                bookingID = Request.Form["bookClass"];
                SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                connStr.Open();
                string classIDFinder = @"SELECT id from account WHERE username = '" + currentUser + "'";
                SqlCommand aCommand = new SqlCommand(classIDFinder, connStr);
                int userID = Convert.ToInt32(aCommand.ExecuteScalar().ToString());
                string insertReservation = @"INSERT INTO class_reservation (account_id, class_id)
                                          SELECT A.id, C.id
                                          FROM account A
                                          INNER JOIN class C
                                          ON A.id = '" + userID + "' AND C.id = '" + bookingID + "'";
                SqlCommand thisCommand = new SqlCommand(insertReservation, connStr);
                thisCommand.ExecuteNonQuery();
                connStr.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        public void bookWorkshop_Click(object sender, EventArgs e)
        {

            var currentUser = Session["UserName"].ToString();
            var bookingID = "";

            try
            {
                bookingID = Request.Form["bookClass"];
                SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                connStr.Open();
                string classIDFinder = @"SELECT id from account WHERE username = '" + currentUser + "'";
                SqlCommand aCommand = new SqlCommand(classIDFinder, connStr);
                int userID = Convert.ToInt32(aCommand.ExecuteScalar().ToString());
                string insertReservation = @"INSERT INTO class_reservation (account_id, workshop_id)
                                          SELECT A.id, W.id
                                          FROM account A
                                          INNER JOIN workshop W
                                          ON A.id = '" + userID + "' AND W.id = '" + bookingID + "'";
                SqlCommand thisCommand = new SqlCommand(insertReservation, connStr);
                thisCommand.ExecuteNonQuery();
                connStr.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}