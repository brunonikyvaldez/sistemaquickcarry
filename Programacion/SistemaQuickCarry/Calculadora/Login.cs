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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        { 
            try
            {
                Program.cn.Open("MioDBC",txtUsuario.Text, txtContrasenia.Text);

            }
            catch (Exception ex)
            {
                Console.Write(ex);
                Program.cn.Close();
                MessageBox.Show("Usuario o contraseña incorrectos");
                return;
               
            }
            Program.cn.CursorLocation=ADODB.CursorLocationEnum.adUseClient;//--->La propiedad CursorLocation indica cuál es la memoria que vamos a utilizar para almacenar el resultado de los select.
            Program.DoyPermisos(txtUsuario.Text);                          
            this.Close();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
