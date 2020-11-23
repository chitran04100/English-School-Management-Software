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
    public partial class frmTraCuuDiem : Form
    {
        private string mhv;
        public frmTraCuuDiem(string mhv)
        {
            this.mhv = mhv;
            InitializeComponent();
        }

        private void LoadKQ()
        {
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@mahocvien",
                value = mhv
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = txtTukhoa.Text
            });
            dgvTraCuuDiem.DataSource = new Database().SelectData("tracuudiem", lstPara);

            dgvTraCuuDiem.Columns["malophoc"].HeaderText = "Mã lớp học";
            dgvTraCuuDiem.Columns["tenkhoahoc"].HeaderText = "Tên khóa học";
            dgvTraCuuDiem.Columns["tengv"].HeaderText = "Giáo viên";
            dgvTraCuuDiem.Columns["diemlan1"].HeaderText = "Điểm lần 1";
            dgvTraCuuDiem.Columns["diemlan2"].HeaderText = "Điểm lần 2";
        }

        private void frmTraCuuDiem_Load(object sender, EventArgs e)
        {
            LoadKQ();
        }

        private void btnTraCuu_Click(object sender, EventArgs e)
        {
            LoadKQ();
        }

        private void btnShowAll_Click(object sender, EventArgs e)
        {
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@mahocvien",
                value = mhv
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = ""
            });
            dgvTraCuuDiem.DataSource = new Database().SelectData("tracuudiem", lstPara);
        }
    }
}
