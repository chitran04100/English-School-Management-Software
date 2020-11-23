namespace QLTTAnh_Chi
{
    partial class frmTraCuuDiem
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
            this.txtTukhoa = new System.Windows.Forms.TextBox();
            this.btnTraCuu = new System.Windows.Forms.Button();
            this.dgvTraCuuDiem = new System.Windows.Forms.DataGridView();
            this.btnShowAll = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTraCuuDiem)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(272, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tên khóa học";
            // 
            // txtTukhoa
            // 
            this.txtTukhoa.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTukhoa.Location = new System.Drawing.Point(363, 26);
            this.txtTukhoa.Name = "txtTukhoa";
            this.txtTukhoa.Size = new System.Drawing.Size(164, 20);
            this.txtTukhoa.TabIndex = 1;
            // 
            // btnTraCuu
            // 
            this.btnTraCuu.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnTraCuu.Location = new System.Drawing.Point(560, 24);
            this.btnTraCuu.Name = "btnTraCuu";
            this.btnTraCuu.Size = new System.Drawing.Size(75, 23);
            this.btnTraCuu.TabIndex = 2;
            this.btnTraCuu.Text = "Tra cứu";
            this.btnTraCuu.UseVisualStyleBackColor = true;
            this.btnTraCuu.Click += new System.EventHandler(this.btnTraCuu_Click);
            // 
            // dgvTraCuuDiem
            // 
            this.dgvTraCuuDiem.AllowUserToAddRows = false;
            this.dgvTraCuuDiem.AllowUserToDeleteRows = false;
            this.dgvTraCuuDiem.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvTraCuuDiem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTraCuuDiem.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvTraCuuDiem.Location = new System.Drawing.Point(0, 82);
            this.dgvTraCuuDiem.MultiSelect = false;
            this.dgvTraCuuDiem.Name = "dgvTraCuuDiem";
            this.dgvTraCuuDiem.ReadOnly = true;
            this.dgvTraCuuDiem.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvTraCuuDiem.Size = new System.Drawing.Size(800, 368);
            this.dgvTraCuuDiem.TabIndex = 3;
            // 
            // btnShowAll
            // 
            this.btnShowAll.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnShowAll.Location = new System.Drawing.Point(658, 24);
            this.btnShowAll.Name = "btnShowAll";
            this.btnShowAll.Size = new System.Drawing.Size(118, 23);
            this.btnShowAll.TabIndex = 2;
            this.btnShowAll.Text = "Hiển thị danh sách";
            this.btnShowAll.UseVisualStyleBackColor = true;
            this.btnShowAll.Click += new System.EventHandler(this.btnShowAll_Click);
            // 
            // frmTraCuuDiem
            // 
            this.AcceptButton = this.btnTraCuu;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dgvTraCuuDiem);
            this.Controls.Add(this.btnShowAll);
            this.Controls.Add(this.btnTraCuu);
            this.Controls.Add(this.txtTukhoa);
            this.Controls.Add(this.label1);
            this.Name = "frmTraCuuDiem";
            this.Text = "KẾT QUẢ HỌC TẬP";
            this.Load += new System.EventHandler(this.frmTraCuuDiem_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvTraCuuDiem)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtTukhoa;
        private System.Windows.Forms.Button btnTraCuu;
        private System.Windows.Forms.DataGridView dgvTraCuuDiem;
        private System.Windows.Forms.Button btnShowAll;
    }
}