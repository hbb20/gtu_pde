using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class ProjectTeamClass : ConnectionClass
{

    #region "All Field"

    private int _projectteamid, _teamid, _studentid;
    private DateTime _projectcreateddate;
    private string _studentcontactno, _studentmailid;
    private char _studentisactive;

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
    public DateTime Prjoect_CreatedDate
    {
        get
        {
            return _projectcreateddate;
        }
        set
        {
            _projectcreateddate = value;
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


    public char Student_IsActive
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
}
