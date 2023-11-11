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

        public static void DoyPermisos(string usuario)
        {
            string sql;
            ADODB.Recordset rs = new ADODB.Recordset();
            object filasAfectadas;
            byte id_usuario;

            frmPrincipal.menuAplicaciones.Enabled = false;
            frmPrincipal.menuAdmin.Enabled = false;
            frmPrincipal.menuChofer.Enabled = false;
            frmPrincipal.menuAlmacen.Enabled = false;

            if (cn.State != 0)
            {
                // Sentencia SQL para obtener el ID del empleado, su rol y su contraseña
                sql = "SELECT Empleado.IDEmpleado, Empleado.EsAdmin, " +
                    "CASE " +
                    "    WHEN ConductorCamion.IDEmpleado IS NOT NULL THEN 'Chofer' " +
                    "    WHEN ConductorCamioneta.IDEmpleado IS NOT NULL THEN 'Chofer' " +
                    "    ELSE 'Almacenero' " +
                    "END AS Rol " +
                    "FROM Empleado " +
                    "LEFT JOIN ConductorCamion ON Empleado.IDEmpleado = ConductorCamion.IDEmpleado " +
                    "LEFT JOIN ConductorCamioneta ON Empleado.IDEmpleado = ConductorCamioneta.IDEmpleado " +
                    $"WHERE Empleado.Usuario = '{usuario}'";

                try
                {
                    rs = cn.Execute(sql, out filasAfectadas);
                }
                catch (Exception ex)
                {
                    Console.Write(ex);
                    rs = null;
                    return;
                }

                if (rs.RecordCount > 0)
                {
                    id_usuario = Convert.ToByte(rs.Fields[0].Value);
                    bool esAdmin = Convert.ToBoolean(rs.Fields[1].Value);
                    string rol = rs.Fields[2].Value.ToString();




                    rs.Close(); // Cerrar el recordset

                    // No se realiza ninguna comparación de contraseñas

                    if (esAdmin)
                    {
                        frmPrincipal.menuAplicaciones.Enabled = true;
                        frmPrincipal.menuAdmin.Enabled = true;
                        frmPrincipal.menuLogin.Enabled = false;
                    }
                    else
                    {
                        // No es administrador, determina el rol y habilita los menús correspondientes
                        switch (rol)
                        {
                            case "Chofer":
                                frmPrincipal.menuAplicaciones.Enabled = true;
                                frmPrincipal.menuChofer.Enabled = true;
                                frmPrincipal.menuLogin.Enabled = false;
                                break;
                            case "Almacenero":
                                frmPrincipal.menuAplicaciones.Enabled = true;
                                frmPrincipal.menuAlmacen.Enabled = true;
                                frmPrincipal.menuLogin.Enabled = false;
                                break;
                            default:
                                // Puedes manejar otros roles u opciones aquí si es necesario
                                break;
                        }
                    }
                }
            }
        }
    }
}

