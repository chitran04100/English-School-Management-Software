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
    public partial class frmDSchoDK : Form
    {
        public frmDSchoDK()
        {
            InitializeComponent();
        }
        private void LoadDSHVchuacoLop() 
        {

            LoadKH();

            LoadShowAll();

            dgvDSHV.Columns["mahocvien"].Visible = false;
            dgvDSHV.Columns["makhoahoc"].Visible = false;
            dgvDSHV.Columns["tenhocvien"].HeaderText = "Tên học viên";
            dgvDSHV.Columns["tenkhoahoc"].HeaderText = "Tên khóa học";


        }

        private void frmDSchoDK_Load(object sender, EventArgs e)
        {
            LoadDSHVchuacoLop();
        }

        private void LoadKH()
        {
            string tukhoa = "";

            List<CustomParameters> lst = new List<CustomParameters>();
            lst.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });

            cbKH.DataSource = new Database().SelectData("SelectAllKhoaHoc", lst);
            cbKH.DisplayMember = "tenkhoahoc";
            cbKH.ValueMember = "makhoahoc";         
            
        }
        private void LoadTimKiem()
        {
            string tukhoa = cbKH.SelectedValue.ToString();
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@timkiem",
                value = txtTenHV.Text
            });

            dgvDSHV.DataSource = new Database().SelectData("DSHVchuacoLop", lstPara);
        }
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            LoadTimKiem();
        }
        private void LoadShowAll()
        {
            
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = ""
            });
            

            dgvDSHV.DataSource = new Database().SelectData("DSHVchuacoLop1maKH", lstPara);
        }
        private void btnShowAll_Click(object sender, EventArgs e)
        {
            LoadShowAll();
        }

        
        private void cbKH_SelectedIndexChanged(object sender, EventArgs e)
        {
            string tukhoa = cbKH.SelectedValue.ToString();
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = tukhoa
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@timkiem",
                value = ""
            });

            dgvDSHV.DataSource = new Database().SelectData("DSHVchuacoLop", lstPara);
        }


        private void dgvDSHV_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                var mhv = dgvDSHV.Rows[e.RowIndex].Cells["mahocvien"].Value.ToString();
                var mkh = dgvDSHV.Rows[e.RowIndex].Cells["makhoahoc"].Value.ToString();
                new frmSXLop(mhv, mkh).ShowDialog();
                LoadTimKiem();
            }
            else
            { MessageBox.Show("Chưa có lớp học nào phù hợp với khóa học này"); }

        }
    }
}
