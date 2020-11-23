namespace QLTTAnh_Chi
{
    partial class frmCheckHocPhi
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.txtTenHV = new System.Windows.Forms.TextBox();
            this.btnCapNhat = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtHP = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtTenKH = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTien = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtTinhTrang = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnHuy = new System.Windows.Forms.Button();
            this.dTPNgayNop = new System.Windows.Forms.MaskedTextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(32, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tên học viên";
            // 
            // txtTenHV
            // 
            this.txtTenHV.Location = new System.Drawing.Point(134, 28);
            this.txtTenHV.Name = "txtTenHV";
            this.txtTenHV.ReadOnly = true;
            this.txtTenHV.Size = new System.Drawing.Size(175, 20);
            this.txtTenHV.TabIndex = 1;
            // 
            // btnCapNhat
            // 
            this.btnCapNhat.Location = new System.Drawing.Point(153, 209);
            this.btnCapNhat.Name = "btnCapNhat";
            this.btnCapNhat.Size = new System.Drawing.Size(75, 23);
            this.btnCapNhat.TabIndex = 2;
            this.btnCapNhat.Text = "Cập nhật";
            this.btnCapNhat.UseVisualStyleBackColor = true;
            this.btnCapNhat.Click += new System.EventHandler(this.btnCapNhat_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(32, 83);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(46, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Học phí";
            // 
            // txtHP
            // 
            this.txtHP.Location = new System.Drawing.Point(134, 80);
            this.txtHP.Name = "txtHP";
            this.txtHP.ReadOnly = true;
            this.txtHP.Size = new System.Drawing.Size(175, 20);
            this.txtHP.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(32, 57);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(74, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên khóa học";
            // 
            // txtTenKH
            // 
            this.txtTenKH.Location = new System.Drawing.Point(134, 54);
            this.txtTenKH.Name = "txtTenKH";
            this.txtTenKH.ReadOnly = true;
            this.txtTenKH.Size = new System.Drawing.Size(175, 20);
            this.txtTenKH.TabIndex = 1;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(32, 109);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(61, 13);
            this.label4.TabIndex = 0;
            this.label4.Text = "Số tiền nộp";
            // 
            // txtTien
            // 
            this.txtTien.Location = new System.Drawing.Point(134, 106);
            this.txtTien.Name = "txtTien";
            this.txtTien.Size = new System.Drawing.Size(175, 20);
            this.txtTien.TabIndex = 1;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(32, 135);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(55, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Tình trạng";
            // 
            // txtTinhTrang
            // 
            this.txtTinhTrang.Location = new System.Drawing.Point(134, 132);
            this.txtTinhTrang.Name = "txtTinhTrang";
            this.txtTinhTrang.Size = new System.Drawing.Size(175, 20);
            this.txtTinhTrang.TabIndex = 1;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(32, 159);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(53, 13);
            this.label6.TabIndex = 0;
            this.label6.Text = "Ngày nộp";
            // 
            // btnHuy
            // 
            this.btnHuy.Location = new System.Drawing.Point(234, 209);
            this.btnHuy.Name = "btnHuy";
            this.btnHuy.Size = new System.Drawing.Size(75, 23);
            this.btnHuy.TabIndex = 2;
            this.btnHuy.Text = "Hủy";
            this.btnHuy.UseVisualStyleBackColor = true;
            this.btnHuy.Click += new System.EventHandler(this.btnHuy_Click);
            // 
            // dTPNgayNop
            // 
            this.dTPNgayNop.Location = new System.Drawing.Point(134, 159);
            this.dTPNgayNop.Mask = "00/00/0000";
            this.dTPNgayNop.Name = "dTPNgayNop";
            this.dTPNgayNop.Size = new System.Drawing.Size(175, 20);
            this.dTPNgayNop.TabIndex = 3;
            this.dTPNgayNop.ValidatingType = typeof(System.DateTime);
            // 
            // frmCheckHocPhi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(356, 253);
            this.Controls.Add(this.dTPNgayNop);
            this.Controls.Add(this.btnHuy);
            this.Controls.Add(this.btnCapNhat);
            this.Controls.Add(this.txtTenKH);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtTinhTrang);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtTien);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtHP);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtTenHV);
            this.Controls.Add(this.label1);
            this.Name = "frmCheckHocPhi";
            this.Text = "CHECK ĐÓNG HỌC PHÍ";
            this.Load += new System.EventHandler(this.frmCheckHocPhi_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtTenHV;
        private System.Windows.Forms.Button btnCapNhat;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtHP;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtTenKH;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTien;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtTinhTrang;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnHuy;
        private System.Windows.Forms.MaskedTextBox dTPNgayNop;
    }
}