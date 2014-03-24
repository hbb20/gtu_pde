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
         

        public static void ExecuteNonQuery( CommandType cmdType, string strProcedureName, SqlParameter[] objParameters)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
            con.Open();
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
            finally
            {

                con.Close();
            }
        }

        private static void AttachParameters(SqlCommand cmd, SqlParameter[] objParameters)
        {
            foreach (SqlParameter item in objParameters)
            {
                cmd.Parameters.Add(item);
            }
        }
      
        public static DataSet ExecuteDataset( CommandType cmdType, string strProcedureName)
        {
            DataSet dset = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
            con.Open();
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
            finally
            {
                con.Close();
            }
        }

       

        public static DataSet ExecuteDataSet(CommandType cmdType, string strProcedureName, SqlParameter[] objParameters)
        {
            DataSet dset = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db1ConnectionString"].ToString());
            con.Open();
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
            finally
            {
                con.Close();
            }
        }


    }

}