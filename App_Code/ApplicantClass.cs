//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Data.SqlClient;
//using System.Data;


//public class InventorClass:ConnectionClass
//{
//    #region "All Field"

//    private int _applicantid, _form_id;
//    private string _applicantname, _applicantnationality, _applicantaddress,_applicantmobileno,_applicantemailid;

//    #endregion


//    #region "All Properties"


//    public int Applicant_Id
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
//            return _form_id;
//        }
//        set
//        {
//            _form_id = value;
//        }
//    }

//    public string Applicant_Name
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

//    public string Applicant_Nationality
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


//    public string Applicant_Address
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

//    public string Applicant_MobileNo
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

//    public string Applicant_EmailId
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