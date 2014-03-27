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
    public int tmId;
 
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
    protected void Some()
    {


        DataTable dt1 = new DataTable();
        dt1.Columns.Add("Student Id");
        dt1.Columns.Add("Enrollment No");
        dt1.Columns.Add("College Code");
        dt1.Columns.Add("Department");
        dt1.Columns.Add("Contact");
        dt1.Columns.Add("Email Id");

        dr = dt1.NewRow();
        dr["Student Id"] = string.Empty;
        dr["Enrollment No"] = string.Empty;
        dr["College Code"] = string.Empty;
        dr["Department"] = string.Empty;
        dr["Contact"] = string.Empty;
        dr["Email Id"] = string.Empty;

        ViewState["CurrentTable"] = dt1;

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
        //if (ddlSecurityQuestion.SelectedIndex == 0)
        //{
        //    CompareValidator3.IsValid = false;
        //}
        

        mycon();
        UserClass objUser = new UserClass();
        cmd = new SqlCommand("INSERT INTO dbo.Team_mst(Team_Id) VALUES((SELECT MAX(Team_Id) FROM dbo.Team_mst)+1);", con);
        cmd.ExecuteNonQuery();

        cmd = new SqlCommand("SELECT MAX(Team_Id) FROM dbo.Team_mst;", con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            tmId = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            objUser.Team_Id = Convert.ToInt32(tmId);
            
        }


        //Retrive data from Gridview and stored in Array
        


            objUser.User_Name = txtUserName.Text.ToString();
            objUser.User_Password = txtPassword.Text.ToString();
            objUser.User_IsActive = "N";
            objUser.SecurityQue_ID = Convert.ToInt32(ddlSecurityQuestion.SelectedValue);
            objUser.User_SecurityAns = txtAnswer.Text.ToString();

            if (objUser.AddNewUser())
            {
                lblTeamId.Visible = true;
                lblTeamId.Text = tmId.ToString();   
            }
            else
            {
                Response.Write("Error");
            }


        int j = 0;
        String[] stdntID = new String[10];
        String[] EnrlNo = new String[10];
        
        DateTime dtm1 = DateTime.Now;
        string query = "INSERT INTO ProjectTeam_mst (Team_Id,Student_Id,Student_ContactNo,Student_MailId,Project_CreatedDate,Student_IsActive,Approval_Status) VALUES";
        for (int l=0;l < GridView1.Rows.Count;l++)
        {
            if (l== GridView1.Rows.Count -1)
            {
                   GridViewRow gRow =GridView1.Rows[l];
        query+= "("+tmId+","+gRow.Cells[1].Text+",'"+gRow.Cells[5].Text+"','"+gRow.Cells[6].Text+"','"+dtm1+"','N','N'"+")";
        
            }
                else
            {
        GridViewRow gRow =GridView1.Rows[l];
        query+= "("+tmId+","+gRow.Cells[1].Text+",'"+gRow.Cells[5].Text+"','"+gRow.Cells[6].Text+"','"+dtm1+"','N','N'"+"),";
        
            }
        }
    
        SqlConnection cNx = con;
        da = new SqlDataAdapter(query,cNx);
        ds = new DataSet();
        da.Fill(ds);
        
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable tbl1 = new DataTable();
        tbl1 = GetDataTable(GridView1);
        if (tbl1.Rows.Count > 1)
        {
            tbl1.Rows.RemoveAt(e.RowIndex);
            GridView1.DataSource = tbl1;
            GridView1.DataBind();
        }
    }


    DataTable GetDataTable(GridView dtg)
    {
        DataTable dt = new DataTable();

        // add the columns to the datatable            
        if (dtg.HeaderRow != null)
        {
            for (int i = 1; i < dtg.HeaderRow.Cells.Count; i++)
            {
                dt.Columns.Add(dtg.HeaderRow.Cells[i].Text);
            }
        }

        //  add each of the data rows to the table
        foreach (GridViewRow row in dtg.Rows)
        {
            DataRow dr;
            dr = dt.NewRow();

            for (int i = 1; i < row.Cells.Count; i++)
            {
                dr[i-1] = row.Cells[i].Text.Replace(" ", "");
            }
            dt.Rows.Add(dr);
        }
        return dt;
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        
        Panel2.Visible = true;
        

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}