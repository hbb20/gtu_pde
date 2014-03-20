﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using GTU_PDE;

   
public class UserClass:ConnectionClass
{
    SqlCommand cmd;
    SqlConnection con;

    #region "All Field"

    private int _userid,_teamid,_queid;
    private DateTime user_createddate;
    private string _username,_userpassword,_securityans;
    private char _userisactive;

    #endregion


    #region "All Properties"


    public int User_Id
    {
        get
        {
            return _userid;
        }
        set
        {
            _userid = value;
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

    public int SecurityQue_ID
    {
        get
        {
            return _queid;
        }
        set
        {
            _queid = value;
        }
    }

    public string User_SecurityAns
    {
        get
        {
            return _securityans;
        }
        set
        {
            _securityans = value;
        }
    }
  
    public DateTime User_CreatedDate
    {
        get
        {
            return user_createddate;
        }
        set
        {
            user_createddate = value;
        }
    }
    public string User_Name
    {
        get
        {
            return _username;
        }
        set
        {
            _username = value;
        }
    }

    public string User_Password
    {
        get
        {
            return _userpassword;
        }
        set
        {
            _userpassword = value;
        }
    }


    public char User_IsActive
    {
        get
        {
            return _userisactive;
        }
        set
        {
            _userisactive = value;
        }
    }


    #endregion


    public bool CheckUser(int teamid, string username, string password)
    {
        string strQuery = "SELECT COUNT(*) FROM User_mst WHERE Team_Id=@teamid AND User_Name=@username AND User_Password=@password";
        SqlCommand cmd = new SqlCommand(strQuery, con);

        cmd.Parameters.Add("@teamid",teamid);
        cmd.Parameters.Add("@username", username);
        cmd.Parameters.Add("@password", password);

        int a = Convert.ToInt32(cmd.ExecuteScalar());

        if (a > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }



    public string GetPassword(int teamid, string username, int securityque, string securityans)
    {
        SqlParameter[] pmt = new SqlParameter[4];

        pmt[0] = new SqlParameter("@Team_Id", this.Team_Id);
        pmt[0].DbType = DbType.Int32;

        pmt[1] = new SqlParameter("@User_Name", this.User_Name);
        pmt[1].DbType = DbType.String;

        pmt[2] = new SqlParameter("@SecurityQue_ID", this.SecurityQue_ID);
        pmt[2].DbType = DbType.Int32;

        pmt[3] = new SqlParameter("@User_SecurityAns", this.User_SecurityAns);
        pmt[3].DbType = DbType.String;

        DataAccess.ExecuteNonQuery(con, CommandType.StoredProcedure, "GetPassword", pmt);
<<<<<<< HEAD
        return "true";
=======
        return true;
>>>>>>> 3d259baed550beefc45a2b8c9806a530a32947a5
    }
}