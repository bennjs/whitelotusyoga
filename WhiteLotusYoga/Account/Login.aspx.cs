using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WhiteLotusYoga.Models;

namespace WhiteLotusYoga.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void logInButton_Click(object sender, EventArgs e)
        {
            SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            connStr.Open();
            string checkAccountEmail = "SELECT count(*) from account WHERE username = '" + Request.Form["username"] + "'";
            SqlCommand emailCommand = new SqlCommand(checkAccountEmail, connStr);
            int temp = Convert.ToInt32(emailCommand.ExecuteScalar().ToString());
            connStr.Close();
            if (temp == 1)
            {
                try
                {
                    connStr.Open();
                    string checkAccountPassword = "SELECT password from account WHERE password = '" + Request.Form["password"] + "'";
                    SqlCommand passCommand = new SqlCommand(checkAccountPassword, connStr);
                    string password = passCommand.ExecuteScalar().ToString().Replace(" ", "");
                    if (password == Request.Form["password"])
                    {
                        Session["UserName"] = Request.Form["username"];
                        //string updateLastLogin = "UPDATE account SET last_log_in_date='" + currentDate + "' WHERE username = '" + Session["UserName"] + "'";
                        //SqlCommand updateLastLoginCommand = new SqlCommand(updateLastLogin, connStr);
                        //updateLastLoginCommand.ExecuteNonQuery();
                        if (Request.Form["username"] == "admin")
                        {
                            Response.Redirect("~/Admin/Dashboard");
                        }
                        else
                        {
                            Response.Redirect("~/");
                        }
                    }
                    else
                    {
                        Response.Write("Incorrect Password");
                    }
                    connStr.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
            else
            {
                Response.Write("No Username");
            }
        }
    }
}