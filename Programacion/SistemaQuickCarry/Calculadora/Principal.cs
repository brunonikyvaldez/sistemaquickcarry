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
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
        }

        


        private void menuLogin_Click(object sender, EventArgs e)
        {
            Login frmLogin = new Login();
            frmLogin.MdiParent = this;
            frmLogin.Show();
        }

        private void Principal_Load(object sender, EventArgs e)
        {
            menuAplicaciones.Enabled = false;
            Login frmLogin = new Login();
            frmLogin.MdiParent = this;
            frmLogin.Show();
        }

        private void menuSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }


        private void menuAdmin_Click(object sender, EventArgs e)
        {
            Administrador frmAdministrador = new Administrador();
            frmAdministrador.MdiParent = this;
            frmAdministrador.Show();
        }

        private void menuChofer_Click(object sender, EventArgs e)
        {
            Camioneros frmCamioneros = new Camioneros();
            frmCamioneros.MdiParent = this;
            frmCamioneros.Show();
        }

        private void menuAlmacen_Click(object sender, EventArgs e)
        {

        }

        private void menuDesembarque_Click(object sender, EventArgs e)
        {
            Desembarque frmDesembarque = new Desembarque();
            frmDesembarque.MdiParent = this;
            frmDesembarque.Show(); 
        }

        private void menuEmbarque_Click(object sender, EventArgs e)
        {
            Embarque frmEmbarque = new Embarque();
            frmEmbarque.MdiParent = this;
            frmEmbarque.Show();
        }

        private void menuInventario_Click(object sender, EventArgs e)
        {
            Inventario frmInventario = new Inventario();
            frmInventario.MdiParent = this;
            frmInventario.Show();
        }
    }
}
