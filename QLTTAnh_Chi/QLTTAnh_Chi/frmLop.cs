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
    public partial class frmLop : Form
    {
        public frmLop()
        {
            InitializeComponent();
        }

        private void LoadDSLop()
        {
            string tukhoa = "";
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            dgvLopHoc.DataSource = new Database().SelectData("AllLopHoc", lstPara);

            dgvLopHoc.Columns["malophoc"].HeaderText = "Mã lớp học";
            dgvLopHoc.Columns["tenkhoahoc"].HeaderText = "Tên khóa học";
            dgvLopHoc.Columns["gv"].HeaderText = "Tên giáo viên";
            dgvLopHoc.Columns["lichhoc"].HeaderText = "Lịch học";
            dgvLopHoc.Columns["ngaybatdau"].HeaderText = "Ngày bắt đầu";
            dgvLopHoc.Columns["ngayketthuc"].HeaderText = "Ngày kết thúc";
            dgvLopHoc.Columns["Daketthuc"].HeaderText = "Tình trạng";


        }

        private void frmLop_Load(object sender, EventArgs e)
        {
            LoadDSLop();
        }

        private void btnTimkiem_Click(object sender, EventArgs e)
        {
            string tukhoa = txtTukhoa.Text;
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            dgvLopHoc.DataSource = new Database().SelectData("AllLopHoc", lstPara);
        }

        private void dgvLopHoc_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                var malophoc = dgvLopHoc.Rows[e.RowIndex].Cells["malophoc"].Value.ToString();
                new AddLop(malophoc).ShowDialog();
                LoadDSLop();
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            new AddLop(null).ShowDialog();
            LoadDSLop();
        }

        private void btnShowAll_Click(object sender, EventArgs e)
        {
            LoadDSLop();

        }

    }
}
