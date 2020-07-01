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
    public class ProductoBL : Interfaces.IProducto
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
            return datos.TraerDataTable("spListarProducto");
        }

        public bool Agregar(Producto producto)
        {
            DataRow fila = datos.TraerDataRow("spAgregarProducto", producto._Nombres, producto._descripcion, producto._Precio, producto._codCategoria, producto._codPromocion);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Eliminar(string codproducto)
        {
            DataRow fila = datos.TraerDataRow("spEliminarProducto", codproducto);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Actualizar(Producto producto)
        {
            DataRow fila = datos.TraerDataRow("spActualizarProducto", producto._Nombres, producto._descripcion, producto._Precio, producto._codCategoria, producto._codPromocion);
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
