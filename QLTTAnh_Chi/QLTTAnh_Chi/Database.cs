using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

namespace QLTTAnh_Chi
{
    public class Database
    {
        private string connectionString = @"Data Source=DESKTOP-4H2CDN2\CHISQL;Initial Catalog=QLTTAN;Integrated Security=True";
        private SqlConnection conn;
        private DataTable dt;
        private SqlCommand cmd;
        public Database()
        {
            try
            {
                conn = new SqlConnection(connectionString);
                conn.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show("connected failed: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public DataTable SelectData(string sql,List<CustomParameters> lstPara)
        {
            try
            {
                conn.Open();
                cmd = new SqlCommand(sql, conn);
                cmd.CommandType = CommandType.StoredProcedure; //set command type part 7
                foreach(var para in lstPara) // gan tham so part 7
                {
                   cmd.Parameters.AddWithValue(para.key, para.value);
                }
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi Load dữ liệu: " + ex.Message);
                return null;
            }
            finally
            {
                conn.Close();
            }
        }
        
        public DataRow Select(string sql)
        {
            try
            {
                conn.Open();
                cmd = new SqlCommand(sql, conn); //thực thi câu lệnh
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt.Rows[0]; //trả về kết quả
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi load thông tin: "+ex.Message);
                return null;
            }
            finally
            {
                conn.Close();
            }
        }

        public int ExeCute(string sql, List<CustomParameters> lstPara)
        {
            try
            {
                conn.Open(); //Mở kết nối
                cmd = new SqlCommand(sql, conn); //thuc thi cau lenh
                cmd.CommandType = CommandType.StoredProcedure;
                foreach (var p in lstPara)
                {
                    cmd.Parameters.AddWithValue(p.key, p.value);
                }
                var rs = cmd.ExecuteNonQuery();
                return (int)rs;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi thực thi câu lệnh: " + ex.Message);
                return -100;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
