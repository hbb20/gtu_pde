using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gtu_pde
{
    public partial class Form1_2_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form2.aspx");
        }
}
}