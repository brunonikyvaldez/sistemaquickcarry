namespace SistemaQuickCarry
{
    partial class Inventario
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
            this.txtIdPaquete = new System.Windows.Forms.TextBox();
            this.txtCiDestinatario = new System.Windows.Forms.TextBox();
            this.txtDireccionDestino = new System.Windows.Forms.TextBox();
            this.lblIdPaquete = new System.Windows.Forms.Label();
            this.lblTipoPaquete = new System.Windows.Forms.Label();
            this.lblCedula = new System.Windows.Forms.Label();
            this.lblDestino = new System.Windows.Forms.Label();
            this.lblCiudadDestino = new System.Windows.Forms.Label();
            this.cbxTipoPaquete = new System.Windows.Forms.ComboBox();
            this.cbxCiudadDestino = new System.Windows.Forms.ComboBox();
            this.txtPerecedero = new System.Windows.Forms.TextBox();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtIdPaquete
            // 
            this.txtIdPaquete.Location = new System.Drawing.Point(199, 24);
            this.txtIdPaquete.Name = "txtIdPaquete";
            this.txtIdPaquete.Size = new System.Drawing.Size(121, 20);
            this.txtIdPaquete.TabIndex = 0;
            // 
            // txtCiDestinatario
            // 
            this.txtCiDestinatario.Location = new System.Drawing.Point(199, 104);
            this.txtCiDestinatario.Name = "txtCiDestinatario";
            this.txtCiDestinatario.Size = new System.Drawing.Size(121, 20);
            this.txtCiDestinatario.TabIndex = 2;
            // 
            // txtDireccionDestino
            // 
            this.txtDireccionDestino.Location = new System.Drawing.Point(199, 152);
            this.txtDireccionDestino.Name = "txtDireccionDestino";
            this.txtDireccionDestino.Size = new System.Drawing.Size(121, 20);
            this.txtDireccionDestino.TabIndex = 3;
            // 
            // lblIdPaquete
            // 
            this.lblIdPaquete.AutoSize = true;
            this.lblIdPaquete.Location = new System.Drawing.Point(53, 27);
            this.lblIdPaquete.Name = "lblIdPaquete";
            this.lblIdPaquete.Size = new System.Drawing.Size(86, 13);
            this.lblIdPaquete.TabIndex = 4;
            this.lblIdPaquete.Text = "codigo de barras";
            // 
            // lblTipoPaquete
            // 
            this.lblTipoPaquete.AutoSize = true;
            this.lblTipoPaquete.Location = new System.Drawing.Point(53, 59);
            this.lblTipoPaquete.Name = "lblTipoPaquete";
            this.lblTipoPaquete.Size = new System.Drawing.Size(67, 13);
            this.lblTipoPaquete.TabIndex = 5;
            this.lblTipoPaquete.Text = "tipo Paquete";
            // 
            // lblCedula
            // 
            this.lblCedula.AutoSize = true;
            this.lblCedula.Location = new System.Drawing.Point(53, 111);
            this.lblCedula.Name = "lblCedula";
            this.lblCedula.Size = new System.Drawing.Size(97, 13);
            this.lblCedula.TabIndex = 6;
            this.lblCedula.Text = "Cedula destinatario";
            // 
            // lblDestino
            // 
            this.lblDestino.AutoSize = true;
            this.lblDestino.Location = new System.Drawing.Point(53, 159);
            this.lblDestino.Name = "lblDestino";
            this.lblDestino.Size = new System.Drawing.Size(126, 13);
            this.lblDestino.TabIndex = 7;
            this.lblDestino.Text = "Direccion de Destinatario";
            // 
            // lblCiudadDestino
            // 
            this.lblCiudadDestino.AutoSize = true;
            this.lblCiudadDestino.Location = new System.Drawing.Point(53, 204);
            this.lblCiudadDestino.Name = "lblCiudadDestino";
            this.lblCiudadDestino.Size = new System.Drawing.Size(79, 13);
            this.lblCiudadDestino.TabIndex = 8;
            this.lblCiudadDestino.Text = "Ciudad Destino";
            // 
            // cbxTipoPaquete
            // 
            this.cbxTipoPaquete.FormattingEnabled = true;
            this.cbxTipoPaquete.Items.AddRange(new object[] {
            "Fragil",
            "Comun",
            "Perecedero"});
            this.cbxTipoPaquete.Location = new System.Drawing.Point(199, 50);
            this.cbxTipoPaquete.Name = "cbxTipoPaquete";
            this.cbxTipoPaquete.Size = new System.Drawing.Size(121, 21);
            this.cbxTipoPaquete.TabIndex = 9;
            this.cbxTipoPaquete.Text = "<Tipo Paquete>";
            this.cbxTipoPaquete.SelectedIndexChanged += new System.EventHandler(this.cbxTipoPaquete_SelectedIndexChanged);
            // 
            // cbxCiudadDestino
            // 
            this.cbxCiudadDestino.FormattingEnabled = true;
            this.cbxCiudadDestino.Items.AddRange(new object[] {
            "Artigas, Artigas",
            "Canelones, Canelones",
            "Melo, Cerro Largo",
            "Colonia del Sacramento, Colonia",
            "Durazno, Durazno",
            "Trinidad, Flores",
            "Florida, Florida",
            "Minas, Lavalleja",
            "Maldonado, Maldonado",
            "Paysandu, Paysandu",
            "Fray Bentos, Rio Negro",
            "Rivera, Rivera",
            "Rocha, Rocha",
            "Salto, Salto",
            "San Jose de Mayo, San Jose",
            "Mercedes, Soriano",
            "Tacuarembo, Tacuarembo",
            "Treinta y tres, Treinta y tres"});
            this.cbxCiudadDestino.Location = new System.Drawing.Point(199, 196);
            this.cbxCiudadDestino.Name = "cbxCiudadDestino";
            this.cbxCiudadDestino.Size = new System.Drawing.Size(121, 21);
            this.cbxCiudadDestino.TabIndex = 11;
            this.cbxCiudadDestino.Text = "<Ciudad de Destino>";
            // 
            // txtPerecedero
            // 
            this.txtPerecedero.Location = new System.Drawing.Point(199, 78);
            this.txtPerecedero.Name = "txtPerecedero";
            this.txtPerecedero.Size = new System.Drawing.Size(121, 20);
            this.txtPerecedero.TabIndex = 12;
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(149, 241);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(150, 23);
            this.btnGuardar.TabIndex = 13;
            this.btnGuardar.Text = "Guardar paquete";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // Inventario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(378, 363);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.txtPerecedero);
            this.Controls.Add(this.cbxCiudadDestino);
            this.Controls.Add(this.cbxTipoPaquete);
            this.Controls.Add(this.lblCiudadDestino);
            this.Controls.Add(this.lblDestino);
            this.Controls.Add(this.lblCedula);
            this.Controls.Add(this.lblTipoPaquete);
            this.Controls.Add(this.lblIdPaquete);
            this.Controls.Add(this.txtDireccionDestino);
            this.Controls.Add(this.txtCiDestinatario);
            this.Controls.Add(this.txtIdPaquete);
            this.Name = "Inventario";
            this.Text = "Inventario";
            this.Load += new System.EventHandler(this.Inventario_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtIdPaquete;
        private System.Windows.Forms.TextBox txtCiDestinatario;
        private System.Windows.Forms.TextBox txtDireccionDestino;
        private System.Windows.Forms.Label lblIdPaquete;
        private System.Windows.Forms.Label lblTipoPaquete;
        private System.Windows.Forms.Label lblCedula;
        private System.Windows.Forms.Label lblDestino;
        private System.Windows.Forms.Label lblCiudadDestino;
        private System.Windows.Forms.ComboBox cbxTipoPaquete;
        private System.Windows.Forms.ComboBox cbxCiudadDestino;
        private System.Windows.Forms.TextBox txtPerecedero;
        private System.Windows.Forms.Button btnGuardar;
    }
}