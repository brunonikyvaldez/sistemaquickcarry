namespace SistemaQuickCarry
{
    partial class Administrador
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
            this.gbBuscar = new System.Windows.Forms.GroupBox();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.txtCi = new System.Windows.Forms.TextBox();
            this.lblCi = new System.Windows.Forms.Label();
            this.gbDatos = new System.Windows.Forms.GroupBox();
            this.lblRolUsuario = new System.Windows.Forms.Label();
            this.lblRol = new System.Windows.Forms.Label();
            this.lblIdUsuario = new System.Windows.Forms.Label();
            this.lblId = new System.Windows.Forms.Label();
            this.lblNombreUsuario = new System.Windows.Forms.Label();
            this.lblNombrePersona = new System.Windows.Forms.Label();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.lblUsuario = new System.Windows.Forms.Label();
            this.lblNombre = new System.Windows.Forms.Label();
            this.btnSalir = new System.Windows.Forms.Button();
            this.gbBusquedas = new System.Windows.Forms.GroupBox();
            this.gbGuardar = new System.Windows.Forms.GroupBox();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.gbGuardarDatos = new System.Windows.Forms.GroupBox();
            this.lblGuardarRol = new System.Windows.Forms.Label();
            this.cbxRol = new System.Windows.Forms.ComboBox();
            this.txtConfContrasenia = new System.Windows.Forms.TextBox();
            this.txtContrasenia = new System.Windows.Forms.TextBox();
            this.lblConfContrasenia = new System.Windows.Forms.Label();
            this.lblContrasenia = new System.Windows.Forms.Label();
            this.txtGuadarUsuario = new System.Windows.Forms.TextBox();
            this.lblGuardarUsuario = new System.Windows.Forms.Label();
            this.txtGuardarCi = new System.Windows.Forms.TextBox();
            this.lblGuardarCi = new System.Windows.Forms.Label();
            this.lblGuardarNombre1 = new System.Windows.Forms.Label();
            this.txtGuardarNombre1 = new System.Windows.Forms.TextBox();
            this.lblGuardarNombre2 = new System.Windows.Forms.Label();
            this.txtGuardarNombre2 = new System.Windows.Forms.TextBox();
            this.lblGuardarApellido1 = new System.Windows.Forms.Label();
            this.txtGuardarApellido1 = new System.Windows.Forms.TextBox();
            this.lblGuardarApellido2 = new System.Windows.Forms.Label();
            this.txtGuardarApellido2 = new System.Windows.Forms.TextBox();
            this.gbBuscar.SuspendLayout();
            this.gbDatos.SuspendLayout();
            this.gbBusquedas.SuspendLayout();
            this.gbGuardar.SuspendLayout();
            this.gbGuardarDatos.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbBuscar
            // 
            this.gbBuscar.Controls.Add(this.btnBuscar);
            this.gbBuscar.Controls.Add(this.txtCi);
            this.gbBuscar.Controls.Add(this.lblCi);
            this.gbBuscar.Location = new System.Drawing.Point(10, 19);
            this.gbBuscar.Name = "gbBuscar";
            this.gbBuscar.Size = new System.Drawing.Size(196, 53);
            this.gbBuscar.TabIndex = 0;
            this.gbBuscar.TabStop = false;
            this.gbBuscar.Text = "Búsqueda";
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(134, 19);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(49, 23);
            this.btnBuscar.TabIndex = 4;
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // txtCi
            // 
            this.txtCi.Location = new System.Drawing.Point(28, 19);
            this.txtCi.Name = "txtCi";
            this.txtCi.Size = new System.Drawing.Size(100, 20);
            this.txtCi.TabIndex = 3;
            this.txtCi.TextChanged += new System.EventHandler(this.txtCi_TextChanged);
            // 
            // lblCi
            // 
            this.lblCi.AutoSize = true;
            this.lblCi.Location = new System.Drawing.Point(6, 22);
            this.lblCi.Name = "lblCi";
            this.lblCi.Size = new System.Drawing.Size(16, 13);
            this.lblCi.TabIndex = 2;
            this.lblCi.Text = "Ci";
            // 
            // gbDatos
            // 
            this.gbDatos.Controls.Add(this.lblRolUsuario);
            this.gbDatos.Controls.Add(this.lblRol);
            this.gbDatos.Controls.Add(this.lblIdUsuario);
            this.gbDatos.Controls.Add(this.lblId);
            this.gbDatos.Controls.Add(this.lblNombreUsuario);
            this.gbDatos.Controls.Add(this.lblNombrePersona);
            this.gbDatos.Controls.Add(this.btnCancelar);
            this.gbDatos.Controls.Add(this.btnEliminar);
            this.gbDatos.Controls.Add(this.lblUsuario);
            this.gbDatos.Controls.Add(this.lblNombre);
            this.gbDatos.Location = new System.Drawing.Point(10, 78);
            this.gbDatos.Name = "gbDatos";
            this.gbDatos.Size = new System.Drawing.Size(296, 166);
            this.gbDatos.TabIndex = 1;
            this.gbDatos.TabStop = false;
            this.gbDatos.Text = "Datos";
            // 
            // lblRolUsuario
            // 
            this.lblRolUsuario.AutoSize = true;
            this.lblRolUsuario.Location = new System.Drawing.Point(95, 99);
            this.lblRolUsuario.Name = "lblRolUsuario";
            this.lblRolUsuario.Size = new System.Drawing.Size(37, 13);
            this.lblRolUsuario.TabIndex = 15;
            this.lblRolUsuario.Text = "_____";
            // 
            // lblRol
            // 
            this.lblRol.AutoSize = true;
            this.lblRol.Location = new System.Drawing.Point(6, 99);
            this.lblRol.Name = "lblRol";
            this.lblRol.Size = new System.Drawing.Size(82, 13);
            this.lblRol.TabIndex = 14;
            this.lblRol.Text = "Rol del Usuario:";
            // 
            // lblIdUsuario
            // 
            this.lblIdUsuario.AutoSize = true;
            this.lblIdUsuario.Location = new System.Drawing.Point(92, 75);
            this.lblIdUsuario.Name = "lblIdUsuario";
            this.lblIdUsuario.Size = new System.Drawing.Size(49, 13);
            this.lblIdUsuario.TabIndex = 13;
            this.lblIdUsuario.Text = "_______";
            // 
            // lblId
            // 
            this.lblId.AutoSize = true;
            this.lblId.Location = new System.Drawing.Point(6, 75);
            this.lblId.Name = "lblId";
            this.lblId.Size = new System.Drawing.Size(79, 13);
            this.lblId.TabIndex = 12;
            this.lblId.Text = "ID Del Usuario:";
            // 
            // lblNombreUsuario
            // 
            this.lblNombreUsuario.AutoSize = true;
            this.lblNombreUsuario.Location = new System.Drawing.Point(110, 47);
            this.lblNombreUsuario.Name = "lblNombreUsuario";
            this.lblNombreUsuario.Size = new System.Drawing.Size(31, 13);
            this.lblNombreUsuario.TabIndex = 11;
            this.lblNombreUsuario.Text = "____";
            // 
            // lblNombrePersona
            // 
            this.lblNombrePersona.AutoSize = true;
            this.lblNombrePersona.Location = new System.Drawing.Point(57, 16);
            this.lblNombrePersona.Name = "lblNombrePersona";
            this.lblNombrePersona.Size = new System.Drawing.Size(31, 13);
            this.lblNombrePersona.TabIndex = 10;
            this.lblNombrePersona.Text = "____";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(191, 125);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 8;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.Location = new System.Drawing.Point(29, 125);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(75, 23);
            this.btnEliminar.TabIndex = 9;
            this.btnEliminar.Text = "Eliminar";
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // lblUsuario
            // 
            this.lblUsuario.AutoSize = true;
            this.lblUsuario.Location = new System.Drawing.Point(6, 47);
            this.lblUsuario.Name = "lblUsuario";
            this.lblUsuario.Size = new System.Drawing.Size(101, 13);
            this.lblUsuario.TabIndex = 1;
            this.lblUsuario.Text = "Nombre de Usuario:";
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(6, 16);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(47, 13);
            this.lblNombre.TabIndex = 0;
            this.lblNombre.Text = "Nombre:";
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(616, 401);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(75, 23);
            this.btnSalir.TabIndex = 2;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // gbBusquedas
            // 
            this.gbBusquedas.Controls.Add(this.gbDatos);
            this.gbBusquedas.Controls.Add(this.gbBuscar);
            this.gbBusquedas.Location = new System.Drawing.Point(2, 12);
            this.gbBusquedas.Name = "gbBusquedas";
            this.gbBusquedas.Size = new System.Drawing.Size(332, 277);
            this.gbBusquedas.TabIndex = 3;
            this.gbBusquedas.TabStop = false;
            // 
            // gbGuardar
            // 
            this.gbGuardar.Controls.Add(this.btnGuardar);
            this.gbGuardar.Controls.Add(this.gbGuardarDatos);
            this.gbGuardar.Location = new System.Drawing.Point(340, 12);
            this.gbGuardar.Name = "gbGuardar";
            this.gbGuardar.Size = new System.Drawing.Size(351, 383);
            this.gbGuardar.TabIndex = 4;
            this.gbGuardar.TabStop = false;
            // 
            // btnGuardar
            // 
            this.btnGuardar.Location = new System.Drawing.Point(136, 334);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(75, 23);
            this.btnGuardar.TabIndex = 1;
            this.btnGuardar.Text = "Guardar Usuario";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // gbGuardarDatos
            // 
            this.gbGuardarDatos.Controls.Add(this.lblGuardarApellido2);
            this.gbGuardarDatos.Controls.Add(this.txtGuardarApellido2);
            this.gbGuardarDatos.Controls.Add(this.lblGuardarApellido1);
            this.gbGuardarDatos.Controls.Add(this.txtGuardarApellido1);
            this.gbGuardarDatos.Controls.Add(this.lblGuardarNombre2);
            this.gbGuardarDatos.Controls.Add(this.txtGuardarNombre2);
            this.gbGuardarDatos.Controls.Add(this.lblGuardarRol);
            this.gbGuardarDatos.Controls.Add(this.cbxRol);
            this.gbGuardarDatos.Controls.Add(this.txtConfContrasenia);
            this.gbGuardarDatos.Controls.Add(this.txtContrasenia);
            this.gbGuardarDatos.Controls.Add(this.lblConfContrasenia);
            this.gbGuardarDatos.Controls.Add(this.lblContrasenia);
            this.gbGuardarDatos.Controls.Add(this.txtGuadarUsuario);
            this.gbGuardarDatos.Controls.Add(this.lblGuardarUsuario);
            this.gbGuardarDatos.Controls.Add(this.txtGuardarCi);
            this.gbGuardarDatos.Controls.Add(this.lblGuardarCi);
            this.gbGuardarDatos.Controls.Add(this.lblGuardarNombre1);
            this.gbGuardarDatos.Controls.Add(this.txtGuardarNombre1);
            this.gbGuardarDatos.Location = new System.Drawing.Point(30, 19);
            this.gbGuardarDatos.Name = "gbGuardarDatos";
            this.gbGuardarDatos.Size = new System.Drawing.Size(288, 309);
            this.gbGuardarDatos.TabIndex = 0;
            this.gbGuardarDatos.TabStop = false;
            this.gbGuardarDatos.Text = "Datos";
            this.gbGuardarDatos.Enter += new System.EventHandler(this.gbGuardarDatos_Enter);
            // 
            // lblGuardarRol
            // 
            this.lblGuardarRol.AutoSize = true;
            this.lblGuardarRol.Location = new System.Drawing.Point(16, 237);
            this.lblGuardarRol.Name = "lblGuardarRol";
            this.lblGuardarRol.Size = new System.Drawing.Size(23, 13);
            this.lblGuardarRol.TabIndex = 11;
            this.lblGuardarRol.Text = "Rol";
            // 
            // cbxRol
            // 
            this.cbxRol.FormattingEnabled = true;
            this.cbxRol.Items.AddRange(new object[] {
            "Almacenero",
            "Camionero",
            "Administrador",
            "Conductor"});
            this.cbxRol.Location = new System.Drawing.Point(131, 236);
            this.cbxRol.Name = "cbxRol";
            this.cbxRol.Size = new System.Drawing.Size(121, 21);
            this.cbxRol.TabIndex = 10;
            this.cbxRol.SelectedIndexChanged += new System.EventHandler(this.cbxRol_SelectedIndexChanged);
            // 
            // txtConfContrasenia
            // 
            this.txtConfContrasenia.Location = new System.Drawing.Point(131, 210);
            this.txtConfContrasenia.Name = "txtConfContrasenia";
            this.txtConfContrasenia.Size = new System.Drawing.Size(121, 20);
            this.txtConfContrasenia.TabIndex = 9;
            // 
            // txtContrasenia
            // 
            this.txtContrasenia.Location = new System.Drawing.Point(131, 184);
            this.txtContrasenia.Name = "txtContrasenia";
            this.txtContrasenia.Size = new System.Drawing.Size(121, 20);
            this.txtContrasenia.TabIndex = 8;
            // 
            // lblConfContrasenia
            // 
            this.lblConfContrasenia.AutoSize = true;
            this.lblConfContrasenia.Location = new System.Drawing.Point(16, 213);
            this.lblConfContrasenia.Name = "lblConfContrasenia";
            this.lblConfContrasenia.Size = new System.Drawing.Size(108, 13);
            this.lblConfContrasenia.TabIndex = 7;
            this.lblConfContrasenia.Text = "Confirmar Contraseña";
            // 
            // lblContrasenia
            // 
            this.lblContrasenia.AutoSize = true;
            this.lblContrasenia.Location = new System.Drawing.Point(16, 187);
            this.lblContrasenia.Name = "lblContrasenia";
            this.lblContrasenia.Size = new System.Drawing.Size(61, 13);
            this.lblContrasenia.TabIndex = 6;
            this.lblContrasenia.Text = "Contraseña";
            // 
            // txtGuadarUsuario
            // 
            this.txtGuadarUsuario.Location = new System.Drawing.Point(131, 158);
            this.txtGuadarUsuario.Name = "txtGuadarUsuario";
            this.txtGuadarUsuario.Size = new System.Drawing.Size(121, 20);
            this.txtGuadarUsuario.TabIndex = 5;
            // 
            // lblGuardarUsuario
            // 
            this.lblGuardarUsuario.AutoSize = true;
            this.lblGuardarUsuario.Location = new System.Drawing.Point(16, 161);
            this.lblGuardarUsuario.Name = "lblGuardarUsuario";
            this.lblGuardarUsuario.Size = new System.Drawing.Size(98, 13);
            this.lblGuardarUsuario.TabIndex = 4;
            this.lblGuardarUsuario.Text = "Nombre de Usuario";
            // 
            // txtGuardarCi
            // 
            this.txtGuardarCi.Location = new System.Drawing.Point(131, 28);
            this.txtGuardarCi.Name = "txtGuardarCi";
            this.txtGuardarCi.Size = new System.Drawing.Size(121, 20);
            this.txtGuardarCi.TabIndex = 3;
            // 
            // lblGuardarCi
            // 
            this.lblGuardarCi.AutoSize = true;
            this.lblGuardarCi.Location = new System.Drawing.Point(16, 31);
            this.lblGuardarCi.Name = "lblGuardarCi";
            this.lblGuardarCi.Size = new System.Drawing.Size(40, 13);
            this.lblGuardarCi.TabIndex = 2;
            this.lblGuardarCi.Text = "Cedula";
            // 
            // lblGuardarNombre1
            // 
            this.lblGuardarNombre1.AutoSize = true;
            this.lblGuardarNombre1.Location = new System.Drawing.Point(13, 56);
            this.lblGuardarNombre1.Name = "lblGuardarNombre1";
            this.lblGuardarNombre1.Size = new System.Drawing.Size(79, 13);
            this.lblGuardarNombre1.TabIndex = 1;
            this.lblGuardarNombre1.Text = " Primer Nombre";
            this.lblGuardarNombre1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lblGuardarNombre1.Click += new System.EventHandler(this.lblGuardarNombre1_Click);
            // 
            // txtGuardarNombre1
            // 
            this.txtGuardarNombre1.Location = new System.Drawing.Point(131, 56);
            this.txtGuardarNombre1.Name = "txtGuardarNombre1";
            this.txtGuardarNombre1.Size = new System.Drawing.Size(121, 20);
            this.txtGuardarNombre1.TabIndex = 0;
            // 
            // lblGuardarNombre2
            // 
            this.lblGuardarNombre2.AutoSize = true;
            this.lblGuardarNombre2.Location = new System.Drawing.Point(13, 85);
            this.lblGuardarNombre2.Name = "lblGuardarNombre2";
            this.lblGuardarNombre2.Size = new System.Drawing.Size(93, 13);
            this.lblGuardarNombre2.TabIndex = 13;
            this.lblGuardarNombre2.Text = " Segundo Nombre";
            // 
            // txtGuardarNombre2
            // 
            this.txtGuardarNombre2.Location = new System.Drawing.Point(131, 82);
            this.txtGuardarNombre2.Name = "txtGuardarNombre2";
            this.txtGuardarNombre2.Size = new System.Drawing.Size(121, 20);
            this.txtGuardarNombre2.TabIndex = 12;
            // 
            // lblGuardarApellido1
            // 
            this.lblGuardarApellido1.AutoSize = true;
            this.lblGuardarApellido1.Location = new System.Drawing.Point(16, 111);
            this.lblGuardarApellido1.Name = "lblGuardarApellido1";
            this.lblGuardarApellido1.Size = new System.Drawing.Size(76, 13);
            this.lblGuardarApellido1.TabIndex = 15;
            this.lblGuardarApellido1.Text = "Primer Apellido";
            // 
            // txtGuardarApellido1
            // 
            this.txtGuardarApellido1.Location = new System.Drawing.Point(131, 108);
            this.txtGuardarApellido1.Name = "txtGuardarApellido1";
            this.txtGuardarApellido1.Size = new System.Drawing.Size(121, 20);
            this.txtGuardarApellido1.TabIndex = 14;
            // 
            // lblGuardarApellido2
            // 
            this.lblGuardarApellido2.AutoSize = true;
            this.lblGuardarApellido2.Location = new System.Drawing.Point(16, 136);
            this.lblGuardarApellido2.Name = "lblGuardarApellido2";
            this.lblGuardarApellido2.Size = new System.Drawing.Size(93, 17);
            this.lblGuardarApellido2.TabIndex = 17;
            this.lblGuardarApellido2.Text = "Segundo Apellido";
            this.lblGuardarApellido2.UseCompatibleTextRendering = true;
            // 
            // txtGuardarApellido2
            // 
            this.txtGuardarApellido2.Location = new System.Drawing.Point(131, 132);
            this.txtGuardarApellido2.Name = "txtGuardarApellido2";
            this.txtGuardarApellido2.Size = new System.Drawing.Size(121, 20);
            this.txtGuardarApellido2.TabIndex = 16;
            // 
            // Administrador
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.ClientSize = new System.Drawing.Size(714, 430);
            this.Controls.Add(this.gbGuardar);
            this.Controls.Add(this.gbBusquedas);
            this.Controls.Add(this.btnSalir);
            this.Name = "Administrador";
            this.Text = "Clientes";
            this.Load += new System.EventHandler(this.Clientes_Load);
            this.gbBuscar.ResumeLayout(false);
            this.gbBuscar.PerformLayout();
            this.gbDatos.ResumeLayout(false);
            this.gbDatos.PerformLayout();
            this.gbBusquedas.ResumeLayout(false);
            this.gbGuardar.ResumeLayout(false);
            this.gbGuardarDatos.ResumeLayout(false);
            this.gbGuardarDatos.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbBuscar;
        private System.Windows.Forms.GroupBox gbDatos;
        private System.Windows.Forms.Label lblCi;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.TextBox txtCi;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Label lblUsuario;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Label lblNombreUsuario;
        private System.Windows.Forms.Label lblNombrePersona;
        private System.Windows.Forms.GroupBox gbBusquedas;
        private System.Windows.Forms.GroupBox gbGuardar;
        private System.Windows.Forms.Label lblIdUsuario;
        private System.Windows.Forms.Label lblId;
        private System.Windows.Forms.Label lblRol;
        private System.Windows.Forms.Label lblRolUsuario;
        private System.Windows.Forms.GroupBox gbGuardarDatos;
        private System.Windows.Forms.TextBox txtConfContrasenia;
        private System.Windows.Forms.TextBox txtContrasenia;
        private System.Windows.Forms.Label lblConfContrasenia;
        private System.Windows.Forms.Label lblContrasenia;
        private System.Windows.Forms.TextBox txtGuadarUsuario;
        private System.Windows.Forms.Label lblGuardarUsuario;
        private System.Windows.Forms.TextBox txtGuardarCi;
        private System.Windows.Forms.Label lblGuardarCi;
        private System.Windows.Forms.Label lblGuardarNombre1;
        private System.Windows.Forms.TextBox txtGuardarNombre1;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Label lblGuardarRol;
        private System.Windows.Forms.ComboBox cbxRol;
        private System.Windows.Forms.Label lblGuardarApellido2;
        private System.Windows.Forms.TextBox txtGuardarApellido2;
        private System.Windows.Forms.Label lblGuardarApellido1;
        private System.Windows.Forms.TextBox txtGuardarApellido1;
        private System.Windows.Forms.Label lblGuardarNombre2;
        private System.Windows.Forms.TextBox txtGuardarNombre2;
    }
}