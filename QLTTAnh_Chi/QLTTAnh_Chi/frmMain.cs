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
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }
        private string taikhoan;
        private string loaitk;

        private void frmMain_Load(object sender, EventArgs e)
        {
            var fn = new frmDangNhap();
            fn.ShowDialog(); // load form dang nhap khi form main duoc goi

            taikhoan = fn.tendangnhap;
            loaitk = fn.loaitk;

            if(loaitk.Equals("admin"))
            {
                //tuy vao phan quyen cac nhan vien ma lam cai nay
                DiemToolStripMenuItem.Visible = false;
                BaoCaoToolStripMenuItem.Visible = false;
                ChucNangToolStripMenuItem.Visible = false;
            }
            else
            {
                
                HocPhiToolStripMenuItem.Visible = false;
                BaoCaoToolStripMenuItem.Visible = false;
                if (loaitk.Equals("gv"))
                {
                    ChucNangToolStripMenuItem.Visible = false;                    
                    QLKHToolStripMenuItem.Visible = false;
                }
                else
                {
                    QLLopToolStripMenuItem.Visible = false;
                    QuanLyToolStripMenuItem.Visible = false;
                }
            }
            
            frmScreen f = new frmScreen();
            AddForm(f);
        }

        private void AddForm(Form f)
        {
            this.pnlContent.Controls.Clear();
            f.TopLevel = false;
            f.AutoScroll = true;
            f.Dock = DockStyle.Fill;
            f.FormBorderStyle = FormBorderStyle.None;
            this.Text = f.Text;
            this.pnlContent.Controls.Add(f);
            f.Show();
        }    


        private void ThoatToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void QLHVToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmHocVien f = new frmHocVien();
            AddForm(f);
        }

        private void QLGVToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmGiaoVien f = new frmGiaoVien();
            AddForm(f);
        }

        private void QLKHToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmKhoaHoc f = new frmKhoaHoc();
            AddForm(f);
        }


        private void ThongTinLopToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLop f = new frmLop();
            AddForm(f);
        }

        private void DKyLopToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var f = new DSDangKyKH(taikhoan);
            AddForm(f);
        }

        private void TraCuuDiemToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var f = new frmTraCuuDiem(taikhoan);
            AddForm(f);
        }

        private void DoiMatKhauToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            var fn = new frmDoiMK(loaitk, taikhoan);
            fn.ShowDialog();
            this.Show();
        }

        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();            
            frmMain f = new frmMain();
            f.Show();
            
        }


        private void DSLopToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var fn  = new frmDSchoDK();
            AddForm(fn);
        }

        private void DiemToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var f = new frmChamDiem();
            AddForm(f);
        }

        private void danhSáchHọcViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var f = new frmDSLop();
            AddForm(f);
        }

        private void HocPhiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var f = new frmHocPhi();
            AddForm(f);
        }
    }

    }

