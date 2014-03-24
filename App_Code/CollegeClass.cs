//using System;
//using System.Data;
//using System.Configuration;
//using System.Linq;
//using System.Web;
//using System.Web.Security;
//using System.Web.UI;
//using System.Web.UI.HtmlControls;
//using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.WebParts;
//using System.Xml.Linq;
//using System.Data.SqlClient;




//public class CollegeClass:ConnectionClass
//{
//    #region "All Field"

//    private int _collegeid;
//    private string _collegecode, _collegename, _collegezone,_temp;
    
//    #endregion


//    #region "All Properties"


//    public int College_Id
//    {
//        get
//        {
//            return _collegeid;
//        }
//        set
//        {
//            _collegeid = value;
//        }
//    }

//    public string College_Code
//    {
//        get
//        {
//            return _collegecode;
//        }
//        set
//        {
//            _collegecode = value;
//        }
//    }

//    public string College_Name
//    {
//        get
//        {
//            return _collegename;
//        }
//        set
//        {
//            _collegename = value;
//        }
//    }


//    public string College_Zone
//    {
//        get
//        {
//            return _collegezone;
//        }
//        set
//        {
//            _collegezone = value;
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
