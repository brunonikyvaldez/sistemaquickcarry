namespace SistemaQuickCarry
{
    partial class Camioneros
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
            this.btnSalidaCamion = new System.Windows.Forms.Button();
            this.btnLlegadaCamion = new System.Windows.Forms.Button();
            this.lblCamionero = new System.Windows.Forms.Label();
            this.lblMatCamion = new System.Windows.Forms.Label();
            this.lblIdCamionero = new System.Windows.Forms.Label();
            this.lblMatricula = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.clmIdEnvio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmLocal = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmHoraSalidaEst = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmHoraLlegadaEstimada = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmHoraDeSalida = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmHoraLlegada = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clmEntregado = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnSalidaCamion
            // 
            this.btnSalidaCamion.Location = new System.Drawing.Point(160, 405);
            this.btnSalidaCamion.Name = "btnSalidaCamion";
            this.btnSalidaCamion.Size = new System.Drawing.Size(119, 23);
            this.btnSalidaCamion.TabIndex = 1;
            this.btnSalidaCamion.Text = "Empezar Viaje";
            this.btnSalidaCamion.UseVisualStyleBackColor = true;
            this.btnSalidaCamion.Click += new System.EventHandler(this.btnSalidaCamion_Click);
            // 
            // btnLlegadaCamion
            // 
            this.btnLlegadaCamion.Location = new System.Drawing.Point(581, 405);
            this.btnLlegadaCamion.Name = "btnLlegadaCamion";
            this.btnLlegadaCamion.Size = new System.Drawing.Size(119, 23);
            this.btnLlegadaCamion.TabIndex = 2;
            this.btnLlegadaCamion.Text = "Terminar Viaje";
            this.btnLlegadaCamion.UseVisualStyleBackColor = true;
            // 
            // lblCamionero
            // 
            this.lblCamionero.AutoSize = true;
            this.lblCamionero.Location = new System.Drawing.Point(12, 497);
            this.lblCamionero.Name = "lblCamionero";
            this.lblCamionero.Size = new System.Drawing.Size(72, 13);
            this.lblCamionero.TabIndex = 3;
            this.lblCamionero.Text = "Id Camionero:";
            // 
            // lblMatCamion
            // 
            this.lblMatCamion.AutoSize = true;
            this.lblMatCamion.Location = new System.Drawing.Point(12, 512);
            this.lblMatCamion.Name = "lblMatCamion";
            this.lblMatCamion.Size = new System.Drawing.Size(138, 13);
            this.lblMatCamion.TabIndex = 4;
            this.lblMatCamion.Text = "Matricula Camion Asignado:";
            // 
            // lblIdCamionero
            // 
            this.lblIdCamionero.AutoSize = true;
            this.lblIdCamionero.Location = new System.Drawing.Point(90, 497);
            this.lblIdCamionero.Name = "lblIdCamionero";
            this.lblIdCamionero.Size = new System.Drawing.Size(31, 13);
            this.lblIdCamionero.TabIndex = 5;
            this.lblIdCamionero.Text = "0001";
            // 
            // lblMatricula
            // 
            this.lblMatricula.AutoSize = true;
            this.lblMatricula.Location = new System.Drawing.Point(157, 512);
            this.lblMatricula.Name = "lblMatricula";
            this.lblMatricula.Size = new System.Drawing.Size(51, 13);
            this.lblMatricula.TabIndex = 6;
            this.lblMatricula.Text = "MAS-124";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clmIdEnvio,
            this.clmLocal,
            this.clmHoraSalidaEst,
            this.clmHoraLlegadaEstimada,
            this.clmHoraDeSalida,
            this.clmHoraLlegada,
            this.clmEntregado});
            this.dataGridView1.Location = new System.Drawing.Point(56, 12);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(760, 376);
            this.dataGridView1.TabIndex = 7;
            // 
            // clmIdEnvio
            // 
            this.clmIdEnvio.HeaderText = "Id Del Envio";
            this.clmIdEnvio.Name = "clmIdEnvio";
            this.clmIdEnvio.ReadOnly = true;
            // 
            // clmLocal
            // 
            this.clmLocal.HeaderText = "Local";
            this.clmLocal.Name = "clmLocal";
            this.clmLocal.ReadOnly = true;
            // 
            // clmHoraSalidaEst
            // 
            this.clmHoraSalidaEst.HeaderText = "Hora de Salida Estimada";
            this.clmHoraSalidaEst.Name = "clmHoraSalidaEst";
            this.clmHoraSalidaEst.ReadOnly = true;
            // 
            // clmHoraLlegadaEstimada
            // 
            this.clmHoraLlegadaEstimada.HeaderText = "Hora De Llegada estimada";
            this.clmHoraLlegadaEstimada.Name = "clmHoraLlegadaEstimada";
            this.clmHoraLlegadaEstimada.ReadOnly = true;
            // 
            // clmHoraDeSalida
            // 
            this.clmHoraDeSalida.HeaderText = "Hora de Salida";
            this.clmHoraDeSalida.Name = "clmHoraDeSalida";
            this.clmHoraDeSalida.ReadOnly = true;
            // 
            // clmHoraLlegada
            // 
            this.clmHoraLlegada.HeaderText = "Hora de Llegada";
            this.clmHoraLlegada.Name = "clmHoraLlegada";
            this.clmHoraLlegada.ReadOnly = true;
            this.clmHoraLlegada.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.clmHoraLlegada.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // clmEntregado
            // 
            this.clmEntregado.HeaderText = "Entregado? ";
            this.clmEntregado.Name = "clmEntregado";
            this.clmEntregado.ReadOnly = true;
            // 
            // Camioneros
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(827, 533);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.lblMatricula);
            this.Controls.Add(this.lblIdCamionero);
            this.Controls.Add(this.lblMatCamion);
            this.Controls.Add(this.lblCamionero);
            this.Controls.Add(this.btnLlegadaCamion);
            this.Controls.Add(this.btnSalidaCamion);
            this.Name = "Camioneros";
            this.Text = "Camioneros";
            this.Load += new System.EventHandler(this.Camioneros_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnSalidaCamion;
        private System.Windows.Forms.Button btnLlegadaCamion;
        private System.Windows.Forms.Label lblCamionero;
        private System.Windows.Forms.Label lblMatCamion;
        private System.Windows.Forms.Label lblIdCamionero;
        private System.Windows.Forms.Label lblMatricula;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmIdEnvio;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmLocal;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmHoraSalidaEst;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmHoraLlegadaEstimada;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmHoraDeSalida;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmHoraLlegada;
        private System.Windows.Forms.DataGridViewCheckBoxColumn clmEntregado;
    }
}