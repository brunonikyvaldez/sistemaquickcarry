using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaQuickCarry
{
    class Almacenero
    {
        protected ADODB.Connection _conexion;
        protected byte _idPaquete;
        protected string _CiudadDestinoLote;
        protected string _DestinoPaquete;
        protected string _ciudadDestinoPaquete;
        protected string _tipoPaquete;
        protected int _ciDestinatario;
        protected string _estadoPaquete;

        public ADODB.Connection conexion
        {
            set { _conexion = value; }
            get { return (_conexion); }
        }
        public string ciudadDestinoPaquete {
            set { _ciudadDestinoPaquete = value; }
            get { return _ciudadDestinoPaquete;  }
        }
        public byte IdPaquete
        {
            set { _idPaquete = value; }
            get { return _idPaquete; }
        }

        public string ciudadDestinoLote
        {
            set { _CiudadDestinoLote = value; }
            get { return _CiudadDestinoLote; }
        }

        public string DestinoPaquete
        {
            set { _DestinoPaquete = value; }
            get { return _DestinoPaquete; }
        }

        public string TipoPaquete
        {
            set { _tipoPaquete = value; }
            get { return _tipoPaquete; }
        }

        public int ciDestinatario
        {
            set { _ciDestinatario = value; }
            get { return _ciDestinatario; }
        }

        public string EstadoPaquete
        {
            set { _estadoPaquete = value; }
            get { return _estadoPaquete; }
        }

        public Almacenero()
        {
            _conexion = new ADODB.Connection();
            _ciDestinatario = 12345678;
            _CiudadDestinoLote = null;
            _DestinoPaquete = null;
            _estadoPaquete = "Armado";
            _idPaquete = 0 ;
            _tipoPaquete = null;
        }
        public byte Buscar()
        {
            string sql;
            ADODB.Recordset rs;
            object filasAfectadas;
            byte resultado = 0; // 0 = encontrado, 1 = conexión cerrada, 2 = error al buscar, 3 = no encontrado , 4= no coincide la ciudad de destino con la del lote

            if (_conexion.State == 0)
            {
                resultado = 1; // conexión cerrada
            }
            else
            {
                sql = "SELECT Cedula, TipoPaquete, DireccionDestino, CiudadDestino " +
                 "FROM Paquete " +
                 $"WHERE CodigoDeBarras = {_idPaquete}";

                try
                {
                    rs = _conexion.Execute(sql, out filasAfectadas);

                    if (rs.RecordCount > 0)
                    {
                        // Se encontraron resultados, puedes procesarlos aquí
                        _ciDestinatario = Convert.ToInt32(rs.Fields["Cedula"].Value);
                        _tipoPaquete = Convert.ToString(rs.Fields["TipoPaquete"].Value);
                        _DestinoPaquete = Convert.ToString(rs.Fields["DireccionDestino"].Value);
                        _ciudadDestinoPaquete = Convert.ToString(rs.Fields["CiudadDestino"].Value);

                        // Verifica si la ciudad de destino coincide con la ciudad del lote
                        if (_ciudadDestinoPaquete == _CiudadDestinoLote)
                        {
                            resultado = 0; // encontrado
                        }
                        else
                        {
                            resultado = 4; // no coincide la ciudad de destino con la del lote
                        }
                    }
                    else
                    {
                        resultado = 3; // no encontrado
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    resultado = 2; // error al buscar
                }
            }

            return resultado;
        }
        public byte GuardarPaquete()
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
                try
                {
                    // Obtener la fecha y hora actuales
                    DateTime fechaActual = DateTime.Now;
                    int dia = fechaActual.Day;
                    int mes = fechaActual.Month;
                    int año = fechaActual.Year;

                    sql = $"INSERT INTO Paquete (CodigoDeBarras, TipoPaquete, Cedula, EstadoP, DireccionDestino, CiudadDestino, DiaIP, MesIP, AñoIP) " +
                          $"VALUES ({_idPaquete}, '{_tipoPaquete}', {_ciDestinatario}, 'En Central', '{_DestinoPaquete}', '{_ciudadDestinoPaquete}', " +
                          $"{dia}, {mes}, {año})";

                    try
                    {
                        _conexion.BeginTrans(); // Iniciar una transacción

                        _conexion.Execute(sql, out filasAfectadas);

                        _conexion.CommitTrans(); // Confirmar la transacción
                    }
                    catch
                    {
                        _conexion.RollbackTrans(); // Revertir la transacción en caso de error
                        resultado = 4; // error al insertar en la tabla
                    }
                }catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }

            return resultado;
        }
        
    }
}
