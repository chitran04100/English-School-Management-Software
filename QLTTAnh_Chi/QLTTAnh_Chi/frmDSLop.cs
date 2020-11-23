using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;

namespace QLTTAnh_Chi
{
    public partial class frmDSLop : Form
    {
        public frmDSLop()
        {
            InitializeComponent();
        }

        private void LoadDSHV()
        {            

            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = cbKH.SelectedValue.ToString()
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@timkiem",
                value = ""
            });

            dgvDSHV.DataSource = new Database().SelectData("DSLop", lstPara);

            dgvDSHV.Columns["hoten"].HeaderText = "Họ tên học viên";
            dgvDSHV.Columns["diemlan1"].Visible = false;
            dgvDSHV.Columns["mahocvien"].Visible = false;
            
        }

        private void LoadLop()
        {
            List<CustomParameters> lstPara = new List<CustomParameters>();

            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = ""
            });
            
            var rss = new Database().Select("exec AllLopHoc ' '");

            cbKH.DataSource = new Database().SelectData("AllLopHoc", lstPara);
            cbKH.DisplayMember = "malophoc"; // thuộc tính
            cbKH.ValueMember = "malophoc"; // giá trị key         
            cbKH.SelectedIndex = 2;

            cbKH.SelectedValue = rss["malophoc"].ToString();
        }

        private void frmDSLop_Load(object sender, EventArgs e)
        {
            LoadLop();
            LoadDSDauVao();
        }

        private void cbKH_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadDSHV();
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = cbKH.SelectedValue.ToString()
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@timkiem",
                value = txtTenHV.Text
            });

            dgvDSHV.DataSource = new Database().SelectData("DSLop", lstPara);
        }

        private void btnShowAll_Click(object sender, EventArgs e)
        {
            LoadDSHV();
        }
        private void LoadDSDauVao()
        {
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = ""
            });

            dgvDSHV.DataSource = new Database().SelectData("DSLopBegin", lstPara);

            dgvDSHV.Columns["hoten"].HeaderText = "Họ tên học viên";
            dgvDSHV.Columns["diemlan1"].Visible = false;
            dgvDSHV.Columns["mahocvien"].Visible = false;
        }
        private void btnChamDiem_Click(object sender, EventArgs e)
        {
            this.Hide();
            new frmChamDiem().ShowDialog();
            LoadDSHV();
        }
    }
}
