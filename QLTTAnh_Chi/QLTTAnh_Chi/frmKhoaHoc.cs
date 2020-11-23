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
    public partial class frmKhoaHoc : Form
    {
        public frmKhoaHoc()
        {
            InitializeComponent();
        }

        private void frmKhoaHoc_Load(object sender, EventArgs e)
        {
            LoadDSKH();
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            string tukhoa = txtTukhoa.Text;
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            dgvKH.DataSource = new Database().SelectData("SelectAllKhoaHoc", lstPara);
        }

        private void   LoadDSKH()
        {
            string tukhoa = "";
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            dgvKH.DataSource = new Database().SelectData("SelectAllKhoaHoc", lstPara);

            dgvKH.Columns["makhoahoc"].HeaderText = "Mã khóa học";
            dgvKH.Columns["tenkhoahoc"].HeaderText = "Tên khóa học";
            dgvKH.Columns["trinhdo"].HeaderText = "Trình độ";
            dgvKH.Columns["hocphi"].HeaderText = "Học phí";
            dgvKH.Columns["thoigian"].HeaderText = "Thời gian";


        }

        private void dgvKH_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                var mkh = dgvKH.Rows[e.RowIndex].Cells["makhoahoc"].Value.ToString();
                new AddKhoaHoc(mkh).ShowDialog();
                LoadDSKH();
            }
        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
            new AddKhoaHoc(null).ShowDialog();
            LoadDSKH();
        }

        private void btnShowAll_Click(object sender, EventArgs e)
        {
            LoadDSKH();
        }
    }
}
