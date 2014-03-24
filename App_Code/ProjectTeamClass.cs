using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using GTU_PDE;
using System.Configuration;

public class ProjectTeamClass
{
    

    #region "All Field"

    private int _projectteamid, _teamid, _studentid;

    private string _studentcontactno, _studentmailid;
    private string _studentisactive;

    #endregion


    #region "All Properties"

    

    public int Prjoect_TeamId
    {
        get
        {
            return _projectteamid;
        }
        set
        {
            _projectteamid = value;
        }
    }

    public int Team_Id
    {
        get
        {
            return _teamid;
        }
        set
        {
            _teamid = value;
        }
    }
    public int Student_Id
    {
        get
        {
            return _studentid;
        }
        set
        {
            _studentid = value;
        }
    }
    
    public string Student_ContactNo
    {
        get
        {
            return _studentcontactno;
        }
        set
        {
            _studentcontactno = value;
        }
    }

    public string Student_MailId
    {
        get
        {
            return _studentmailid;
        }
        set
        {
            _studentmailid = value;
        }
    }


    public string Student_IsActive
    {
        get
        {
            return _studentisactive;
        }
        set
        {
            _studentisactive = value;
        }
    }


    #endregion////

    public bool AddMember()
    {
      
        SqlParameter[] pmt = new SqlParameter[5];

        pmt[0] = new SqlParameter("@Team_Id", this.Team_Id);
        pmt[0].DbType = DbType.Int32;

        pmt[1] = new SqlParameter("@Student_ID", this.Student_Id);
        pmt[1].DbType = DbType.Int32;

        pmt[2] = new SqlParameter("@Student_ContactNo", this.Student_ContactNo);
        pmt[2].DbType = DbType.String;

        pmt[3] = new SqlParameter("@Student_MailId", this.Student_MailId);
        pmt[3].DbType = DbType.String;

        pmt[4] = new SqlParameter("@Student_IsActive", this.Student_IsActive);
        pmt[4].DbType = DbType.String;



        DataAccess.ExecuteNonQuery( CommandType.StoredProcedure, "AddMembers", pmt);
        return true;
    }

    public bool AddTeam()
    {
        SqlParameter[] pmt = new SqlParameter[5];

        pmt[0] = new SqlParameter("@Team_Id", this.Team_Id);
        pmt[0].DbType = DbType.Int32;

        pmt[1] = new SqlParameter("@Student_ID", this.Student_Id);
        pmt[1].DbType = DbType.Int32;

        pmt[2] = new SqlParameter("@Student_ContactNo", this.Student_ContactNo);
        pmt[2].DbType = DbType.String;

        pmt[3] = new SqlParameter("@Student_MailId", this.Student_MailId);
        pmt[3].DbType = DbType.String;

        pmt[4] = new SqlParameter("@Student_IsActive", this.Student_IsActive);
        pmt[4].DbType = DbType.String;



        DataAccess.ExecuteNonQuery(CommandType.StoredProcedure, "AddTeam", pmt);
        return true;
    }
}
