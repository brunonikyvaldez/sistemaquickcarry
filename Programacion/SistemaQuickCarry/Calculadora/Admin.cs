using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaQuickCarry
{
    class Admin
    {

        protected Int32 _ci;
        protected string _rol;
        protected string _primerNombre;
        protected string _segundoNombre;
        protected string _primerApellido;
        protected string _segundoApellido;
        protected string _usuario;
        protected byte _idUsuario;
        protected ADODB.Connection _conexion;
        protected string _contrasenia;
        public string contrasenia
        {
            set { _contrasenia = value; }
            get { return (_contrasenia); }
        }
        public byte idUsuario
        {
            set { _idUsuario = value; }
            get { return (_idUsuario); }
        }
        public Int32 ci
        {
            set { _ci = value; }
            get { return (_ci); }
        }
        public string primerNombre
        {
            set { _primerNombre = value; }
            get { return (_primerNombre); }
        }
        public string segundoNombre
        {
            set { _segundoNombre = value; }
            get { return (_segundoNombre); }
        }
        public string primerApellido
        {
            set { _primerApellido = value; }
            get { return (_primerApellido); }
        }
        public string segundoApellido   
        {
            set { _segundoApellido = value; }
            get { return (_segundoApellido); }
        }
        public ADODB.Connection conexion
        {
            set { _conexion = value; }
            get { return (_conexion); }
        }
        public string usuario
        {
            set { _usuario = value; }
            get { return (_usuario); }
        }
        public string rol
        {
            set { _rol = value; }
            get { return (_rol); }
        }
        public Admin()
        {
            _ci = 0; // 7-9 digitos
            _primerNombre = "";
            _segundoNombre = "";
            _primerApellido = "";
            _segundoApellido = ""; 
            _usuario = ""; // no mas de 15 caracteres
            _conexion = new ADODB.Connection();
        }
        public byte Buscar()
        {
            string sql;
            ADODB.Recordset rs;
            object filasAfectadas;
            byte resultado = 0; // 0 = encontrado, 1 = conexión cerrada, 2 = error al buscar usuarios, 3 = no encontrado

            if (_conexion.State == 0)
            {
                resultado = 1; // conexión cerrada
            }
            else
            {
                sql = "SELECT Empleado.Usuario, Empleado.IDEmpleado, Empleado.EsAdmin, Empleado.PrimerApellido, Empleado.SegundoApellido, Empleado.PrimerNombre, Empleado.SegundoNombre, " +
                      "(CASE " +
                      "    WHEN ConductorCamion.IDEmpleado IS NOT NULL THEN 'Camionero' " +
                      "    WHEN ConductorCamioneta.IDEmpleado IS NOT NULL THEN 'Conductor' " +
                      "    WHEN Empleado.EsAdmin = 1 THEN 'Administrador'"+
                      "    ELSE 'Almacenero' " +
                      "END) AS Rol " +
                      "FROM Empleado " +
                      "LEFT JOIN ConductorCamion ON Empleado.IDEmpleado = ConductorCamion.IDEmpleado " +
                      "LEFT JOIN ConductorCamioneta ON Empleado.IDEmpleado = ConductorCamioneta.IDEmpleado " +
                      $"WHERE Empleado.CI = {_ci}";
                try
                {
                    rs = _conexion.Execute(sql, out filasAfectadas);

                    if (rs.RecordCount > 0)
                    {
                        _idUsuario = Convert.ToByte(rs.Fields["IDEmpleado"].Value);
                        _primerNombre = Convert.ToString(rs.Fields["PrimerNombre"].Value);
                        Console.WriteLine(_primerNombre);
                        _segundoNombre = Convert.ToString(rs.Fields["SegundoNombre"].Value);
                        Console.WriteLine(_segundoNombre);
                        _primerApellido = Convert.ToString(rs.Fields["PrimerApellido"].Value);
                        Console.WriteLine(_primerApellido);
                        _segundoApellido = Convert.ToString(rs.Fields["SegundoApellido"].Value);
                        Console.WriteLine(_segundoApellido);
                        _usuario = Convert.ToString(rs.Fields["Usuario"].Value);
                        Console.WriteLine(_usuario);
                        _rol = Convert.ToString(rs.Fields["Rol"].Value);
                        Console.WriteLine(_rol);
                        resultado = 0; // encontrado
                    }
                    else
                    {
                        resultado = 3; // no encontrado
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    resultado = 2; // error al buscar usuarios
                }
            }

            return resultado;
        }



        public byte Guardar()
        {
            string sql;
            object filasAfectadas;
            byte resultado = 0;

            if (_conexion.State == 0)
            {
                resultado = 1; // conexión cerrada
            }
            else
            {
                sql = $"INSERT INTO Empleado (CI, Usuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Contrasenia, EsAdmin) " +
                      $"VALUES ({_ci}, '{_usuario}', '{_primerNombre}', '{_segundoNombre}', '{_primerApellido}', '{_segundoApellido}', '{_contrasenia}', " +
                      $"CASE " +
                      $"    WHEN '{_rol}' = 'Camionero' THEN 0 " +
                      $"    WHEN '{_rol}' = 'Conductor' THEN 0 " +
                      $"    WHEN '{_rol}' = 'Almacenero' THEN 0 " +
                      $"    ELSE 1 " +
                      $"END)";

                try
                {
                    _conexion.BeginTrans(); // Iniciar una transacción

                    _conexion.Execute(sql, out filasAfectadas);

                    // Obtén el ID del nuevo usuario (asumiendo que tienes una columna 'IDEmpleado' autoincremental)
                    sql = "SELECT LAST_INSERT_ID() AS ID";
                    ADODB.Recordset rs = _conexion.Execute(sql, out filasAfectadas);

                    if (rs.RecordCount > 0)
                    {
                        _idUsuario = Convert.ToByte(rs.Fields["ID"].Value);
                    }

                    // Agregar a las tablas de ConductorCamion y ConductorCamioneta si es necesario
                    if (_rol == "Camionero")
                    {
                        sql = $"INSERT INTO ConductorCamion (IDEmpleado) VALUES ({_idUsuario})";
                        _conexion.Execute(sql, out filasAfectadas);
                    }
                    else if (_rol == "Conductor")
                    {
                        sql = $"INSERT INTO ConductorCamioneta (IDEmpleado) VALUES ({_idUsuario})";
                        _conexion.Execute(sql, out filasAfectadas);
                    }

                    _conexion.CommitTrans(); // Confirmar la transacción
                }
                catch
                {
                    _conexion.RollbackTrans(); // Revertir la transacción en caso de error
                    resultado = 4; // error al insertar en la tabla
                }
            }

            return resultado;
        }



        public byte Eliminar()
        {
            byte resultado = 0;
            string sql;
            object filasAfectadas;

            if (_conexion.State == 0)
            {
                resultado = 1; // conexión cerrada
            }
            else
            {
                sql = $"DELETE FROM Empleado WHERE IDEmpleado = {_idUsuario}";

                try
                {
                    _conexion.BeginTrans(); // Iniciar una transacción

                    _conexion.Execute(sql, out filasAfectadas);

                    // También puedes definir consultas adicionales para eliminar registros relacionados en otras tablas si es necesario

                    _conexion.CommitTrans(); // Confirmar la transacción
                }
                catch
                {
                    _conexion.RollbackTrans(); // Revertir la transacción en caso de error
                    resultado = 2; // error al eliminar usuario
                }
            }

            return resultado;
        }
    }
}
