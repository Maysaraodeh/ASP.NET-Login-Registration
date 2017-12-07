using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_v4
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(Session["user"] != null)
            {
                User user = (User)Session["user"];
                username.Text = user.username;
                email.Text = user.email;
               
            }
            else
            {
                Response.Redirect("loginPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("loginPage.aspx");
        }
    }
}