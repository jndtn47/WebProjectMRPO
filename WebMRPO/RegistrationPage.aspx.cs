using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMRPO
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        RegistrationAndAuthorizationC registration = new RegistrationAndAuthorizationC();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            lblResulRegistration.Text = registration.Registration(tbName.Text, tbLogin.Text, tbPasswod.Text);
            //if(registration.isSuccess)
             //   Server.Transfer("MainWindow.aspx", true);
        }
    }
}