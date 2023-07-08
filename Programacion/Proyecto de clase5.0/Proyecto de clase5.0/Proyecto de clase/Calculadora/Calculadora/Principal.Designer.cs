namespace SistemaQuickCarry
{
    partial class Principal
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
            this.menuAplicaciones = new System.Windows.Forms.ToolStripMenuItem();
            this.menuAdmin = new System.Windows.Forms.ToolStripMenuItem();
            this.menuChofer = new System.Windows.Forms.ToolStripMenuItem();
            this.menuAlmacen = new System.Windows.Forms.ToolStripMenuItem();
            this.menuIngreso = new System.Windows.Forms.ToolStripMenuItem();
            this.menuLogin = new System.Windows.Forms.ToolStripMenuItem();
            this.menuSalir = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuAplicaciones
            // 
            this.menuAplicaciones.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuAdmin,
            this.menuChofer,
            this.menuAlmacen});
            this.menuAplicaciones.Name = "menuAplicaciones";
            this.menuAplicaciones.Size = new System.Drawing.Size(86, 20);
            this.menuAplicaciones.Text = "Aplicaciones";
            // 
            // menuAdmin
            // 
            this.menuAdmin.Name = "menuAdmin";
            this.menuAdmin.Size = new System.Drawing.Size(180, 22);
            this.menuAdmin.Text = "Administrador";
            this.menuAdmin.TextDirection = System.Windows.Forms.ToolStripTextDirection.Horizontal;
            this.menuAdmin.Click += new System.EventHandler(this.menuAdmin_Click);
            // 
            // menuChofer
            // 
            this.menuChofer.Name = "menuChofer";
            this.menuChofer.Size = new System.Drawing.Size(180, 22);
            this.menuChofer.Text = "Chofer";
            this.menuChofer.Click += new System.EventHandler(this.menuChofer_Click);
            // 
            // menuAlmacen
            // 
            this.menuAlmacen.Name = "menuAlmacen";
            this.menuAlmacen.Size = new System.Drawing.Size(180, 22);
            this.menuAlmacen.Text = "Almacen";
            // 
            // menuIngreso
            // 
            this.menuIngreso.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuLogin,
            this.menuSalir});
            this.menuIngreso.Name = "menuIngreso";
            this.menuIngreso.Size = new System.Drawing.Size(58, 20);
            this.menuIngreso.Text = "Ingreso";
            // 
            // menuLogin
            // 
            this.menuLogin.Name = "menuLogin";
            this.menuLogin.Size = new System.Drawing.Size(104, 22);
            this.menuLogin.Text = "Login";
            this.menuLogin.Click += new System.EventHandler(this.menuLogin_Click);
            // 
            // menuSalir
            // 
            this.menuSalir.Name = "menuSalir";
            this.menuSalir.Size = new System.Drawing.Size(104, 22);
            this.menuSalir.Text = "Salir";
            this.menuSalir.Click += new System.EventHandler(this.menuSalir_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuAplicaciones,
            this.menuIngreso});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Principal";
            this.Text = "Principal";
            this.Load += new System.EventHandler(this.Principal_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ToolStripMenuItem menuIngreso;
        private System.Windows.Forms.ToolStripMenuItem menuSalir;
        private System.Windows.Forms.MenuStrip menuStrip1;
        public System.Windows.Forms.ToolStripMenuItem menuAplicaciones;
        public System.Windows.Forms.ToolStripMenuItem menuAdmin;
        public System.Windows.Forms.ToolStripMenuItem menuChofer;
        public System.Windows.Forms.ToolStripMenuItem menuAlmacen;
        public System.Windows.Forms.ToolStripMenuItem menuLogin;
    }
}