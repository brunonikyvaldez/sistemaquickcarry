using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using ADODB;

namespace SistemaQuickCarry
{
    static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        public static Principal frmPrincipal;
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(frmPrincipal = new Principal());
        }

        public static ADODB.Connection cn = new ADODB.Connection();
        private static Recordset nothing;

        public static void DoyPermisos(String usuario)
        {
            String sql;
            byte rol;
            ADODB.Recordset rs = new ADODB.Recordset();
            object filasAfectadas;
            byte id_usuario;

            frmPrincipal.menuAplicaciones.Enabled = false;
            frmPrincipal.menuAdmin.Enabled = false; //En la propiedad modifiers poner Public
            frmPrincipal.menuChofer.Enabled = false;
            frmPrincipal.menuAlmacen.Enabled = false;

            if (cn.State != 0)
            {
                // sentencia sql
                sql = "select id from Personas where usuario ='" + usuario + "'";
                try
                {
                    rs = cn.Execute(sql, out filasAfectadas);
                }
                catch
                {
                    rs = null;
                    return;
                }
                if (rs.RecordCount > 0)
                {
                    id_usuario = Convert.ToByte(rs.Fields[0].Value);
                    sql = "select rol_id from usuario_rol where persona_id =" + id_usuario;
                } 
                try
                {
                    rs = cn.Execute(sql, out filasAfectadas);
                }
                catch
                {
                    rs = null; //destruir objeto
                    return;
                }
                if (rs.RecordCount > 0)//encontramos rol del usuario
                {
                    rol = Convert.ToByte(rs.Fields[0].Value);
                    switch (rol) 
                    {
                        case 1: //Admin
                            frmPrincipal.menuAplicaciones.Enabled = true;
                            frmPrincipal.menuAdmin.Enabled = true;
                            frmPrincipal.menuLogin.Enabled = false;
                            break;
                        case 2: //Chofer
                            frmPrincipal.menuAplicaciones.Enabled = true;
                            frmPrincipal.menuChofer.Enabled = true;
                            frmPrincipal.menuLogin.Enabled = false;
                            break;
                        case 3: // Almacenero
                            frmPrincipal.menuAplicaciones.Enabled = true;
                            frmPrincipal.menuAlmacen.Enabled = true;
                            frmPrincipal.menuLogin.Enabled = false;
                            break;
                    }//termina switch
                }//termina if (rs.RecordCount > 0)
            }//termina if (cn.State != 0)
            rs = null;
            filasAfectadas = null;
        }//termina DoyPermisos
    }
}
