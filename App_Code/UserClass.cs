using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using gtu_pde;

   
public class UserClass
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
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

    public void mycon()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
        con.Open();
    }

    public bool CheckUser(int teamid, string username, string password)
    {

        mycon();
        string strQuery = "SELECT COUNT(*) FROM User_mst WHERE Team_Id=@teamid AND User_Name=@username AND User_Password=@password";
        cmd = new SqlCommand(strQuery, con);

        cmd.Parameters.AddWithValue("@teamid",teamid);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);

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

      
    }

