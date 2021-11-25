using System.Data;
using System.Data.SqlClient;

namespace microCRM
{
    public static class SQLHelper
    {
        static string  sConnection = "Server=.;Database=dbSimpleCRM;Trusted_Connection=True;";
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        static public DataTable LoadData(string sTable) {
            SqlConnection sqlConn = new SqlConnection(sConnection);
            SqlDataAdapter sqlDA = new SqlDataAdapter(string.Format ("SELECT * FROM {0}",sTable), sqlConn);
            DataSet ds = new DataSet();
            sqlDA.Fill(ds);
       
            return ds.Tables[0];
        }
        static public void ExecuteQuery(string sQuery)
        {
            using (SqlConnection connection = new SqlConnection(sConnection))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("sQuery)", connection);
                    connection.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    
                }
                catch (System.Exception  ex)
                {
                    log.Info(sQuery);
                    log.Error(ex.Message);
             
                }
              
            }
        }
        
        static public DataTable LoadData(string sTable, string sWhereField, string sWhereValue)
        {
            SqlConnection sqlConn = new SqlConnection(sConnection);
            SqlDataAdapter sqlDA = new SqlDataAdapter(string.Format("SELECT * FROM {0} WHERE {1} = {2}", sTable, sWhereField, sWhereValue), sqlConn);
            DataSet ds = new DataSet();
            sqlDA.Fill(ds);

            return ds.Tables[0];
        }
    }
}
