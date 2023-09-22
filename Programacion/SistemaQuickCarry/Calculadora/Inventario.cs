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
    public partial class Inventario : Form
    {
        public Inventario()
        {
            InitializeComponent();
        }

        private void Inventario_Load(object sender, EventArgs e)
        {
            txtPerecedero.Enabled = false;
        }

        private void cbxTipoPaquete_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPerecedero.Enabled = cbxTipoPaquete.SelectedItem.ToString().Equals("Perecedero") ? true : false;

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            Almacenero al = new Almacenero();
            al.IdPaquete = Convert.ToByte(txtIdPaquete.Text);
            al.TipoPaquete = cbxTipoPaquete.SelectedItem.ToString().Equals("Perecedero") ? txtPerecedero.Text : cbxTipoPaquete.SelectedItem.ToString();
            al.ciDestinatario = Convert.ToInt32(txtCiDestinatario.Text);
            al.DestinoPaquete = txtDireccionDestino.Text;
            al.ciudadDestinoPaquete = cbxCiudadDestino.SelectedItem.ToString();
            al.conexion = Program.cn; 
            switch (al.GuardarPaquete())
            {
                case 0:
                    MessageBox.Show("Operacion Realizada con exito");
                    break;
                case 1:
                    MessageBox.Show("Debe loguearse manualmente");
                    break;
                case 2:
                    MessageBox.Show("Problema al intentar crear paquete");
                    break;
            }

        }
    }
}
