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
    public partial class frmChamDiem : Form
    {
        public frmChamDiem()
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


            dgvChamDiem.DataSource = new Database().SelectData("DSLop", lstPara);

            dgvChamDiem.Columns["hoten"].HeaderText = "Họ tên học viên";
            dgvChamDiem.Columns["mahocvien"].HeaderText = "Mã học viên";
            dgvChamDiem.Columns["diemlan1"].HeaderText = "Điểm";

        }
        private void Loadbox()
        {
            List<CustomParameters> lstPara = new List<CustomParameters>();

            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = ""
            });

            var rss = new Database().Select("DSLop '"+ txtMaHV +" '");          
            cbKH.SelectedValue = rss["malophoc"].ToString();
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

        private void frmChamDiem_Load(object sender, EventArgs e)
        {
            
            LoadLop();
            LoadDSHV();
        }

        private void cbKH_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadDSHV();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }


        private void btnLuu_Click(object sender, EventArgs e)
        {
            string diem = txtDiem.Text;
            string mhv = txtMaHV.Text;
            string malop = cbKH.SelectedValue.ToString();
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@malophoc",
                value = malop
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@mahocvien",
                value = mhv
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@diem",
                value = diem
            });
            var rs = new Database().ExeCute("CapNhatDiem", lstPara);
            if (rs >=1 || rs<1)
            {
                {
                    MessageBox.Show("Cập nhật thành công!");
                    LoadDSHV();

                }
            }
                 //dong form
            
        }

        private void dgvChamDiem_CellClick(object sender, DataGridViewCellEventArgs e)
        {           
            txtDiem.Text = dgvChamDiem.Rows[e.RowIndex].Cells[2].Value.ToString();
            txtMaHV.Text = dgvChamDiem.Rows[e.RowIndex].Cells[0].Value.ToString();
        }
    }
}
