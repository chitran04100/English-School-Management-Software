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
    public partial class DSDangKyKH : Form
    {
        private string mhv;
        public DSDangKyKH(string mhv)
        {
            this.mhv = mhv;
            InitializeComponent();
        }

        private void DSDangKyKH_Load(object sender, EventArgs e)
        {
            LoadMonDK();

            dgvDSDK.Columns["makhoahoc"].Visible = false;
            dgvDSDK.Columns["tenkhoahoc"].HeaderText = "Tên khóa học";
            dgvDSDK.Columns["trinhdo"].HeaderText = "Trình độ";
            dgvDSDK.Columns["hocphi"].HeaderText = "Học phí";
            dgvDSDK.Columns["thoigian"].HeaderText = "Thời gian";

        }
        private void LoadMonDK()
        {
            List<CustomParameters> lst = new List<CustomParameters>()
            {
                new CustomParameters()
                {
                    key ="@mahocvien",
                    value = mhv
                } 
            };
            dgvDSDK.DataSource = new Database().SelectData("KhoaHocDaDK", lst);
        }

        private void btnDK_Click(object sender, EventArgs e)
        {
            new frmDangKyKH(mhv).ShowDialog();
            LoadMonDK();
        }


    }
    }
