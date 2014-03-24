//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;


//public class InventorClass:ConnectionClass
//{
//    #region "All Field"

//    private int _inventorid,_formid;
//    private string _inventorname, _inventornationality, _inventoraddress, _inventormobileno, _inventoremailid;

//    #endregion


//    #region "All Properties"


//    public int Inventor_Id
//    {
//        get
//        {
//            return _inventorid;
//        }
//        set
//        {
//            _inventorid = value;
//        }
//    }

//    public int Form_Id
//    {
//        get
//        {
//            return _formid;
//        }
//        set
//        {
//            _formid = value;
//        }
//    }

//    public string Inventor_Name
//    {
//        get
//        {
//            return _inventorname;
//        }
//        set
//        {
//            _inventorname = value;
//        }
//    }

//    public string Inventor_Nationality
//    {
//        get
//        {
//            return _inventornationality;
//        }
//        set
//        {
//            _inventornationality = value;
//        }
//    }


//    public string Inventor_Address
//    {
//        get
//        {
//            return _inventoraddress;
//        }
//        set
//        {
//            _inventoraddress = value;
//        }
//    }

//    public string Inventor_MobileNo
//    {
//        get
//        {
//            return _inventormobileno;
//        }
//        set
//        {
//            _inventormobileno = value;
//        }
//    }

//    public string Inventor_EmailId
//    {
//        get
//        {
//            return _inventoremailid;
//        }
//        set
//        {
//            _inventoremailid = value;
//        }
//    }


//    #endregion

//    #region "Methods"
//    public bool SaveForm()
//    {
//        SqlParameter[] pmt = new SqlParameter[5];

//        pmt[0] = new SqlParameter("@F_Name", this.F_Name);
//        pmt[0].DbType = DbType.String;

//        pmt[1] = new SqlParameter("@F_SystemDateTime", this.F_SystemDateTime);
//        pmt[1].DbType = DbType.DateTime;

//        pmt[2] = new SqlParameter("@F_UploadDateTime", this.F_UploadDateTime);
//        pmt[2].DbType = DbType.DateTime;

//        pmt[3] = new SqlParameter("@F_Path", this.F_Path);
//        pmt[3].DbType = DbType.String;

//        pmt[4] = new SqlParameter("@D_Id", this.D_Id);
//        pmt[4].DbType = DbType.String;


//        DataAccess.ExecuteNonQuery(strConnectionString, CommandType.StoredProcedure, "SaveForm", pmt);
//        return true;
//    }

//    #endregion
//}