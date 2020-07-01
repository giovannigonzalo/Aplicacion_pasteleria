using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaEntidades;
using System.Data;


namespace CapaNegocios
{
    public class ClienteBL :Interfaces.ICliente
    {
        
        // Llamar a la capa Datos
        Datos datos = new DatosSQL();

        // Declarar una propiedad de lectura para el mensaje del PA
        private string mensaje;
        public string Mensaje
        {
            get { return mensaje; }
        }

        public System.Data.DataTable Listar()
        {
            return datos.TraerDataTable("spListarCliente");
        }

        public bool Agregar(Cliente cliente)
        {
            DataRow fila = datos.TraerDataRow("spAgregarCliente", cliente._ApePaterno,cliente._ApeMaterno,cliente._Nombres,cliente._NumDocIdentidad,cliente._Telefono);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Eliminar(string CodCliente)
        {
            DataRow fila = datos.TraerDataRow("spEliminarCliente", CodCliente);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Actualizar(Cliente cliente)
        {
            DataRow fila = datos.TraerDataRow("spActualizarCliente", cliente._ApePaterno, cliente._ApeMaterno, cliente._Nombres, cliente._NumDocIdentidad, cliente._Telefono);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }


        public System.Data.DataTable Buscar(string texto)
        {
            return datos.TraerDataTable("spBuscarCliente", texto);
        }


    }
}
