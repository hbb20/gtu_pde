using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class InventorClass:ConnectionClass
{
    #region "All Field"

    private int _applicantid, _formid;
    private string _applicantname, _applicantnationality, _applicantaddress,_applicantmobileno,_applicantemailid;

    #endregion


    #region "All Properties"


    public int Applicant_Id
    {
        get
        {
            return _applicantid;
        }
        set
        {
            _applicantid = value;
        }
    }

    public int Form_Id
    {
        get
        {
            return _formid;
        }
        set
        {
            _formid = value;
        }
    }

    public string Applicant_Name
    {
        get
        {
            return _applicantname;
        }
        set
        {
            _applicantname = value;
        }
    }

    public string Applicant_Nationality
    {
        get
        {
            return _applicantnationality;
        }
        set
        {
            _applicantnationality = value;
        }
    }


    public string Applicant_Address
    {
        get
        {
            return _applicantaddress;
        }
        set
        {
            _applicantaddress = value;
        }
    }

    public string Applicant_MobileNo
    {
        get
        {
            return _applicantmobileno;
        }
        set
        {
            _applicantmobileno = value;
        }
    }

    public string Applicant_EmailId
    {
        get
        {
            return _applicantemailid;
        }
        set
        {
            _applicantemailid = value;
        }
    }


    #endregion

  
}