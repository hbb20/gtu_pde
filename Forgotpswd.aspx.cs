using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace gtu_pde
{
    public partial class Forgotpswd : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
      
        SqlDataAdapter da;
        DataSet ds;
        public void mycon()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGetPassword_Click(object sender, EventArgs e)
        {
            mycon();
            String strQuery = "SELECT User_Password FROM User_mst WHERE Team_Id=@Team_Id AND SecurityQue_ID=@SecurityQue_ID AND User_SecurityAns=@User_SecurityAns";
            cmd = new SqlCommand(strQuery,con);
            cmd.Parameters.AddWithValue("@Team_Id",txtteamid.Text );
            cmd.Parameters.AddWithValue("@SecurityQue_Id",ddlSecurityQuestion.SelectedValue);
            cmd.Parameters.AddWithValue("@User_SecurityAns",txtsecans.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string password = ds.Tables[0].Rows[0]["User_Password"].ToString();
                lblforgotpswd.Text = "Your Password is:"+" "+password.ToString();
            }
            else
            {
                lblforgotpswd.Text = "Password Not Found";
            }
            
             

        }
    }
}