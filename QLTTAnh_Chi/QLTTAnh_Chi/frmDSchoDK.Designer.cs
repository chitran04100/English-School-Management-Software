namespace QLTTAnh_Chi
{
    partial class frmDSchoDK
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
            this.cbKH = new System.Windows.Forms.ComboBox();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.txtTenHV = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnShowAll = new System.Windows.Forms.Button();
            this.dgvDSHV = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSHV)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(46, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Khóa học";
            // 
            // cbKH
            // 
            this.cbKH.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cbKH.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Append;
            this.cbKH.FormattingEnabled = true;
            this.cbKH.Location = new System.Drawing.Point(115, 21);
            this.cbKH.Name = "cbKH";
            this.cbKH.Size = new System.Drawing.Size(150, 21);
            this.cbKH.TabIndex = 1;
            this.cbKH.SelectedIndexChanged += new System.EventHandler(this.cbKH_SelectedIndexChanged);
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnTimKiem.Location = new System.Drawing.Point(591, 19);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(75, 23);
            this.btnTimKiem.TabIndex = 2;
            this.btnTimKiem.Text = "Tìm kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = true;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // txtTenHV
            // 
            this.txtTenHV.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTenHV.Location = new System.Drawing.Point(399, 21);
            this.txtTenHV.Name = "txtTenHV";
            this.txtTenHV.Size = new System.Drawing.Size(169, 20);
            this.txtTenHV.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(303, 24);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Tên học viên";
            // 
            // btnShowAll
            // 
            this.btnShowAll.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnShowAll.Location = new System.Drawing.Point(591, 60);
            this.btnShowAll.Name = "btnShowAll";
            this.btnShowAll.Size = new System.Drawing.Size(105, 39);
            this.btnShowAll.TabIndex = 2;
            this.btnShowAll.Text = "Hiển thị tất cả";
            this.btnShowAll.UseVisualStyleBackColor = true;
            this.btnShowAll.Click += new System.EventHandler(this.btnShowAll_Click);
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
            this.dgvDSHV.TabIndex = 4;
            this.dgvDSHV.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDSHV_CellDoubleClick);
            // 
            // frmDSchoDK
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dgvDSHV);
            this.Controls.Add(this.txtTenHV);
            this.Controls.Add(this.btnShowAll);
            this.Controls.Add(this.btnTimKiem);
            this.Controls.Add(this.cbKH);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "frmDSchoDK";
            this.Text = "DANH SÁCH HỌC VIÊN CHƯA CÓ LỚP";
            this.Load += new System.EventHandler(this.frmDSchoDK_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSHV)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbKH;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.TextBox txtTenHV;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnShowAll;
        private System.Windows.Forms.DataGridView dgvDSHV;
    }
}