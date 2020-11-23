namespace QLTTAnh_Chi
{
    partial class frmChamDiem
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
            this.txtDiem = new System.Windows.Forms.TextBox();
            this.btnLuu = new System.Windows.Forms.Button();
            this.dgvChamDiem = new System.Windows.Forms.DataGridView();
            this.cbKH = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnExit = new System.Windows.Forms.Button();
            this.txtMaHV = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvChamDiem)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(26, 134);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(75, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Điểm học viên";
            // 
            // txtDiem
            // 
            this.txtDiem.Location = new System.Drawing.Point(29, 165);
            this.txtDiem.Name = "txtDiem";
            this.txtDiem.Size = new System.Drawing.Size(100, 20);
            this.txtDiem.TabIndex = 1;
            // 
            // btnLuu
            // 
            this.btnLuu.Location = new System.Drawing.Point(145, 162);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(66, 23);
            this.btnLuu.TabIndex = 2;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.UseVisualStyleBackColor = true;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // dgvChamDiem
            // 
            this.dgvChamDiem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvChamDiem.Dock = System.Windows.Forms.DockStyle.Right;
            this.dgvChamDiem.Location = new System.Drawing.Point(307, 0);
            this.dgvChamDiem.MultiSelect = false;
            this.dgvChamDiem.Name = "dgvChamDiem";
            this.dgvChamDiem.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvChamDiem.Size = new System.Drawing.Size(493, 450);
            this.dgvChamDiem.TabIndex = 3;
            this.dgvChamDiem.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvChamDiem_CellClick);
            // 
            // cbKH
            // 
            this.cbKH.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cbKH.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Append;
            this.cbKH.FormattingEnabled = true;
            this.cbKH.Location = new System.Drawing.Point(100, 24);
            this.cbKH.Name = "cbKH";
            this.cbKH.Size = new System.Drawing.Size(150, 21);
            this.cbKH.TabIndex = 9;
            this.cbKH.SelectedIndexChanged += new System.EventHandler(this.cbKH_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(31, 27);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(46, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "Lớp học";
            // 
            // btnExit
            // 
            this.btnExit.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnExit.Location = new System.Drawing.Point(210, 279);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(66, 23);
            this.btnExit.TabIndex = 2;
            this.btnExit.Text = "Thoát";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // txtMaHV
            // 
            this.txtMaHV.Location = new System.Drawing.Point(29, 194);
            this.txtMaHV.Name = "txtMaHV";
            this.txtMaHV.Size = new System.Drawing.Size(100, 20);
            this.txtMaHV.TabIndex = 1;
            this.txtMaHV.Visible = false;
            // 
            // frmChamDiem
            // 
            this.AcceptButton = this.btnLuu;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnExit;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.cbKH);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dgvChamDiem);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.txtMaHV);
            this.Controls.Add(this.btnLuu);
            this.Controls.Add(this.txtDiem);
            this.Controls.Add(this.label1);
            this.Name = "frmChamDiem";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmChamDiem";
            this.Load += new System.EventHandler(this.frmChamDiem_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvChamDiem)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtDiem;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.DataGridView dgvChamDiem;
        private System.Windows.Forms.ComboBox cbKH;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.TextBox txtMaHV;
    }
}