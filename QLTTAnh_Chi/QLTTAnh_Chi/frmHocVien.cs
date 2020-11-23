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
    public partial class frmHocVien : Form
    {
        public frmHocVien()
        {
            InitializeComponent();
        }

        private void frmHocVien_Load(object sender, EventArgs e)
        {
            LoadDSHV(); // goi ham Load danh sach hoc vien
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            string tukhoa = txtTukhoa.Text;
            //khai bao list custom para 

            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });

            dgvHocVien.DataSource = new Database().SelectData("SelectAllHocVien1", lstPara);

        }
        private void LoadDSHV()
        {
            string tukhoa = "";
            //khai bao list custom para 

            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });

            dgvHocVien.DataSource = new Database().SelectData("SelectAllHocVien1", lstPara);

            dgvHocVien.Columns["mahocvien"].HeaderText = "Mã học viên";
            dgvHocVien.Columns["hoten"].HeaderText = "Họ tên học viên";
            dgvHocVien.Columns["nsinh"].HeaderText = "Ngày sinh";
            dgvHocVien.Columns["gt"].HeaderText = "Giới tính";
            dgvHocVien.Columns["diachi"].HeaderText = "Địa chỉ";
            dgvHocVien.Columns["dienthoai"].HeaderText = "Điện thoại";
            dgvHocVien.Columns["email"].HeaderText = "Email";
        }

        private void dgvHocVien_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //khi double click thì hiện form cập nhật sinh viên
            if(e.RowIndex>=0)
            {
                var mhv = dgvHocVien.Rows[e.RowIndex].Cells["mahocvien"].Value.ToString();
                new AddHocvien(mhv).ShowDialog();
                // sau khi form them moi/ cap nhat dong thì load lại danh sách học viên
                LoadDSHV();
            }
        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
            new AddHocvien(null).ShowDialog();
            LoadDSHV();
        }

        private void btnShowAll_Click(object sender, EventArgs e)
        {
            LoadDSHV();
        }
    }
}
