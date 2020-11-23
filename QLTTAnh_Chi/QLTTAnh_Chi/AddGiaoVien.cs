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
    public partial class AddGiaoVien : Form
    {
        public AddGiaoVien(string mgv)
        {
            this.mgv = mgv;
            InitializeComponent();
        }

        private string mgv;

        private void AddGiaoVien_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(mgv))
            {
                this.Text = "Thêm giáo viên mới";
            }
            else
            {
                this.Text = "Cập nhật thông tin giáo viên";

                var r = new Database().Select("SelectGV '" + mgv + "' ");

                txtHo.Text = r["ho"].ToString();
                txtTenDem.Text = r["tendem"].ToString();
                txtTen.Text = r["ten"].ToString();
                mtbNgaySinh.Text = r["nsinh"].ToString();
                if (int.Parse(r["gioitinh"].ToString()) == 0)
                {
                    rdbNu.Checked = true;
                }
                else
                {
                    rdbNam.Checked = true;
                }

                txtDiaChi.Text = r["diachi"].ToString();
                txtDienThoai.Text = r["dienthoai"].ToString();
                txtEmail.Text = r["email"].ToString();
                txtBangCap.Text = r["bangcap"].ToString();
                txtDiem.Text = r["diem"].ToString();
            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            string sql = "";
            string ho = txtHo.Text;
            string tendem = txtTenDem.Text;
            string ten = txtTen.Text;

            DateTime ngaysinh;
            try
            {
                ngaysinh = DateTime.ParseExact(mtbNgaySinh.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);

            }
            catch (Exception)
            {
                MessageBox.Show("Ngày sinh không hợp lệ");
                mtbNgaySinh.Select();
                return;
            }

            string gioitinh = rdbNam.Checked ? "1" : "0";
            string diachi = txtDiaChi.Text;
            string dienthoai = txtDienThoai.Text;
            string email = txtEmail.Text;
            string bangcap = txtBangCap.Text;
            string diem = txtDiem.Text;

            List<CustomParameters> lstPara = new List<CustomParameters>();
            if (string.IsNullOrEmpty(mgv))
            {
                sql = "ThemGV";

            }
            else
            {
                sql = "UpdateGV";
                lstPara.Add(new CustomParameters()
                {
                    key = "@magiaovien",
                    value = mgv
                });
            }

            lstPara.Add(new CustomParameters()
            {
                key = "@ho",
                value = ho
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@tendem",
                value = tendem
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@ten",
                value = ten
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@ngaysinh",
                value = ngaysinh.ToString("yyyy-MM-dd")
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@gioitinh",
                value = gioitinh
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@diachi",
                value = diachi
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@dienthoai",
                value = dienthoai
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@email",
                value = email
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@bangcap",
                value = bangcap
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@diem",
                value = diem
            });

            var rs = new Database().ExeCute(sql, lstPara);
            if (rs == 1)
            {
                if (string.IsNullOrEmpty(mgv))
                {
                    MessageBox.Show("Thêm giáo viên mới thành công!");
                }
                else
                {
                    MessageBox.Show("Cập nhật thông tin giáo viên thành công!");
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
