using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


public class InventorClass : ConnectionClass
{
    #region "All Field"

    private int _applicantid, _form_id;
    private string _applicantname, _applicantnationality, _applicantaddress, _applicantmobileno, _applicantemailid;

    #endregion


    #region "All Properties"


    public int Applicant_Id
    {
        get
        {
            return _inventorid;
        }
        set
        {
            _inventorid = value;
        }
    }

    public int Form_Id
    {
        get
        {
            return _form_id;
        }
        set
        {
            _form_id = value;
        }
    }

    public string Applicant_Name
    {
        get
        {
            return _inventorname;
        }
        set
        {
            _inventorname = value;
        }
    }

    public string Applicant_Nationality
    {
        get
        {
            return _inventornationality;
        }
        set
        {
            _inventornationality = value;
        }
    }


    public string Applicant_Address
    {
        get
        {
            return _inventoraddress;
        }
        set
        {
            _inventoraddress = value;
        }
    }

    public string Applicant_MobileNo
    {
        get
        {
            return _inventormobileno;
        }
        set
        {
            _inventormobileno = value;
        }
    }

    public string Applicant_EmailId
    {
        get
        {
            return _inventoremailid;
        }
        set
        {
            _inventoremailid = value;
        }
    }


    #endregion

   
    
}