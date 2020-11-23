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
    public partial class frmDoiMK : Form
    {
        private string ltk;
        private string tendn;

        public frmDoiMK(string ltk, string tendn)
        {
            this.ltk = ltk;
            this.tendn = tendn;
            InitializeComponent();
        }


        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnDoiMK_Click(object sender, EventArgs e)
        {

            #region kiemtra_rangbuoc
            //kiểm tra ràng buộc
            if (string.IsNullOrEmpty(txtMatKhau.Text))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu");
                txtMatKhau.Select();
                return;
            }

            if (string.IsNullOrEmpty(txtMKmoi1.Text))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu");
                txtMKmoi1.Select();
                return;
            }

            if (string.IsNullOrEmpty(txtMKmoi2.Text))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu");
                txtMKmoi2.Select();
                return;
            }
            #endregion

        if(txtMKmoi1.Text != txtMKmoi2.Text)
            {
                MessageBox.Show("Mật khẩu mới không trùng khớp, vui lòng nhập lại");
                txtMKmoi1.Select();
            }
            else { 


            List<CustomParameters> lst = new List<CustomParameters>()
            {
                new CustomParameters()
                {
                    key ="@loaitaikhoan",
                    value = ltk
                },
            new CustomParameters()
            {
                key = "@taikhoan",
                value = tendn 
                },
            new CustomParameters()
            {
                key = "@matkhaucu",
                value = txtMatKhau.Text
                },
            new CustomParameters()
            {
                key = "@matkhaumoi1",
                value = txtMKmoi1.Text
                },

        };
               
            int rs = 1;
            rs = new Database().ExeCute("DoiMK", lst);
            if (rs == 1)
            {
                MessageBox.Show("Đổi mật khẩu thành công");
                    this.Dispose();
            }
            
            if(rs != 1)
            {
                MessageBox.Show("Mật khẩu không chính xác", "Vui lòng nhập lại");
            }
            }
        }

        private void ckbShowMK_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbShowMK.Checked)
            {
                txtMatKhau.UseSystemPasswordChar = false;
                txtMKmoi1.UseSystemPasswordChar = false;
                txtMKmoi2.UseSystemPasswordChar = false;
            }
            else
            {
                txtMatKhau.UseSystemPasswordChar = true;
                txtMKmoi1.UseSystemPasswordChar = true;
                txtMKmoi2.UseSystemPasswordChar = true;
            }
        }
    }
}
