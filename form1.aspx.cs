using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gtu_pde
{
    public partial class form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void btn_add_row2_Click(object sender, EventArgs e)
        //{
        //    txtApplicantaddress2.Visible = true;
        //    txtApplicantNationality2.Visible = true;
        //    txtapplicantfullname2.Visible = true;
        //    txtcontactno2.Visible = true;
        //    txtemailid2.Visible = true;
           
        //}
        protected void btn_add_row2_Click(object sender, EventArgs e)
        {
            
            txtApplicantaddress2.Visible = true;
            txtApplicantNationality2.Visible = true;
            txtapplicantfullname2.Visible = true;
            txtcontactno2.Visible = true;
            txtemailid2.Visible = true;
           
        }
}
}