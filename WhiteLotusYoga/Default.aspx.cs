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

        public string getTodaysClassLoopData()
        {
            string htmlStr = "";
            SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            SqlCommand thisCommand = connStr.CreateCommand();
            thisCommand.CommandText = @"SELECT C.name, T.first_name, C.studio, C.experience_level, cast(C.start_time as time(0)) [sTime], cast(C.end_time as time(0)) [eTime], C.id
                                      FROM class C, teacher T                                         
                                      WHERE DATEDIFF(dd, C.start_time, getdate()) = 0 
                                      AND C.teacher_id = T.id";
            connStr.Open();
            SqlDataReader reader = thisCommand.ExecuteReader();

            while (reader.Read())
            {
                string Name = reader.GetString(0);
                string TeacherName = reader.GetString(1);
                string StudioName = reader.GetString(2);
                string ExperienceLevel = reader.GetString(3);
                TimeSpan StartTime = reader.GetTimeSpan(4);
                TimeSpan EndTime = reader.GetTimeSpan(5);
                int id = reader.GetInt32(6);
                htmlStr += "<tr><td>" + Name + "</td><td>" + TeacherName + "</td><td>" + StudioName + "</td><td>" + StartTime.ToString(@"hh\:mm") + "</td><td>" + EndTime.ToString(@"hh\:mm") + "</td><td>" + ExperienceLevel + "</td></tr>";
            }

            connStr.Close();
            return htmlStr;
        }
    }
}