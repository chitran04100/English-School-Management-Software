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
    public partial class AddKhoaHoc : Form
    {
        public AddKhoaHoc(string mkh)
        {
            this.mkh = mkh;
            InitializeComponent();
        }

        private string mkh;

        private void AddKhoaHoc_Load(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(mkh))
            {
                this.Text = "Thêm khóa học mới";
            }
            else
            {
                this.Text = "Cập nhật thông tin khóa học";

                var r = new Database().Select("SelectKH '" + mkh + "' ");

                txtTenKH.Text = r["tenkhoahoc"].ToString();
                txtTrinhDo.Text = r["trinhdo"].ToString();
                txtHocPhi.Text = r["hocphi"].ToString();
                txtThoiGian.Text = r["thoigian"].ToString();                
            }
        }


        private void btnLuu_Click(object sender, EventArgs e)
        {
            string sql = "";
            string tenkhoahoc = txtTenKH.Text;
            string trinhdo = txtTrinhDo.Text;
            string hocphi = txtHocPhi.Text;
            string thoigian = txtThoiGian.Text;

            List<CustomParameters> lstPara = new List<CustomParameters>();
            if (string.IsNullOrEmpty(mkh))
            {
                sql = "ThemKH";
            }
            else
            {
                sql = "UpdateKH";
                lstPara.Add(new CustomParameters()
                {
                    key = "@makhoahoc",
                    value = mkh
                });
            }

            lstPara.Add(new CustomParameters()
            {
                key = "@tenkhoahoc",
                value = tenkhoahoc
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@trinhdo",
                value = trinhdo
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@hocphi",
                value = hocphi
            });
            lstPara.Add(new CustomParameters()
            {
                key = "@thoigian",
                value = thoigian
            });

            var rs = new Database().ExeCute(sql, lstPara);
            if (rs == 1)
            {
                if(string.IsNullOrEmpty(mkh))
                {
                    MessageBox.Show("Thêm khóa học mới thành công!");
                }
                else
                {
                    MessageBox.Show("Cập nhật thông tin khóa học thành công");
                }
                this.Dispose();
            }
            else
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
