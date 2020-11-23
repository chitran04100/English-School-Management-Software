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
    public partial class AddHocvien : Form
    {
        public AddHocvien(string mhv)
        {
            this.mhv = mhv;
            InitializeComponent();
        }
        private string mhv;

        private void AddHocvien_Load(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(mhv))
            {
                this.Text = "Thêm mới học viên";
            }
            else
            {
                this.Text = "Cập nhật thông tin học viên";
                //Lấy mã học viên truyền vào
                var r = new Database().Select("SelectHV '"+mhv+"' ");
                // MessageBox.Show(r[2].ToString());

                txtHo.Text = r["ho"].ToString();
                txtTenDem.Text = r["tendem"].ToString();
                txtTen.Text = r["ten"].ToString();
                mtbNgaySinh.Text = r["nsinh"].ToString();
                if (int.Parse(r["gioitinh"].ToString()) != 1)
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

            }    
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            // neu co ma hoc vien: cap nhat
            // neu khong co ma hoc vien: them moi
            string sql = "";
            string ho = txtHo.Text;
            string tendem = txtTenDem.Text;
            string ten = txtTen.Text;
            // ngay sinh trong SQL va trong Visual de 2 kieu khac nhau nen phai set lai
            DateTime ngaysinh;
            try
            {
                ngaysinh = DateTime.ParseExact(mtbNgaySinh.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);
            }
            catch (Exception)
            {
                MessageBox.Show("Ngày sinh không hợp lệ");
                mtbNgaySinh.Select(); // tro chuot vao vi tri nay
                return; //khong thuc hien cac cau lenh o duoi
            }

            string gioitinh = rdbNam.Checked ? "1" : "0";
            string diachi = txtDiaChi.Text;
            string dienthoai = txtDienThoai.Text;
            string email = txtEmail.Text;


            List<CustomParameters> lstPara = new List<CustomParameters>();
            if (string.IsNullOrEmpty(mhv))
            {
                sql = "ThemHV";
               
            }
            else
            {
                sql = "UpdateHV";
                lstPara.Add(new CustomParameters()
                {
                    key = "@mahocvien",
                    value = mhv
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

            var rs = new Database().ExeCute(sql, lstPara);
            if (rs == 1)
            {
                if(string.IsNullOrEmpty(mhv))
                {
                    MessageBox.Show("Thêm mới học viên thành công!");
                }
                else
                {
                    MessageBox.Show("Cập nhật thông tin học viên thành công!");
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
