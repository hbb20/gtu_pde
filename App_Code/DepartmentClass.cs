using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DepartmentClass:ConnectionClass
{
    
        #region "All Field"

        private int _departmentid;
        private string _departmentcode, _departmentname, _departmentshortname;

        #endregion


        #region "All Properties"


        public int Department_Id
        {
            get
            {
                return _departmentid;
            }
            set
            {
                _departmentid = value;
            }
        }

        public string Department_Code
        {
            get
            {
                return _departmentcode;
            }
            set
            {
                _departmentcode = value;
            }
        }

        public string Department_Name
        {
            get
            {
                return _departmentname;
            }
            set
            {
                _departmentname = value;
            }
        }


        public string Department_ShortName
        {
            get
            {
                return _departmentshortname;
            }
            set
            {
                _departmentshortname = value;
            }
        }


        #endregion//
	
}