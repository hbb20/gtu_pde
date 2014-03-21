using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gtu_pde
{
    public partial class Forgotpswd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGetPassword_Click(object sender, EventArgs e)
        {
            int teamid = Convert.ToInt32(txtteamid.Text);
          //  string username = txtusername.Text.ToString();
            int securityque = Convert.ToInt32(ddlSecurityQuestion.SelectedValue);
            string securityans=txtsecans.Text.ToString();

            UserClass objUser = new UserClass();

            
            string password = Convert.ToString(objUser.GetPassword(teamid,securityque,securityans));

            lblforgotpswd.Text = password.ToString();

        }
}
}