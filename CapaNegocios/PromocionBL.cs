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
  public  class PromocionBL:Interfaces.IPromocion
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
            return datos.TraerDataTable("spListarPromocion");
        }

        public bool Agregar(Promocion promocion)
        {
            DataRow fila = datos.TraerDataRow("spAgregarPromocion", promocion._descripcion,promocion._stock,promocion._descuento);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Eliminar(string codPromocion)
        {
            DataRow fila = datos.TraerDataRow("spEliminarPromocion", codPromocion);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Actualizar(Promocion promocion)
        {
            DataRow fila = datos.TraerDataRow("spActualizarPromocion", promocion._descripcion, promocion._stock, promocion._descuento);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }


        public System.Data.DataTable Buscar(string texto)
        {
            return datos.TraerDataTable("spBuscarPromocion", texto);
        }

    }
}
