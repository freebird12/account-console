using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string uname = TextBox4.Text;
            string pass = TextBox3.Text;
            if (FormsAuthentication.Authenticate(uname, pass))
            {
                FormsAuthentication.RedirectFromLoginPage(uname, true);
            }
            else
            { Response.Write("<Script> alert('Invalid Credentials')</script>"); }

        }
    }
}
