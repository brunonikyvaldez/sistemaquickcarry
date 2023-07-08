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
        protected string _nombre;
        protected string _usuario;
        protected byte _idUsuario;
        protected ADODB.Connection _conexion;
        protected byte _idRol;
        protected string _nombreRol;
        protected string _contrasenia;
        protected List<string> _listaRoles;
        public List<string> listaRoles
        {
            set { _listaRoles = value; }
            get { return (_listaRoles); }
        }
        public string contrasenia
        {
            set { _contrasenia = value; }
            get { return (_contrasenia); }
        }
        public byte idRol
        {
            set { _idRol = value; }
            get { return (_idRol); }
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
        public string nombre
        {
            set { _nombre = value; }
            get { return (_nombre); }
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
        public string nombreRol
        {
            set { _nombreRol = value; }
            get { return (_nombreRol); }
        }
        public Admin()
        {
            _ci = 0;
            _nombre = "";
            _usuario = "";
            _conexion = new ADODB.Connection();
            _listaRoles = new List<string>();
        }
        public byte Buscar()
        {
            string sql;
            ADODB.Recordset rs;
            object filasAfectadas;
            byte resultado = 0; //0=encontré,1=conexión cerrada,2=error al buscar clientes,3=no encontré,4=error al bucar en tabla 
            if (_conexion.State == 0)
            {
                resultado = 1; //conexión cerrada
            }
            else
            {
                sql = "Select nombre from Personas where ci=" + _ci;
                try
                {
                    rs = _conexion.Execute(sql, out filasAfectadas);
                }
                catch
                {
                    return (2);
                }
                if (rs.RecordCount == 0)
                {
                    resultado = 3;
                }
                else
                {
                    _nombre = Convert.ToString(rs.Fields[0].Value);
                    sql = "Select usuario from Personas where ci="+_ci;
                    try
                    {
                        rs = _conexion.Execute(sql, out filasAfectadas);
                    }
                    catch
                    {
                        return 4;
                    }
                    _usuario= Convert.ToString(rs.Fields[0].Value);
                    sql="Select id from Personas where ci="+ci;
                    try 
                    {
                        rs = _conexion.Execute(sql,out filasAfectadas);
                    }
                    catch
                    {
                        return 4;
                    }
                    _idUsuario = Convert.ToByte(rs.Fields[0].Value);
                    sql = "Select rol_id from usuario_rol where persona_id=" +_idUsuario;
                    try
                    {
                        rs = _conexion.Execute(sql, out filasAfectadas);
                    }
                    catch
                    {
                        return 4;
                    }
                    _idRol = Convert.ToByte(rs.Fields[0].Value);
                    sql = "Select nombre from Roles where id=" + _idRol;
                    try
                    {
                        rs = _conexion.Execute(sql, out filasAfectadas);
                    }
                    catch
                    {
                        return 4;
                    }
                    _nombreRol = Convert.ToString(rs.Fields[0].Value);
                }
                rs = null;
                filasAfectadas = null;
            }
            return (resultado);
        }
        public byte fetchRoles()
        {
            string sql;
            ADODB.Recordset rs;
            object filasAfectadas;
            byte resultado = 0;

            if (_conexion.State == 0)
            {
                resultado = 1;
            }
            else
            {
                sql = "SELECT nombre FROM Roles WHERE id > 0";
                try
                {
                    rs = _conexion.Execute(sql, out filasAfectadas);

                    if (!rs.EOF)  // Verificar si el Recordset no está vacío
                    {
                        rs.MoveFirst();  // Mover el cursor al primer registro

                        while (!rs.EOF)  // Iterar mientras no se alcance el final del Recordset
                        {
                            _listaRoles.Add(rs.Fields["nombre"].Value.ToString());

                            rs.MoveNext();  // Mover al siguiente registro
                        }
                    }
                }
                catch
                {
                    return 3;
                }
            }

            rs = null;
            return resultado;
        }

        public byte Guardar()
        {
            string sql;
            object filasAfectadas;
            ADODB.Recordset rs; 
            byte resultado = 0;
            if (_conexion.State == 0)
            {
                resultado = 1;
            }
            else
            {//start transaction
                sql = "insert into Personas (nombre,ci,usuario) values('" + _nombre + "','" + _ci + "','"+_usuario+"')";
                try
                {
                    rs= _conexion.Execute(sql, out filasAfectadas);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Excepción capturada: " + ex.ToString());
                    return (2);

                }
                sql = "select id from Personas where ci =" + _ci;
                try
                {
                    rs = _conexion.Execute(sql, out filasAfectadas);
                }
                catch
                {
                    return 3;
                }
                _idUsuario = Convert.ToByte(rs.Fields[0].Value);
                sql = "insert into usuario_rol (persona_id,rol_id) values("+_idUsuario+","+_idRol+")";
                try
                {
                    rs = _conexion.Execute(sql, out filasAfectadas);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Excepción capturada: " + ex.ToString());
                    Console.WriteLine(idRol);
                    return (4);
                }
                sql = "CREATE USER " + _usuario + " IDENTIFIED BY '" + _contrasenia + "'";
                try
                {
                    _conexion.Execute(sql, out filasAfectadas);
                }
                catch(Exception ex)
                {
                    Console.WriteLine("Excepción capturada: " + ex.ToString());
                    return 3;
                }
                sql = "grant select,update,insert,delete on *.* to " + _usuario;
                try
                {
                    _conexion.Execute(sql, out filasAfectadas);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Excepción capturada: " + ex.ToString());
                    return 3;
                }

                filasAfectadas = null;
            }
            return (resultado);
        }
        public byte Eliminar()
        {
            byte resultado = 0;
            string sql;
            object filasAfectadas;
            if (_conexion.State == 0)
            {
                resultado = 1;
            }
            else
            {
                sql = "delete from Personas where id=" + _idUsuario;
                try
                {
                    _conexion.Execute(sql, out filasAfectadas);
                }
                catch
                {
                    return (2);
                }
                sql = "delete from usuario_roles where persona_id" + _idUsuario;
                try
                {
                    _conexion.Execute(sql, out filasAfectadas);
                }
                catch
                {
                    return (3);
                }
                
                filasAfectadas = null;

            }
            return (resultado);
        }
    }
}
