using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WhiteLotusYoga.Models;

namespace WhiteLotusYoga.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                connStr.Open();
                string checkAccount = "SELECT count(*) from account WHERE username = '" + Request.Form["usernameInput"] + "'";
                SqlCommand command = new SqlCommand(checkAccount, connStr);
                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                connStr.Close();
                if (temp == 1)
                {
                    Response.Write("This Username already exists!");
                }
            }
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            var firstName = "";
            var lastName = "";
            var username = "";
            var emailAddress = "";
            var password = "";
            Response.Write("The Button Works");
            try
            {
                firstName = Request.Form["firstNameInput"];
                lastName = Request.Form["lastNameInput"];
                username = Request.Form["usernameInput"];
                emailAddress = Request.Form["emailInput"];
                password = Request.Form["passwordInput"];



                SqlConnection connStr = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                connStr.Open();
                string insertUserAccount = "INSERT INTO account (first_name, last_name, username, email_address, password) VALUES ('" + firstName + "', '" + lastName + "','" + username + "', '" + emailAddress + "', '" + password + "')";
                SqlCommand command = new SqlCommand(insertUserAccount, connStr);
                command.ExecuteNonQuery();
                connStr.Close();
                Response.Write("Registration was successful!");                
            } catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
            
        }
    }
}