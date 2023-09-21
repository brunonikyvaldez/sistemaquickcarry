namespace Calculadora
{
    partial class Almacenero
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.operacionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuEmbarque = new System.Windows.Forms.ToolStripMenuItem();
            this.menuDesembarque = new System.Windows.Forms.ToolStripMenuItem();
            this.menuInventario = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.operacionesToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1060, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // operacionesToolStripMenuItem
            // 
            this.operacionesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuEmbarque,
            this.menuDesembarque,
            this.menuInventario});
            this.operacionesToolStripMenuItem.Name = "operacionesToolStripMenuItem";
            this.operacionesToolStripMenuItem.Size = new System.Drawing.Size(85, 20);
            this.operacionesToolStripMenuItem.Text = "Operaciones";
            // 
            // menuEmbarque
            // 
            this.menuEmbarque.Name = "menuEmbarque";
            this.menuEmbarque.Size = new System.Drawing.Size(180, 22);
            this.menuEmbarque.Text = "Embarque ";
            // 
            // menuDesembarque
            // 
            this.menuDesembarque.Name = "menuDesembarque";
            this.menuDesembarque.Size = new System.Drawing.Size(180, 22);
            this.menuDesembarque.Text = "Desembarque";
            // 
            // menuInventario
            // 
            this.menuInventario.Name = "menuInventario";
            this.menuInventario.Size = new System.Drawing.Size(180, 22);
            this.menuInventario.Text = "Inventario";
            // 
            // Almacenero
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1060, 557);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Almacenero";
            this.Text = "Almacenero";
            this.Load += new System.EventHandler(this.Almacenero_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem operacionesToolStripMenuItem;
        public System.Windows.Forms.ToolStripMenuItem menuEmbarque;
        public System.Windows.Forms.ToolStripMenuItem menuDesembarque;
        public System.Windows.Forms.ToolStripMenuItem menuInventario;
    }
}