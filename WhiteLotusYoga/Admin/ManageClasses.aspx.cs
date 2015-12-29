using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLotusYoga.Admin
{
    public partial class ManageClasses : System.Web.UI.Page
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
        public void manageClass_Click(object sender, EventArgs e)
        {
            int bookingID = 0;

            if (Request.Form["choice"] == "cancel")
            {
                try
                {
                    bookingID = Convert.ToInt32(Request.Form["classManagementIDInput"]);
                    SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                    connStr.Open();
                    string insertReservation = @"UPDATE class SET cancelled = 1 WHERE id = '" + bookingID + "'";
                    SqlCommand thisCommand = new SqlCommand(insertReservation, connStr);
                    thisCommand.ExecuteNonQuery();
                    connStr.Close();
                    Response.Write("Class Cancelled");
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
            else if (Request.Form["choice"] == "remove")
            {
                try
                {
                    bookingID = Convert.ToInt32(Request.Form["classManagementIDInput"]);
                    SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                    connStr.Open();
                    string insertReservation = @"DELETE FROM class WHERE id = '" + bookingID + "'";
                    SqlCommand thisCommand = new SqlCommand(insertReservation, connStr);
                    thisCommand.ExecuteNonQuery();
                    connStr.Close();
                    Response.Write("Class Deleted");
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }           
        }
    }
}