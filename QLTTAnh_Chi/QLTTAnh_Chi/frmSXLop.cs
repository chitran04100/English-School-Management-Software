using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace QLTTAnh_Chi
{
    public partial class frmSXLop : Form
    {
        public frmSXLop(string mhv, string mkh)
        {
            this.mhv = mhv;
            this.mkh = mkh;
            InitializeComponent();
        }

        private string mhv;
        private string mkh;
        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void frmSXLop_Load(object sender, EventArgs e)
        {
            LoadDuLieu();
        }
        private void LoadDuLieu()
        {
            var r = new Database().Select("SelectHVcanDKLop '" + mhv + "', '" + mkh + "'");

            txtTenHV.Text = r["tenhocvien"].ToString();
            txtTenKH.Text = r["tenkhoahoc"].ToString();


            List<CustomParameters> lstPara = new List<CustomParameters>();

            lstPara.Add(new CustomParameters()
            {
                key = "@makhoahoc",
                value = mkh
            });

            var rss = new Database().Select("exec SelectAllLopHoc ' " + mkh + "'");

            cbMaLop.DataSource = new Database().SelectData("SelectAllLopHoc", lstPara);
            cbMaLop.DisplayMember = "malophoc"; // thuộc tính
            cbMaLop.ValueMember = "malophoc"; // giá trị key         
                                              
            //cbMaLop.SelectedValue = rss["malophoc"].ToString();


        }


        private void btnDK_Click(object sender, EventArgs e)
        {                    

            string sql = "SXLopHoc";
            string tenhocvien = txtTenHV.Text;
            string tenkhoahoc = txtTenKH.Text;

            List<CustomParameters> lstPara = new List<CustomParameters>();
          
            lstPara.Add(new CustomParameters()
            {
                key = "@mahocvien",
                value = mhv
            });

            lstPara.Add(new CustomParameters()
            {
                key = "@makhoahoc",
                value = mkh
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@malophoc",
                value = cbMaLop.SelectedValue.ToString()
            });

            var rs = new Database().ExeCute(sql, lstPara);
            if (rs == 1)
            {
                this.Dispose(); //dong form
            }
            else // neu khong thanh cong
            {
                MessageBox.Show("Có lỗi xảy ra trong quá trình thực hiện. Vui lòng thử lại");
            }                                
            this.Dispose();
        }

    }
}
