using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("name", typeof(string));
        dt.Rows.Add("harsh");
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}