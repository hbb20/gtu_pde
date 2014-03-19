using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;





public class CollegeClass:ConnectionClass
{
    #region "All Field"

    private int _collegeid;
    private string _collegecode, _collegename, _collegezone;
    
    #endregion


    #region "All Properties"


    public int College_Id
    {
        get
        {
            return _collegeid;
        }
        set
        {
            _collegeid = value;
        }
    }

    public string College_Code
    {
        get
        {
            return _collegecode;
        }
        set
        {
            _collegecode = value;
        }
    }

    public string College_Name
    {
        get
        {
            return _collegename;
        }
        set
        {
            _collegename = value;
        }
    }


    public string College_Zone
    {
        get
        {
            return _collegezone;
        }
        set
        {
            _collegezone = value;
        }
    }

   
    #endregion

    
  
}
