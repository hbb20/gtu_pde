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

using System.Data.SqlClient;


namespace GTU_PDE
{
    public class DataAccess
    {
        public static void ExecuteNonQuery(string strConString, CommandType cmdType, string strProcedureName, SqlParameter[] objParameters)
        {
            using (SqlConnection con = new SqlConnection(strConString))
            {
                con.Open();

                ExecuteNonQuery(con, cmdType, strProcedureName, objParameters);
            }
        }

        public static void ExecuteNonQuery(SqlConnection con, CommandType cmdType, string strProcedureName, SqlParameter[] objParameters)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = cmdType;
                cmd.CommandText = strProcedureName;

                AttachParameters(cmd, objParameters);

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
        }

        private static void AttachParameters(SqlCommand cmd, SqlParameter[] objParameters)
        {
            foreach (SqlParameter item in objParameters)
            {
                cmd.Parameters.Add(item);
            }
        }





    }

}