using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class InventorClass1:ConnectionClass
{
    #region "All Field"

    private int _inventorid, _formid;
    private string _inventorname, _inventornationality, _inventoraddress, _inventormobileno, _inventoremailid;

    #endregion


    #region "All Properties"


    public int Inventor_Id
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
            return _formid;
        }
        set
        {
            _formid = value;
        }
    }

    public string Inventor_Name
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

    public string Inventor_Nationality
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


    public string Inventor_Address
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

    public string Inventor_MobileNo
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

    public string Inventor_EmailId
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