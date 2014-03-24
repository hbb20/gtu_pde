using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Addmember : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    DataSet ds;
    SqlDataAdapter da;
     int studentId;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void mycon()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
        con.Open();
    }
   
    protected void btnGo_Click(object sender, EventArgs e)
    {
        mycon();
        string Code, Department;
        cmd = new SqlCommand("Select  College_mst.College_Code,Department_mst.Department_Name From College_mst,Department_mst,Student_mst Where Student_mst.Student_EnrollmentNo=@Student_EnrollmentNo And College_mst.College_Id=Student_mst.College_Id And Department_mst.Department_Id=Student_mst.Department_Id", con);
        cmd.Parameters.AddWithValue("@Student_EnrollmentNo", txtEnrollmentNo.Text);

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Code = ds.Tables[0].Rows[0]["College_Code"].ToString();
            Department = ds.Tables[0].Rows[0]["Department_Name"].ToString();
            txtCollegeCode.Text = Code.ToString();
            txtDepartment.Text = Department.ToString();
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

        

        objProj.Team_Id = Convert.ToInt32(txtTeamId.Text);
       
        objProj.Student_ContactNo=txtContactNo.Text.ToString();
        objProj.Student_MailId=txtEmailid.Text.ToString();
      
        objProj.Student_IsActive="N";

        if (objProj.AddMember())
        {
            Response.Write("<script>alert('Request send Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Request Not Sent')</script>");
        }
    }
   
}