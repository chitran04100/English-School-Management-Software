using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLTTAnh_Chi
{
    public partial class frmCheckHocPhi : Form
    {
        private string mahocvien;
        private string makhoahoc;
        public frmCheckHocPhi(string mahocvien, string makhoahoc)
        {
            this.mahocvien = mahocvien;
            this.makhoahoc = makhoahoc;
            InitializeComponent();
        }   

        private void frmCheckHocPhi_Load(object sender, EventArgs e)
        {
            var r = new Database().Select("SelectHocPhi '" + mahocvien + "', '" + makhoahoc+" '");

            txtTenHV.Text = r["hoten"].ToString();
            txtTenKH.Text = r["tenkhoahoc"].ToString();
            txtHP.Text = r["hocphi"].ToString();
            
        }

        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            string sql = "CheckHocPhi";
            string tien = txtTien.Text;
            string tinhtrang = txtTinhTrang.Text;
            
            DateTime ngaynop;
            try
            {
                ngaynop = DateTime.ParseExact(dTPNgayNop.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);

            }
            catch(Exception)
            {
                MessageBox.Show("Ngày nộp không hợp lệ");
                dTPNgayNop.Select();
                return;
            }

            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@mahocvien",
                value = mahocvien
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@makhoahoc",
                value = makhoahoc
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@sotiennop",
                value = tien
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@tinhtrang",
                value = tinhtrang
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@ngaynop",
                value = ngaynop.ToString("yyyy-MM-dd")
            });
            var rs = new Database().ExeCute(sql, lstPara);
            if (rs == 1)
            {
                {
                    MessageBox.Show("Cập nhật học phí thành công!");
                }
                this.Dispose(); //dong form
            }
            else // neu khong thanh cong
            {
                MessageBox.Show("Có lỗi xảy ra trong quá trình thực hiện. Vui lòng thử lại");
            }
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
