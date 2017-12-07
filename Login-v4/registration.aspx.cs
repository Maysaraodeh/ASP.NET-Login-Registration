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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                String checkUser = "Select count(*) from users where username = '" + userName.Text + "' ";
                SqlCommand com = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("user is Exist ");
                }
                else
                {
                    String insertUser = "insert into users (username , email , password) values (@Uname , @Email , @password)  ";
                    SqlCommand comm = new SqlCommand(insertUser, conn);
                    comm.Parameters.AddWithValue("@Uname", userName.Text);
                    comm.Parameters.AddWithValue("@Email", email.Text);
                    comm.Parameters.AddWithValue("@password", password.Text);
                    comm.ExecuteNonQuery();
                    Response.Redirect("Users.aspx");
                    Response.Write("registration successful");
                }
                conn.Close();
         }catch(Exception ex)
            {
                Response.Write("error" + ex.Message);
            }
        }
    }
}