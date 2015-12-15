using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WhiteLotusYoga.Account
{
    public partial class RegisterTwo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void completeRegistration_Click(object sender, EventArgs e)
        {
            var currentUser = Session["UserName"].ToString();
            var dobInput = "";
            var experienceInput = "";
            var healthInput = "";
            var contactInput = "";
            var bioInput = "";
            try
            {
                dobInput = Request.Form["dobInput"]; 
                experienceInput = Request.Form["experienceInput"];
                healthInput = Request.Form["healthInput"];
                contactInput = Request.Form["contactInput"];
                bioInput = Request.Form["bioInput"];
                SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                connStr.Open();
                string insertUserAccount = @"UPDATE account SET
                                           date_of_birth = '" + dobInput + @"',
                                           experience_level = '" + experienceInput + @"',
                                           health_notes = '" + healthInput + @"',
                                           phone_number = '" + contactInput + @"',
                                           bio = '" + bioInput + @"'
                                           WHERE username = '" + currentUser + @"'";
                SqlCommand command = new SqlCommand(insertUserAccount, connStr);
                command.ExecuteNonQuery();
                connStr.Close();
                Response.Redirect("~/");
                //Response.Redirect("~/Account/Profile");

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}