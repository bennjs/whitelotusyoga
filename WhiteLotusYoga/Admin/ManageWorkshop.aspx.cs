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
    public partial class ManageWorkshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                    string insertReservation = @"UPDATE workshop SET cancelled = 1 WHERE id = '" + bookingID + "'";
                    SqlCommand thisCommand = new SqlCommand(insertReservation, connStr);
                    thisCommand.ExecuteNonQuery();
                    connStr.Close();
                    Response.Write("Workshop Cancelled");
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
                    string insertReservation = @"DELETE FROM workshop WHERE id = '" + bookingID + "'";
                    SqlCommand thisCommand = new SqlCommand(insertReservation, connStr);
                    thisCommand.ExecuteNonQuery();
                    connStr.Close();
                    Response.Write("Workshop Deleted");
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
        }
    }
}