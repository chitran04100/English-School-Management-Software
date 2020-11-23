using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLTTAnh_Chi
{
    public partial class AddLop : Form
    {
        public AddLop(string malophoc)
        {
            this.malophoc = malophoc;
            InitializeComponent();
        }
        private string malophoc;
        private Database db;

        private void AddLop_Load(object sender, EventArgs e)
        {
            db = new Database();
            List<CustomParameters> lstPara = new List<CustomParameters>();
            lstPara.Add(new CustomParameters()
            {
                key = "@tukhoa",
                value = ""
            });

            // Load dữ liệu vào 2 combo box khóa học và giáo viên
            cbKH.DataSource = db.SelectData("SelectAllKhoaHoc", lstPara);
            cbKH.DisplayMember = "tenkhoahoc"; // thuộc tính
            cbKH.ValueMember = "makhoahoc"; // giá trị key         
            cbKH.SelectedIndex = -1; // set combo box khong chon gia tri nao

            cbGV.DataSource = db.SelectData("SelectAllGiaoVien", lstPara);
            cbGV.DisplayMember = "hoten"; // thuộc tính
            cbGV.ValueMember = "magiaovien"; // giá trị key  
            cbGV.SelectedIndex = -1;

            cbTTLH.DataSource = db.SelectData("Tinhtranglophoc", lstPara);
            cbTTLH.DisplayMember = "Daketthuc";
            cbTTLH.ValueMember = "Daketthuc";
            cbTTLH.SelectedIndex = -1;

            if (string.IsNullOrEmpty(malophoc))
            {
                this.Text = "Thêm lớp mới";

            }
            else
            {
                this.Text = "Cập nhật thông tin lớp học";
                var r = db.Select("exec SelectLopHoc '" + malophoc + "' ");
                cbKH.SelectedValue = r["makhoahoc"].ToString();
                cbGV.SelectedValue = r["magiaovien"].ToString();
                txtLichHoc.Text = r["lichhoc"].ToString();
                mtbNgayBatDau.Text = r["ngaybatdau"].ToString();
                mtbNgayKetThuc.Text = r["ngayketthuc"].ToString();
                cbTTLH.SelectedValue = r["daketthuc"].ToString();

            }
        }

        private void btnLuu_Click_1(object sender, EventArgs e)
        {
            string sql = "";
            if (cbKH.SelectedIndex < 0)
            {
                MessageBox.Show("Vui lòng chọn khóa học phù hợp");
                return;
            }
            if (cbGV.SelectedIndex < 0)
            {
                MessageBox.Show("Vui lòng chọn giáo viên phù hợp");
                return;
            }
            // rang buoc phai chon ca 2 o combo box

            string lichhoc = txtLichHoc.Text;

            DateTime ngaybd;
            try
            {
                ngaybd = DateTime.ParseExact(mtbNgayBatDau.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                
            }
            catch(Exception)
            {
                MessageBox.Show("Ngày bắt đầu không hợp lệ, vui lòng chọn lại");
                mtbNgayBatDau.Select();
                return;
            }

            DateTime ngayketthucc;
            try
            {
                ngayketthucc = DateTime.ParseExact(mtbNgayBatDau.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);
            }
            catch (Exception)
            {
                MessageBox.Show("Ngày bắt đầu không hợp lệ, vui lòng chọn lại");
                mtbNgayBatDau.Select();
                return;
            }

            if (cbTTLH.SelectedIndex < 0)
            {
                MessageBox.Show("Vui lòng chọn tình trạng phù hợp");
                return;
            }

            List<CustomParameters> lstPara = new List<CustomParameters>();
            if (string.IsNullOrEmpty(malophoc))
            {
                sql = "InsertLopHoc";
            }
            else
            {
                sql = "UpdateLopHoc";
                lstPara.Add(new CustomParameters()
                {
                    key = "@malophoc",
                    value = malophoc
                });
            }
            lstPara.Add(new CustomParameters()
            {
                key = "@makhoahoc",
                value = cbKH.SelectedValue.ToString()
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@magiaovien",
                value = cbGV.SelectedValue.ToString()
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@lichhoc",
                value = lichhoc
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@ngaybatdau",
                value = ngaybd.ToString("yyyy-MM-dd")
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@ngayketthuc",
                value = ngayketthucc.ToString("yyyy-MM-dd")
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@daketthuc",
                value = cbTTLH.SelectedValue.ToString()
            }) ;



            var rs = db.ExeCute(sql, lstPara);
            if (rs == 1)
            {
                if (string.IsNullOrEmpty(malophoc))
                {
                    MessageBox.Show("Thêm lớp học mới thành công!");
                }
                else
                {
                    MessageBox.Show("Cập nhật thông tin lớp học thành công!");
                }
                this.Dispose(); //dong form
            }
            else // neu khong thanh cong
            {
                MessageBox.Show("Có lỗi xảy ra trong quá trình thực hiện. Vui lòng thử lại");
            }
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
