using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class UserClass:ConnectionClass
{
    public class StudentClass:ConnectionClass
{
    #region "All Field"

    private int _userid,_teamid;
    private DateTime user_createddate;
    private string _username,_userpassword;
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


    #endregion////

	
}