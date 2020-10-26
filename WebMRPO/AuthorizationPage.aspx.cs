using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMRPO
{
    public partial class AuthorizationPage : System.Web.UI.Page
    {
        RegistrationAndAuthorizationC authorization = new RegistrationAndAuthorizationC();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAuthorization_Click(object sender, EventArgs e)
        {
            if (authorization.Authorization(tbLogin.Text, tbPassword.Text))
                lblResultName.Text = authorization.getName + ", здравствуйте";
            else
                lblResultName.Text = "Пользователя с таким логином и паролем не существует";
        }
    }
}