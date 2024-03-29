﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yeetles_13
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CurrentUser"] != null)
            {
                User user;
                user = Database.GetUserById(Database.GetUserIdByUserName(Session["CurrentUser"].ToString()));
                UserIdLabel.InnerText = user.Id.ToString();
                EmailTextBox.Value = user.Email;
                PhoneNumbeTextBox.Value = user.PhoneNumber;
                PasswordInput.Value = user.Password;
                UserNameLabel.InnerText = user.UserName;
                NameLabel.InnerText = user.Name;

                if (!Database.IsAdmin(user.UserName))
                {
                    AdminCheckBox.Visible = false;
                    AdminLabel.Visible = false;
                }

            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void SaveChangesButton_Click(object sender, EventArgs e)
        {
            Database.EditUser(UserNameLabel.InnerText, "", PhoneNumbeTextBox.Value, EmailTextBox.Value, PasswordInput.Value);
        }
    }
}