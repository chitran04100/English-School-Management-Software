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
    public partial class frmGiaoVien : Form
    {
        public frmGiaoVien()
        {
            InitializeComponent();
        }

        private void frmGiaoVien_Load(object sender, EventArgs e)
        {
            loadDSGV();
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
            dgvDSGV.DataSource = new Database().SelectData("SelectAllGiaoVien", lstPara);

        }


        private void loadDSGV()
        {
            string tukhoa = "";

            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            dgvDSGV.DataSource = new Database().SelectData("SelectAllGiaoVien", lstPara);

            dgvDSGV.Columns["magiaovien"].HeaderText = "Mã giáo viên";
            dgvDSGV.Columns["hoten"].HeaderText = "Họ tên giáo viên";
            dgvDSGV.Columns["nsinh"].HeaderText = "Ngày sinh";
            dgvDSGV.Columns["gt"].HeaderText = "Giới tính";
            dgvDSGV.Columns["diachi"].HeaderText = "Địa chỉ";
            dgvDSGV.Columns["dienthoai"].HeaderText = "Số điện thoại";
            dgvDSGV.Columns["bangcap"].HeaderText = "Bằng cấp";
            dgvDSGV.Columns["diem"].HeaderText = "Điểm";

        }

        private void dgvDSGV_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                var mgv = dgvDSGV.Rows[e.RowIndex].Cells["magiaovien"].Value.ToString();
                new AddGiaoVien(mgv).ShowDialog();
                loadDSGV();
            }    
        }

        private void btnThemmoi_Click(object sender, EventArgs e)
        {
            new AddGiaoVien(null).ShowDialog();
            loadDSGV();
        }

        private void btnShowAll_Click(object sender, EventArgs e)
        {
            loadDSGV();
        }
  
        private void btnXoa_Click(object sender, EventArgs e)
        {
            var rss = new Database().Select("SelectAllGiaoVien ' '");
            
            string r = rss["magiaovien"].ToString();
            var rs = new Database().Select("deleteGV '" + r + " '");

            loadDSGV();
        }


    }
}
