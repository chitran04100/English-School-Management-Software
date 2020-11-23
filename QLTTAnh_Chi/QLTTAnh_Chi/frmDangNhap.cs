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
    public partial class frmDangNhap : Form
    {
        public frmDangNhap()
        {
            InitializeComponent();
        }

        public string tendangnhap = "";
        public string loaitk;
        private void btnThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            #region kiemtra_rangbuoc
            //kiểm tra ràng buộc
            if (cbLoaiTaiKhoan.SelectedIndex < 0)
            {
                MessageBox.Show("Vui lòng chọn loại tài khoản");
                return;
            }

            if(string.IsNullOrEmpty(txtTenDangNhap.Text))
            {
                MessageBox.Show("Vui lòng nhập tên đăng nhập");
                txtTenDangNhap.Select();
                return;
            }

            if (string.IsNullOrEmpty(txtMatKhau.Text))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu", "Trường này không được phép để trống");
                txtMatKhau.Select();
                return;
            }
            #endregion

            tendangnhap = txtTenDangNhap.Text;
            loaitk = "";

            #region swtk
            switch (cbLoaiTaiKhoan.Text)
            {
                case "Quản trị viên":
                    loaitk = "admin";
                    break;
                case "Học viên":
                    loaitk = "hv";
                    break;
                case "Giáo viên":
                    loaitk = "gv";
                    break;

            };
            #endregion

            List<CustomParameters> lst = new List<CustomParameters>()
            {
                new CustomParameters()
                {
                    key ="@loaitaikhoan",
                    value = loaitk
                },
            new CustomParameters()
            {
                key = "@taikhoan",
                value = txtTenDangNhap.Text
                },
            new CustomParameters()
            {
                key = "@matkhau",
                value = txtMatKhau.Text
                },
        };
            var rs = new Database().SelectData("dangnhap", lst);
            if(rs.Rows.Count>0)
            {
                this.Hide();
            }
            else
            {
                MessageBox.Show("Tài khoản hoặc mật khẩu không đúng", "Vui lòng kiểm tra lại");
            }



           
        }

        private void ckbShowMK_CheckedChanged(object sender, EventArgs e)
        {
            if(ckbShowMK.Checked)
            {
                txtMatKhau.UseSystemPasswordChar = false;
            }
            else
            {
                txtMatKhau.UseSystemPasswordChar = true;
            }
        }
    }
}
