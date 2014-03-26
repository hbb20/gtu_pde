using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI;

public partial class Default3 : System.Web.UI.Page
{
   DataTable dt;
   protected void Page_Load(object sender, EventArgs e)
   {
       if (!Page.IsPostBack)
       {
           FirstGridViewRow();
       }
   }
   private void FirstGridViewRow()
   {
       DataTable dt = new DataTable();
       DataRow dr = null;
       dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
       dt.Columns.Add(new DataColumn("Col1", typeof(string)));
       dt.Columns.Add(new DataColumn("Col2", typeof(string)));
       dt.Columns.Add(new DataColumn("Col3", typeof(string)));
       dt.Columns.Add(new DataColumn("Col4", typeof(string)));
       dt.Columns.Add(new DataColumn("Col5", typeof(string)));
       dr = dt.NewRow();
       dr["RowNumber"] = 1;
       dr["Col1"] = string.Empty;
       dr["Col2"] = string.Empty;
       dr["Col3"] = string.Empty;
       dr["Col4"] = string.Empty;
       dr["Col5"] = string.Empty;
       dt.Rows.Add(dr);

       ViewState["CurrentTable"] = dt;


       GridView1.DataSource = dt;
      GridView1.DataBind();


       //TextBox txn = (TextBox)grvStudentDetails.Rows[0].Cells[1].FindControl("txtName");
       //txn.Focus();
       //Button btnAdd = (Button)grvStudentDetails.FooterRow.Cells[5].FindControl("ButtonAdd");
       //Page.Form.DefaultFocus = btnAdd.ClientID;

   }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataRow dr = null;
        dr = dt.NewRow();
        dr["RowNumber"] = 1;
        dr["Col1"] = TextBox1.Text;
        dr["Col2"] = TextBox2.Text;
        dr["Col3"] = string.Empty;
        dr["Col4"] = string.Empty;
        dr["Col5"] = string.Empty;
        dt.Rows.Add(dr);

        ViewState["CurrentTable"] = dt;


        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}