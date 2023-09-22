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
    public partial class Embarque : Form
    {
        private int n=0;
        public Embarque()
        {
            InitializeComponent();
        }

        private void Embarque_Load(object sender, EventArgs e)
        {
            gbxIds.Enabled = false;
            gbxIds.Visible = false;
        }

        

        private void btnConfirmarDestinos_Click(object sender, EventArgs e)
        {
            if (cbxHasta.SelectedItem != null)
            {
                Console.WriteLine(cbxHasta.SelectedItem.ToString());

                cbxHasta.Enabled = false;
                gbxIds.Enabled = true;
                gbxIds.Visible = true;
                btnConfirmarDestinos.Enabled = false;
            }
            else
            {
                MessageBox.Show("Elige una Ciudad para crear el lote");
            } 
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            cbxHasta.Enabled = true;
            gbxIds.Enabled = false;
            gbxIds.Visible = false;
            btnConfirmarDestinos.Enabled = true;
            dgvEmbarqueLote.Rows.Clear();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            byte IdPaquete = Convert.ToByte((txtIdPaquete.Text));
            string destino = cbxHasta.SelectedItem.ToString();
            Almacenero al = new Almacenero
            {
                conexion = Program.cn,
                ciudadDestinoLote = destino,
                IdPaquete = IdPaquete
            };
            switch (al.Buscar()){
                case 0:
                    n = dgvEmbarqueLote.Rows.Add();
                    dgvEmbarqueLote.Rows[n].Cells[0].Value = al.IdPaquete;
                    dgvEmbarqueLote.Rows[n].Cells[1].Value = al.TipoPaquete;
                    dgvEmbarqueLote.Rows[n].Cells[2].Value = al.ciDestinatario;
                    dgvEmbarqueLote.Rows[n].Cells[3].Value = al.DestinoPaquete;
                    dgvEmbarqueLote.Rows[n].Cells[4].Value = al.ciudadDestinoPaquete;
                    break;
                case 1:
                    MessageBox.Show("Vuelva a iniciar sesion");
                    break;
                case 2:
                    MessageBox.Show("Error al buscar el paquete");
                    break;
                case 3:
                    MessageBox.Show("Este paquete no existe");
                    break;
                case 4:
                    MessageBox.Show("Este paquete no se dirige hacia ese departamento");
                    break;
            }
            al = null;

        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (n != -1) {
                dgvEmbarqueLote.Rows.RemoveAt(n);
            }
        }

        private void dgvEmbarqueLote_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            n = e.RowIndex;
            Console.WriteLine(n);
        }

        private void lblIdPaquete_Click(object sender, EventArgs e)
        {

        }

        private void btnGuardarLote_Click(object sender, EventArgs e)
        {

        }
    }
}
