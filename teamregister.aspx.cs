using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class teamregister : System.Web.UI.Page
{
    DataTable dt;
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
           
    }
 

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        dt = new DataTable();
        dt.Columns.Add("Enrollment No");
        dt.Columns.Add("College Code");
        dt.Columns.Add("Department");
        dt.Columns.Add("Contact");
        dt.Columns.Add("Email Id");

        for(int intCnt=0; intCnt<GridView1.Rows.Count; intCnt++)
        {
            if(GridView1.Rows[intCnt].RowType==DataControlRowType.DataRow)
            {
                dr=dt.NewRow();
                dr["Enrollment No"]=GridView1.Rows[intCnt].Cells[0].Text;
                dr["College Code"]=GridView1.Rows[intCnt].Cells[1].Text;
                dr["Department"]=GridView1.Rows[intCnt].Cells[2].Text;
                dr["Contact"]=GridView1.Rows[intCnt].Cells[3].Text;
                dr["Email Id"]=GridView1.Rows[intCnt].Cells[4].Text;
                dt.Rows.Add(dr);
            }
            }

        dr=dt.NewRow();
         dr["Enrollment No"] = txtEnrollmentNo.Text;
        dr["College Code"] = txtCollegeCode.Text;
        dr["Department"] = txtDepartment.Text;
        dr["Contact"] = txtContactNo.Text;
        dr["Email Id"] = txtEmailid.Text;
          dt.Rows.Add(dr);
        GridView1.DataSource=dt;
        GridView1.DataBind();

    }
}