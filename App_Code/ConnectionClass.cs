using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Configuration;


public class ConnectionClass
{
    SqlConnection con;

    public ConnectionClass()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
        con.Open();
    }
    
}