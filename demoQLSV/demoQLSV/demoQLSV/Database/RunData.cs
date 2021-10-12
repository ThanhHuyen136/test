using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace demoQLSV.Database
{
    public class RunData
    {
        public DataTable GetData(string strSQL)
        {
            String connStr;
            SqlConnection conn;
            SqlDataAdapter adapter;

            DataTable dt = new DataTable();
            connStr = @"Server=DESKTOP-PL42G5H\SQLEXPRESS;Database=QLSV;User Id=sa;Password=123456;";
            conn = new SqlConnection(connStr);
            conn.Open();

            adapter = new SqlDataAdapter(strSQL, connStr);
            adapter.Fill(dt);
            conn.Close();
            return dt;
        }
        public void Execute(string strSQL)
        {
            String connStr;
            SqlConnection conn;
            SqlCommand command;

            connStr = @"Server=DESKTOP-PL42G5H\SQLEXPRESS;Database=QLSV;User Id=sa;Password=123456;";
            conn = new SqlConnection(connStr);
            conn.Open();

            command = new SqlCommand(strSQL, conn);
            command.ExecuteNonQuery();
            conn.Close();
        }
    }
}