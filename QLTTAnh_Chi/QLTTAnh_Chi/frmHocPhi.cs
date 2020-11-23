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
    public partial class frmHocPhi : Form
    {
        public frmHocPhi()
        {
            InitializeComponent();
        }

        private void frmHocPhi_Load(object sender, EventArgs e)
        {
            LoadHocPhi();
        }
        private void LoadHocPhi()
        {
            string tukhoa = "";

            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            dgvHocPhi.DataSource = new Database().SelectData("SelectAllHocPhi", lstPara);
                        
            dgvHocPhi.Columns["hoten"].HeaderText = "Họ tên giáo viên";
            dgvHocPhi.Columns["mahocvien"].Visible = false;
            dgvHocPhi.Columns["makhoahoc"].Visible = false;
            dgvHocPhi.Columns["tenkhoahoc"].HeaderText = "Tên khóa học";
            dgvHocPhi.Columns["hocphi"].HeaderText = "Học phí";
            dgvHocPhi.Columns["sotiennop"].HeaderText = "Số tiền nộp";
            dgvHocPhi.Columns["tinhtrang"].HeaderText = "Tình trạng";
            dgvHocPhi.Columns["ngaynop"].HeaderText = "Ngày nộp";
           
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            string tukhoa = txtTenHV.Text;

            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            dgvHocPhi.DataSource = new Database().SelectData("SelectAllHocPhi", lstPara);
        }

        private void btnShowAll_Click(object sender, EventArgs e)
        {
            LoadHocPhi();
        }

        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            string tukhoa = "";

            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            dgvHocPhi.DataSource = new Database().SelectData("SelectAllHocPhichuanop", lstPara);
            dgvHocPhi.Columns["mahocvien"].Visible = false;
            dgvHocPhi.Columns["makhoahoc"].Visible = false;
        }

        private void dgvHocPhi_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                var mahocvien = dgvHocPhi.Rows[e.RowIndex].Cells["mahocvien"].Value.ToString();
                var makhoahoc = dgvHocPhi.Rows[e.RowIndex].Cells["makhoahoc"].Value.ToString();
                new frmCheckHocPhi(mahocvien, makhoahoc).ShowDialog();
                LoadHocPhi();
            }
        }
    }
}
