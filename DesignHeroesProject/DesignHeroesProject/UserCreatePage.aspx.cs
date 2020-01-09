using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DesignHeroesProject
{
    public partial class UserCreatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CurrentUser"] == null || !Convert.ToBoolean(Session["IsAdmin"]))
            {
                Response.Redirect("Dashboard.aspx");
            }
        }

        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            Database.CreateUser(FullNameTextBox.Value, PhoneNumbeTextBox.Value, EmailTextBox.Value, UserNameTextBox.Value, PasswordTextBox.Value, AdminCheckBox.Checked);
            Response.Redirect("Dashboard.aspx");
        }


    }
}