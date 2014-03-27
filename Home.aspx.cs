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
    public partial class Home : System.Web.UI.Page
    {

        int teamId = 21;
        SqlConnection con;

        void mycon()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
            con.Open();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            Commanding();
        }


        protected void Commanding()
        {

            mycon();

            String qry = "SELECT dbo.ProjectTeam_mst.Student_Id,dbo.Student_mst.Student_Name,dbo.Student_mst.Student_EnrollmentNo FROM dbo.ProjectTeam_mst,dbo.Student_mst WHERE dbo.ProjectTeam_mst.Team_Id = " + teamId + " AND dbo.ProjectTeam_mst.Student_IsActive = 'N' AND dbo.ProjectTeam_mst.Approval_Status = 'N' AND dbo.Student_mst.Student_Id = dbo.ProjectTeam_mst.Student_Id";
            DataTable dt = new DataTable();
            DataRow dr = null;

            dt.Columns.Add(new DataColumn("Name", typeof(string)));
            dt.Columns.Add(new DataColumn("Enrollment No", typeof(string)));

            SqlDataAdapter dAddpt = new SqlDataAdapter(qry, con);
            DataSet dtSt = new DataSet();
            dAddpt.Fill(dtSt);
            if (dtSt.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow drS in dtSt.Tables[0].Rows)
                {
                    dr = dt.NewRow();
                    dr["Name"] = drS[1];
                    dr["Enrollment No"] = drS[2];
                    dt.Rows.Add(dr);
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

        }
    }
}
           