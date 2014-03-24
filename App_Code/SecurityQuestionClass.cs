using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class SecurityQuestionClass:ConnectionClass1
{
    private int _queid;
    private string _quedescription;

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

    public string SecurityQue_Desc
    {
        get
        {
            return _quedescription;
        }
        set
        {
            _quedescription = value;
        }
    }
}