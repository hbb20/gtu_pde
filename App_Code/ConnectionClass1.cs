using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Configuration;


    public class ConnectionClass1
    {
        
        public void mycon()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Gtu DatabaseConnectionString"].ToString());
            con.Open();
        }

    }
