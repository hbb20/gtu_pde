
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class TeamClass:ConnectionClass1
{

    private int _teamid;
    
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
}