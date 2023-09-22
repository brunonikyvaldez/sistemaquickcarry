namespace SistemaQuickCarry
{
    partial class Embarque
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
            this.cbxHasta = new System.Windows.Forms.ComboBox();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorker2 = new System.ComponentModel.BackgroundWorker();
            this.lblHasta = new System.Windows.Forms.Label();
            this.gbxLocales = new System.Windows.Forms.GroupBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnConfirmarDestinos = new System.Windows.Forms.Button();
            this.gbxIds = new System.Windows.Forms.GroupBox();
            this.lblIdPaquete = new System.Windows.Forms.Label();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.txtIdPaquete = new System.Windows.Forms.TextBox();
            this.dgvEmbarqueLote = new System.Windows.Forms.DataGridView();
            this.clmIdPaquete = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmTipoPaquete = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmCedulaDestinatario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmDireccionDestino = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmCiudadDestino = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnGuardarLote = new System.Windows.Forms.Button();
            this.gbxLocales.SuspendLayout();
            this.gbxIds.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEmbarqueLote)).BeginInit();
            this.SuspendLayout();
            // 
            // cbxHasta
            // 
            this.cbxHasta.FormattingEnabled = true;
            this.cbxHasta.Items.AddRange(new object[] {
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
            this.cbxHasta.Location = new System.Drawing.Point(6, 73);
            this.cbxHasta.Name = "cbxHasta";
            this.cbxHasta.Size = new System.Drawing.Size(257, 21);
            this.cbxHasta.TabIndex = 2;
            this.cbxHasta.Text = "<Ciudad de Destino>";
            // 
            // lblHasta
            // 
            this.lblHasta.AutoSize = true;
            this.lblHasta.Location = new System.Drawing.Point(3, 41);
            this.lblHasta.Name = "lblHasta";
            this.lblHasta.Size = new System.Drawing.Size(35, 13);
            this.lblHasta.TabIndex = 4;
            this.lblHasta.Text = "Hasta";
            // 
            // gbxLocales
            // 
            this.gbxLocales.Controls.Add(this.btnCancelar);
            this.gbxLocales.Controls.Add(this.btnConfirmarDestinos);
            this.gbxLocales.Controls.Add(this.lblHasta);
            this.gbxLocales.Controls.Add(this.cbxHasta);
            this.gbxLocales.Location = new System.Drawing.Point(12, 6);
            this.gbxLocales.Name = "gbxLocales";
            this.gbxLocales.Size = new System.Drawing.Size(285, 185);
            this.gbxLocales.TabIndex = 5;
            this.gbxLocales.TabStop = false;
            this.gbxLocales.Text = "Direcciones";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(156, 110);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 6;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnConfirmarDestinos
            // 
            this.btnConfirmarDestinos.Location = new System.Drawing.Point(20, 110);
            this.btnConfirmarDestinos.Name = "btnConfirmarDestinos";
            this.btnConfirmarDestinos.Size = new System.Drawing.Size(75, 23);
            this.btnConfirmarDestinos.TabIndex = 5;
            this.btnConfirmarDestinos.Text = "Confirmar";
            this.btnConfirmarDestinos.UseVisualStyleBackColor = true;
            this.btnConfirmarDestinos.Click += new System.EventHandler(this.btnConfirmarDestinos_Click);
            // 
            // gbxIds
            // 
            this.gbxIds.Controls.Add(this.lblIdPaquete);
            this.gbxIds.Controls.Add(this.btnEliminar);
            this.gbxIds.Controls.Add(this.btnAgregar);
            this.gbxIds.Controls.Add(this.txtIdPaquete);
            this.gbxIds.Location = new System.Drawing.Point(13, 211);
            this.gbxIds.Name = "gbxIds";
            this.gbxIds.Size = new System.Drawing.Size(284, 227);
            this.gbxIds.TabIndex = 6;
            this.gbxIds.TabStop = false;
            this.gbxIds.Text = "Ingresar Paquetes";
            // 
            // lblIdPaquete
            // 
            this.lblIdPaquete.AutoSize = true;
            this.lblIdPaquete.Location = new System.Drawing.Point(30, 69);
            this.lblIdPaquete.Name = "lblIdPaquete";
            this.lblIdPaquete.Size = new System.Drawing.Size(129, 13);
            this.lblIdPaquete.TabIndex = 3;
            this.lblIdPaquete.Text = "Id Del Paquete a agregar ";
            this.lblIdPaquete.Click += new System.EventHandler(this.lblIdPaquete_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.Location = new System.Drawing.Point(155, 146);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(75, 23);
            this.btnEliminar.TabIndex = 2;
            this.btnEliminar.Text = "Eliminar";
            this.btnEliminar.UseVisualStyleBackColor = true;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // btnAgregar
            // 
            this.btnAgregar.Location = new System.Drawing.Point(30, 146);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(75, 23);
            this.btnAgregar.TabIndex = 1;
            this.btnAgregar.Text = "Agregar";
            this.btnAgregar.UseVisualStyleBackColor = true;
            this.btnAgregar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // txtIdPaquete
            // 
            this.txtIdPaquete.Location = new System.Drawing.Point(30, 88);
            this.txtIdPaquete.Name = "txtIdPaquete";
            this.txtIdPaquete.Size = new System.Drawing.Size(200, 20);
            this.txtIdPaquete.TabIndex = 0;
            // 
            // dgvEmbarqueLote
            // 
            this.dgvEmbarqueLote.AllowUserToAddRows = false;
            this.dgvEmbarqueLote.AllowUserToDeleteRows = false;
            this.dgvEmbarqueLote.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEmbarqueLote.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clmIdPaquete,
            this.clmTipoPaquete,
            this.clmCedulaDestinatario,
            this.clmDireccionDestino,
            this.clmCiudadDestino});
            this.dgvEmbarqueLote.Location = new System.Drawing.Point(327, 6);
            this.dgvEmbarqueLote.Name = "dgvEmbarqueLote";
            this.dgvEmbarqueLote.Size = new System.Drawing.Size(561, 426);
            this.dgvEmbarqueLote.TabIndex = 7;
            this.dgvEmbarqueLote.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvEmbarqueLote_CellContentClick);
            // 
            // clmIdPaquete
            // 
            this.clmIdPaquete.HeaderText = "Id Del Paquete";
            this.clmIdPaquete.Name = "clmIdPaquete";
            this.clmIdPaquete.ReadOnly = true;
            // 
            // clmTipoPaquete
            // 
            this.clmTipoPaquete.HeaderText = "TipoPaquete";
            this.clmTipoPaquete.Name = "clmTipoPaquete";
            this.clmTipoPaquete.ReadOnly = true;
            // 
            // clmCedulaDestinatario
            // 
            this.clmCedulaDestinatario.HeaderText = "Cedula del Destinatario";
            this.clmCedulaDestinatario.Name = "clmCedulaDestinatario";
            this.clmCedulaDestinatario.ReadOnly = true;
            // 
            // clmDireccionDestino
            // 
            this.clmDireccionDestino.HeaderText = "Direccion del Destinatario";
            this.clmDireccionDestino.Name = "clmDireccionDestino";
            this.clmDireccionDestino.ReadOnly = true;
            // 
            // clmCiudadDestino
            // 
            this.clmCiudadDestino.HeaderText = "Ciudad Destino";
            this.clmCiudadDestino.Name = "clmCiudadDestino";
            this.clmCiudadDestino.ReadOnly = true;
            // 
            // btnGuardarLote
            // 
            this.btnGuardarLote.Location = new System.Drawing.Point(535, 438);
            this.btnGuardarLote.Name = "btnGuardarLote";
            this.btnGuardarLote.Size = new System.Drawing.Size(164, 23);
            this.btnGuardarLote.TabIndex = 8;
            this.btnGuardarLote.Text = "Guardar Lote";
            this.btnGuardarLote.UseVisualStyleBackColor = true;
            this.btnGuardarLote.Click += new System.EventHandler(this.btnGuardarLote_Click);
            // 
            // Embarque
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(985, 519);
            this.Controls.Add(this.btnGuardarLote);
            this.Controls.Add(this.dgvEmbarqueLote);
            this.Controls.Add(this.gbxIds);
            this.Controls.Add(this.gbxLocales);
            this.Name = "Embarque";
            this.Text = "Embarque";
            this.Load += new System.EventHandler(this.Embarque_Load);
            this.gbxLocales.ResumeLayout(false);
            this.gbxLocales.PerformLayout();
            this.gbxIds.ResumeLayout(false);
            this.gbxIds.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEmbarqueLote)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.ComboBox cbxHasta;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.ComponentModel.BackgroundWorker backgroundWorker2;
        private System.Windows.Forms.Label lblHasta;
        private System.Windows.Forms.GroupBox gbxLocales;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnConfirmarDestinos;
        private System.Windows.Forms.GroupBox gbxIds;
        private System.Windows.Forms.DataGridView dgvEmbarqueLote;
        private System.Windows.Forms.Label lblIdPaquete;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.TextBox txtIdPaquete;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmIdPaquete;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmTipoPaquete;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmCedulaDestinatario;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmDireccionDestino;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmCiudadDestino;
        private System.Windows.Forms.Button btnGuardarLote;
    }
}