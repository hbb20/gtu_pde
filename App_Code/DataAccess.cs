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
        public static DataSet ExecuteDataSet(string strConString, CommandType cmdType, string strProcedureName)
        {
            using (SqlConnection con = new SqlConnection(strConString))
            {
                con.Open();

                return ExecuteDataset(con, cmdType, strProcedureName);
            }
        }

        public static DataSet ExecuteDataset(SqlConnection con, CommandType cmdType, string strProcedureName)
        {
            DataSet dset = new DataSet();

            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = cmdType;
                cmd.CommandText = strProcedureName;

                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                ad.Fill(dset);

                return dset;

            }
            catch (Exception ex)
            {
                return dset;
            }
        }

        public static DataSet ExecuteDataSet(string strConString, CommandType cmdType, string strProcedureName, SqlParameter[] objParameters)
        {
            using (SqlConnection con = new SqlConnection(strConString))
            {
                con.Open();

                return ExecuteDataSet(con, cmdType, strProcedureName, objParameters);
            }
        }

        public static DataSet ExecuteDataSet(SqlConnection con, CommandType cmdType, string strProcedureName, SqlParameter[] objParameters)
        {
            DataSet dset = new DataSet();

            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = cmdType;
                cmd.CommandText = strProcedureName;

                AttachParameters(cmd, objParameters);

                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                ad.Fill(dset);

                return dset;

            }
            catch (Exception ex)
            {
                return dset;
            }
        }


    }

}