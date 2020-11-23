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
    public partial class frmDangKyKH : Form
    {

        public frmDangKyKH(string mhv)
        {
            this.mhv = mhv;
            InitializeComponent();
        }
        private string mhv;

        private void frmDangKyKH_Load(object sender, EventArgs e)
        {
            LoadDSDK();

            dgvDKKH.Columns["makhoahoc"].Visible = false;
            dgvDKKH.Columns["tenkhoahoc"].HeaderText = "Tên khóa học";
            dgvDKKH.Columns["trinhdo"].HeaderText = "Trình độ";
            dgvDKKH.Columns["hocphi"].HeaderText = "Học phí";
            dgvDKKH.Columns["thoigian"].HeaderText = "Thời gian";
        }
        private void LoadDSDK()
        {
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key= "mahocvien",
                value = mhv
            });
            dgvDKKH.DataSource = new Database().SelectData("DSKHchuaDK", lstPara);
        }

        private void dgvDKKH_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if(dgvDKKH.Rows[e.RowIndex].Index >= 0)
            {
                if(
                   DialogResult.Yes == 
                   MessageBox.Show(
                       "Bạn có chắc chắn muốn đăng ký khóa học " + dgvDKKH.Rows[e.RowIndex].Cells["tenkhoahoc"].Value.ToString()+" này không?",
                       "Xác nhận đăng ký",
                       MessageBoxButtons.YesNo,
                       MessageBoxIcon.Question))
                {
                    List<CustomParameters> lstPara = new List<CustomParameters>();
                    lstPara.Add(new CustomParameters()
                    {
                        key = "@Makhoahoc",
                        value = dgvDKKH.Rows[e.RowIndex].Cells["makhoahoc"].Value.ToString()
                    });
                    lstPara.Add(new CustomParameters()
                    {
                        key = "mahocvien",
                        value = mhv
                    });
                    var rs = new Database().ExeCute("DangKyKH1", lstPara);

                    if(rs == 1)
                    {
                        MessageBox.Show("Đã đăng ký khóa học thành công");
                        LoadDSDK();
                    }

                }
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
