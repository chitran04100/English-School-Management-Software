namespace QLTTAnh_Chi
{
    partial class frmDSLop
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
            this.dgvDSHV = new System.Windows.Forms.DataGridView();
            this.txtTenHV = new System.Windows.Forms.TextBox();
            this.btnShowAll = new System.Windows.Forms.Button();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.cbKH = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnChamDiem = new System.Windows.Forms.Button();
            this.btnDiemDanh = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSHV)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvDSHV
            // 
            this.dgvDSHV.AllowUserToAddRows = false;
            this.dgvDSHV.AllowUserToDeleteRows = false;
            this.dgvDSHV.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDSHV.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvDSHV.Location = new System.Drawing.Point(0, 133);
            this.dgvDSHV.MultiSelect = false;
            this.dgvDSHV.Name = "dgvDSHV";
            this.dgvDSHV.ReadOnly = true;
            this.dgvDSHV.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvDSHV.Size = new System.Drawing.Size(800, 317);
            this.dgvDSHV.TabIndex = 11;
            // 
            // txtTenHV
            // 
            this.txtTenHV.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTenHV.Location = new System.Drawing.Point(399, 12);
            this.txtTenHV.Name = "txtTenHV";
            this.txtTenHV.Size = new System.Drawing.Size(169, 20);
            this.txtTenHV.TabIndex = 10;
            // 
            // btnShowAll
            // 
            this.btnShowAll.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnShowAll.Location = new System.Drawing.Point(605, 58);
            this.btnShowAll.Name = "btnShowAll";
            this.btnShowAll.Size = new System.Drawing.Size(140, 22);
            this.btnShowAll.TabIndex = 8;
            this.btnShowAll.Text = "Hiển thị danh sách";
            this.btnShowAll.UseVisualStyleBackColor = true;
            this.btnShowAll.Click += new System.EventHandler(this.btnShowAll_Click);
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnTimKiem.Location = new System.Drawing.Point(591, 10);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(75, 23);
            this.btnTimKiem.TabIndex = 9;
            this.btnTimKiem.Text = "Tìm kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = true;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // cbKH
            // 
            this.cbKH.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cbKH.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Append;
            this.cbKH.FormattingEnabled = true;
            this.cbKH.Location = new System.Drawing.Point(115, 12);
            this.cbKH.Name = "cbKH";
            this.cbKH.Size = new System.Drawing.Size(150, 21);
            this.cbKH.TabIndex = 7;
            this.cbKH.SelectedIndexChanged += new System.EventHandler(this.cbKH_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(303, 15);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 13);
            this.label2.TabIndex = 5;
            this.label2.Text = "Tên học viên";
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(46, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(46, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Lớp học";
            // 
            // btnChamDiem
            // 
            this.btnChamDiem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnChamDiem.Location = new System.Drawing.Point(125, 69);
            this.btnChamDiem.Name = "btnChamDiem";
            this.btnChamDiem.Size = new System.Drawing.Size(140, 22);
            this.btnChamDiem.TabIndex = 8;
            this.btnChamDiem.Text = "Chấm điểm";
            this.btnChamDiem.UseVisualStyleBackColor = true;
            this.btnChamDiem.Click += new System.EventHandler(this.btnChamDiem_Click);
            // 
            // btnDiemDanh
            // 
            this.btnDiemDanh.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnDiemDanh.Location = new System.Drawing.Point(323, 69);
            this.btnDiemDanh.Name = "btnDiemDanh";
            this.btnDiemDanh.Size = new System.Drawing.Size(140, 22);
            this.btnDiemDanh.TabIndex = 8;
            this.btnDiemDanh.Text = "Điểm danh";
            this.btnDiemDanh.UseVisualStyleBackColor = true;
            // 
            // frmDSLop
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dgvDSHV);
            this.Controls.Add(this.txtTenHV);
            this.Controls.Add(this.btnDiemDanh);
            this.Controls.Add(this.btnChamDiem);
            this.Controls.Add(this.btnShowAll);
            this.Controls.Add(this.btnTimKiem);
            this.Controls.Add(this.cbKH);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "frmDSLop";
            this.Text = "frmDSLop";
            this.Load += new System.EventHandler(this.frmDSLop_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSHV)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvDSHV;
        private System.Windows.Forms.TextBox txtTenHV;
        private System.Windows.Forms.Button btnShowAll;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.ComboBox cbKH;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnChamDiem;
        private System.Windows.Forms.Button btnDiemDanh;
    }
}