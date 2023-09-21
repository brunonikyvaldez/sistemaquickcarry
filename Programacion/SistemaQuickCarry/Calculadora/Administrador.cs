using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SistemaQuickCarry
{
    public partial class Administrador : Form
    {
        public Administrador()
        {
            InitializeComponent();
        }

        private void Clientes_Load(object sender, EventArgs e)
        {
            gbDatos.Visible = false;
            Admin c = new Admin();

            c.conexion = Program.cn;
            byte resultado = c.fetchRoles();

            switch (resultado)
            {
                case 0:
                    foreach (string item in c.listaRoles)
                    {
                        cbxRol.Items.Add(item);
                    }
                    break;
                case 1:
                    MessageBox.Show("Inicie Sesion Nuevamente");
                    break;
                case 2:
                    MessageBox.Show("Error al Importar Roles");
                    break;
            }
            c = null;

        }
        
        private void btnBuscar_Click(object sender, EventArgs e)
        {
            Admin c = new Admin();
            Int32 ci;
            c.conexion = Program.cn;
            DialogResult respuesta;
            if(!Int32.TryParse(txtCi.Text,out ci))
            {
                MessageBox.Show("La CI debe ser solo numérica");
            }
            else
            {
                c.ci = ci;
                switch (c.Buscar())
                {
                    case 0: //Encontró
                        gbBuscar.Enabled = false;
                        gbDatos.Visible = true;
                        btnEliminar.Enabled = true;
                        lblNombrePersona.Text = c.nombre;
                        lblNombreUsuario.Text = c.usuario;
                        lblIdUsuario.Text = Convert.ToString(c.idUsuario);
                        lblRolUsuario.Text = c.nombreRol;
                        break;
                    case 1: //Conexión cerrada
                        MessageBox.Show("Debe loguearse manualmente");
                        break;
                    case 2: //Error al buscar cliente
                        MessageBox.Show("Error al buscar datos");
                        break;
                    case 3: //No encontré
                        respuesta = MessageBox.Show("No se encontro ese usuario");
                        break;
                    case 4: //Error al buscar 
                        MessageBox.Show("Error al buscar los datos del usuario");
                        break;
                }//switch
            }//else
            c = null; //Destruyo el objeto de la clase cliente
        }//btnBuscar_click

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            Int32 ci;
            DialogResult respuesta;
            Admin c = new Admin();
            if(!Int32.TryParse(txtCi.Text, out ci))
            {
                MessageBox.Show("CI debe ser numérica");
            }
            else
            {
                c.conexion = Program.cn;
                c.idUsuario=Convert.ToByte(lblIdUsuario.Text);
                respuesta = MessageBox.Show("¿Está seguro?", "Eliminar Usuario", MessageBoxButtons.YesNo);
                if (respuesta == DialogResult.Yes)
                {
                    switch (c.Eliminar())
                    {
                        case 0: gbBuscar.Enabled = true;
                            gbDatos.Visible = false;
                            break;
                        case 1: MessageBox.Show("Debe loguearse nuevamente");
                            break;
                        default:MessageBox.Show("Hubo errores al efectuar la operación, reintente.");
                            break;
                    }
                }
                c = null;
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            Admin c = new Admin();
            Int32 ci;
            c.conexion = Program.cn;
            DialogResult respuesta;
            if (!Int32.TryParse(txtGuardarCi.Text, out ci))
            {
                MessageBox.Show("La CI debe ser solo numérica");
            }else if (txtContrasenia.Text != txtConfContrasenia.Text)
            {
                MessageBox.Show("Las contraseñas no son iguales");
            }
            else
            {
                c.nombre = txtGuardarNombre.Text;
                c.ci = Convert.ToInt32(txtGuardarCi.Text);
                c.contrasenia = txtConfContrasenia.Text;
                c.usuario = txtGuadarUsuario.Text;
                int index = cbxRol.SelectedIndex + 1 ;
                c.idRol = (byte)index;
                switch (c.Guardar())
                {
                    case 0:
                        MessageBox.Show("Operacion Realizada con exito");
                        break;
                    case 1:
                        MessageBox.Show("Debe loguearse manualmente");
                        break;
                    case 2:
                        MessageBox.Show("Problema al intentar crear usuario");
                        break;
                    case 3:
                        MessageBox.Show("Error al tratar de dar permisos");
                        break;
                    case 4:
                        MessageBox.Show("Error con la id del usuario generada");
                        break;
                }
            }

        }
    }
}
