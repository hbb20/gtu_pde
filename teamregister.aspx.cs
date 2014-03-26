using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class teamregister : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    DataSet ds;
    SqlDataAdapter da;
    public DataTable dt;
    DataRow dr;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButton2.Checked = true;
           
    }

    void mycon()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
        con.Open();
    }
    
    

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        dt = new DataTable();
        dt.Columns.Add("Student Id");
        dt.Columns.Add("Enrollment No");
        dt.Columns.Add("College Code");
        dt.Columns.Add("Department");
        dt.Columns.Add("Contact");
        dt.Columns.Add("Email Id");
        
       

        for (int intCnt = 0; intCnt < GridView1.Rows.Count; intCnt++)
        {
            if (GridView1.Rows[intCnt].RowType == DataControlRowType.DataRow)
            {
                dr = dt.NewRow();
                dr["Student Id"] = GridView1.Rows[intCnt].Cells[1].Text;
                dr["Enrollment No"] = GridView1.Rows[intCnt].Cells[2].Text;
                dr["College Code"] = GridView1.Rows[intCnt].Cells[3].Text;
                dr["Department"] = GridView1.Rows[intCnt].Cells[4].Text;
                dr["Contact"] = GridView1.Rows[intCnt].Cells[5].Text;
                dr["Email Id"] = GridView1.Rows[intCnt].Cells[6].Text;
                dt.Rows.Add(dr);

            }
        }

        dr = dt.NewRow();
        dr["Student Id"] = hfStudentId.Value;
        dr["Enrollment No"] = txtEnrollmentNo.Text;
        dr["College Code"] = txtCollegeCode.Text;
        dr["Department"] = txtDepartment.Text;
        dr["Contact"] = txtContactNo.Text;
        dr["Email Id"] = txtEmailid.Text;
     
        dt.Rows.Add(dr);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        txtEnrollmentNo.Text = "";
        txtCollegeCode.Text = "";
        txtDepartment.Text = "";
        txtContactNo.Text = "";
        txtEmailid.Text = "";
        hfStudentId.Value = "";
    }


    protected void btnGo_Click(object sender, EventArgs e)
    {
        mycon();
        string Code, Department,StudentId;
        cmd = new SqlCommand("Select  College_mst.College_Code,Student_mst.Student_Id,Department_mst.Department_Name From College_mst,Department_mst,Student_mst Where Student_mst.Student_EnrollmentNo=@Student_EnrollmentNo And College_mst.College_Id=Student_mst.College_Id And Department_mst.Department_Id=Student_mst.Department_Id", con);
        cmd.Parameters.AddWithValue("@Student_EnrollmentNo", txtEnrollmentNo.Text);

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Code = ds.Tables[0].Rows[0]["College_Code"].ToString();
            Department = ds.Tables[0].Rows[0]["Department_Name"].ToString();
            StudentId = ds.Tables[0].Rows[0]["Student_Id"].ToString();
            txtCollegeCode.Text = Code.ToString();
            txtDepartment.Text = Department.ToString();
            hfStudentId.Value = StudentId.ToString();

        }
        con.Close();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ProjectTeamClass objProj = new ProjectTeamClass();
        mycon();
        cmd = new SqlCommand("Select  Student_Id From Student_mst Where Student_EnrollmentNo=@Student_EnrollmentNo", con);
        cmd.Parameters.AddWithValue("@Student_EnrollmentNo", txtEnrollmentNo.Text);

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            int studentId = Convert.ToInt32(ds.Tables[0].Rows[0]["Student_Id"]);

            objProj.Student_Id = studentId;
        }


        objProj.Student_ContactNo = txtContactNo.Text.ToString();
        objProj.Student_MailId = txtEmailid.Text.ToString();

        objProj.Student_IsActive = "N";

        if (objProj.AddTeam())
        {
            Response.Write("Request send Successfully");
        }
        else
        {
            Response.Write("Request Not Sent");
        }
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
       
    }

    
}