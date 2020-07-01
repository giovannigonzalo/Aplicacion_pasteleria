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
    public  class AtencionBL : Interfaces.IAtencion
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
            return datos.TraerDataTable("spListarAtencion");
        }

        public bool Agregar(Atencion   atencion )
        {
            DataRow fila = datos.TraerDataRow("spAgregarAtencion", atencion._codPedido,atencion._CodUsuario,atencion._estado);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        //public bool Eliminar(string codAtencion)
        //{
        //    DataRow fila = datos.TraerDataRow("spEliminarAtencion ", codAtencion);
        //    mensaje = fila["Mensaje"].ToString();
        //    byte codError = Convert.ToByte(fila["CodError"]);
        //    if (codError == 0) return true;
        //    else return false;
        //}

        //public bool Actualizar(Atencion atencion)
        //{
        //    DataRow fila = datos.TraerDataRow("spActualizarAtencion ", atencion._codPedido, atencion._CodUsuario, atencion._estado);
        //    mensaje = fila["Mensaje"].ToString();
        //    byte codError = Convert.ToByte(fila["CodError"]);
        //    if (codError == 0) return true;
        //    else return false;
        //}


        public System.Data.DataTable Buscar(string texto)
        {
            return datos.TraerDataTable("spBuscarAtencion", texto);
        }



    }
}
