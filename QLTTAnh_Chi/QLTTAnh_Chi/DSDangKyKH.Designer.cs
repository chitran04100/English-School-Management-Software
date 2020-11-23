namespace QLTTAnh_Chi
{
    partial class DSDangKyKH
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
            this.dgvDSDK = new System.Windows.Forms.DataGridView();
            this.btnDK = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSDK)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label1.Location = new System.Drawing.Point(173, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(423, 24);
            this.label1.TabIndex = 0;
            this.label1.Text = "DANH SÁCH CÁC KHÓA HỌC ĐÃ ĐĂNG KÝ";
            // 
            // dgvDSDK
            // 
            this.dgvDSDK.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvDSDK.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDSDK.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvDSDK.Location = new System.Drawing.Point(0, 94);
            this.dgvDSDK.MultiSelect = false;
            this.dgvDSDK.Name = "dgvDSDK";
            this.dgvDSDK.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvDSDK.Size = new System.Drawing.Size(800, 356);
            this.dgvDSDK.TabIndex = 1;
            // 
            // btnDK
            // 
            this.btnDK.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnDK.Location = new System.Drawing.Point(672, 52);
            this.btnDK.Name = "btnDK";
            this.btnDK.Size = new System.Drawing.Size(116, 23);
            this.btnDK.TabIndex = 6;
            this.btnDK.Text = "Đăng ký khóa học";
            this.btnDK.UseVisualStyleBackColor = true;
            this.btnDK.Click += new System.EventHandler(this.btnDK_Click);
            // 
            // DSDangKyKH
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnDK);
            this.Controls.Add(this.dgvDSDK);
            this.Controls.Add(this.label1);
            this.Name = "DSDangKyKH";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DANH SÁCH CÁC KHÓA HỌC ĐÃ ĐĂNG KÝ";
            this.Load += new System.EventHandler(this.DSDangKyKH_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSDK)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvDSDK;
        private System.Windows.Forms.Button btnDK;
    }
}