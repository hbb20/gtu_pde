using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace gtu_pde
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con;
        void mycon()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
            con.Open();
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {

            bool loginStatus = false;

            int teamid=Convert.ToInt32(txtteamid.Text);
            string username = txtusername.Text.ToString();
            string password = txtpswd.Text.ToString();

           UserClass objlogin = new UserClass();
        
            loginStatus = objlogin.CheckUser(teamid,username,password);

            if (loginStatus)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }
}
}