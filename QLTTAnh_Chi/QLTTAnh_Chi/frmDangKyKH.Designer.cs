namespace QLTTAnh_Chi
{
    partial class frmDangKyKH
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
            this.dgvDKKH = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.btnThoat = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDKKH)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvDKKH
            // 
            this.dgvDKKH.AllowUserToAddRows = false;
            this.dgvDKKH.AllowUserToDeleteRows = false;
            this.dgvDKKH.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvDKKH.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDKKH.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvDKKH.Location = new System.Drawing.Point(0, 80);
            this.dgvDKKH.MultiSelect = false;
            this.dgvDKKH.Name = "dgvDKKH";
            this.dgvDKKH.ReadOnly = true;
            this.dgvDKKH.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvDKKH.Size = new System.Drawing.Size(800, 370);
            this.dgvDKKH.TabIndex = 0;
            this.dgvDKKH.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDKKH_CellDoubleClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label1.Location = new System.Drawing.Point(200, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(449, 25);
            this.label1.TabIndex = 1;
            this.label1.Text = "DANH SÁCH KHÓA HỌC CHƯA ĐĂNG KÝ";
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(672, 51);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 23);
            this.btnThoat.TabIndex = 2;
            this.btnThoat.Text = "Đóng";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // frmDangKyKH
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvDKKH);
            this.Name = "frmDangKyKH";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DANH SÁCH CÁC LỚP";
            this.Load += new System.EventHandler(this.frmDangKyKH_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDKKH)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvDKKH;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnThoat;
    }
}