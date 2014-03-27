using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using GTU_PDE;


   
public class UserClass
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    #region "All Field"

    private int _teamid,_queid;
    private DateTime user_createddate;
    private string _username,_userpassword,_securityans;
    private string  _userisactive;

    #endregion


    #region "All Properties"


   
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


    public string User_IsActive
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

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
        con.Open();
  
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



    public bool AddNewUser()
    {
        mycon();

        SqlParameter[] pmt = new SqlParameter[6];

        pmt[0] = new SqlParameter("@Team_Id", this.Team_Id);
        pmt[0].DbType = DbType.Int32;

        pmt[1] = new SqlParameter("@User_Name", this.User_Name);
        pmt[1].DbType = DbType.String;

        pmt[2] = new SqlParameter("@User_Password", this.User_Password);
        pmt[2].DbType = DbType.String;

        pmt[3] = new SqlParameter("@User_IsActive", this.User_IsActive);
        pmt[3].DbType = DbType.String;

        pmt[4] = new SqlParameter("@SecurityQue_ID", this.SecurityQue_ID);
        pmt[4].DbType = DbType.Int32;

        pmt[5] = new SqlParameter("@User_SecurityAns", this.User_SecurityAns);
        pmt[5].DbType = DbType.String;

        DataAccess.ExecuteNonQuery(CommandType.StoredProcedure, "AddNewUser", pmt);
        return true;
        
    }
}

