using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Online_Exam_Hub.App_Codes
{
    public class DbManager
    {
        static string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(cs);

        public DataTable executeDataTable(string query)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                da.Fill(dt);

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dt;
        }

        public int executeNonQuery(string query)
        {
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand(query, conn);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                int isInsert = cmd.ExecuteNonQuery();
                conn.Close();

                if (isInsert > 0)
                {
                    return isInsert;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }

        }
    }
}