using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Login_v4
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            String checkUser = "Select count(*) from users where username = '" + usernameLogin.Text + "' ";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                String checkPassword = "select password from users where username = '" + usernameLogin.Text + "' ";
                String email = "select email from users where username = '" + usernameLogin.Text + "' ";
                SqlCommand emailcomm = new SqlCommand(email, conn);
                String emailString = emailcomm.ExecuteScalar().ToString();
                SqlCommand passcomm = new SqlCommand(checkPassword, conn);
                String password = passcomm.ExecuteScalar().ToString().Replace(" ", "");
                if(password == passwordLogin.Text)
                {
                    User user = new User(usernameLogin.Text , emailString );
                    Session["user"] = user;
                    Response.Redirect("dashboard.aspx");

                }
                else
                {
                    Response.Write("password not corresct");
                }

            }
            else
            {
                Response.Write("user not exist");
            }
            conn.Close();

        }
    }
}