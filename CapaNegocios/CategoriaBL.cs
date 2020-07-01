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
    public  class CategoriaBL : Interfaces.ICategoria
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
            return datos.TraerDataTable("spListarCategoria");
        }

        public bool Agregar(Categoria categoria)
        {
            DataRow fila = datos.TraerDataRow("spAgregarCategoria", categoria._Nombre);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Eliminar(string codCategoria)
        {
            DataRow fila = datos.TraerDataRow("spEliminarCategoria", codCategoria);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Actualizar(Categoria categoria)
        {
            DataRow fila = datos.TraerDataRow("spActualizarCategoria", categoria._Nombre);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }


        public System.Data.DataTable Buscar(string texto)
        {
            return datos.TraerDataTable("spBuscarProducto", texto);
        }


    }
}
