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
    public partial class CreateClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createClass_Click(object sender, EventArgs e)
        {
            var className = "";
            var startTime = "";
            var endTime = "";
            var shortDescription = "";
            var capacityInput = "";
            var studioInput = "";
            var teacherSelect = "";
            var repeater = "";
            var classLevel = "";

            try
            {
                className = Request.Form["className"];
                startTime = Request.Form["startTime"].Replace("T", " ");
                endTime = Request.Form["endTime"].Replace("T", " "); ;
                shortDescription = Request.Form["shortDescription"];
                capacityInput = Request.Form["capacityInput"];
                studioInput = Request.Form["studioInput"];
                teacherSelect = Request.Form["teacherSelect"];
                classLevel = Request.Form["classLevel"];

                SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                connStr.Open();
                string insertUserAccount = @"INSERT INTO class
                                           (name, start_time, end_time, studio, experience_level, class_capacity, teacher_id, short_description)
                                           VALUES ('" + className + "', '" + startTime + "', '" + endTime + "', '" + studioInput + "', '" + classLevel + "', '" + capacityInput + "', '" + teacherSelect + "', '" + shortDescription + "')";
                SqlCommand command = new SqlCommand(insertUserAccount, connStr);
                command.ExecuteNonQuery();
                connStr.Close();
                Response.Redirect("../Admin/Dashboard");


            }
            catch (Exception ex)
            {
                Response.Write(Request.Form["startTime"]);
                //Response.Write("Error: " + ex.Message);
            }

        }
    }
}