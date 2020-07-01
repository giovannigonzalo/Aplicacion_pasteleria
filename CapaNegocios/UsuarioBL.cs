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
    public class UsuarioBL : Interfaces.IUsuario
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
            return datos.TraerDataTable("spListarUsuario");
        }

        public bool Agregar(Usuario usuario)
        {
            DataRow fila = datos.TraerDataRow("spAgregarUsuario", usuario._Nombres, usuario._ApePaterno, usuario._ApeMaterno, usuario._Cargo, usuario._Genero, usuario._Usuario, usuario._Contrasena);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Eliminar(string codusuario)
        {
            DataRow fila = datos.TraerDataRow("spEliminarUsuario", codusuario);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public bool Actualizar(Usuario usuario)
        {
            DataRow fila = datos.TraerDataRow("spActualizarUsuario", usuario._Nombres, usuario._ApePaterno, usuario._ApeMaterno, usuario._Cargo, usuario._Genero, usuario._Usuario, usuario._Contrasena);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }


        public bool Login(CapaEntidades.Usuario usuario)
        {
            DataRow fila = datos.TraerDataRow("splogin",  usuario._Usuario, usuario._Contrasena);
            mensaje = fila["Mensaje"].ToString();
            byte codError = Convert.ToByte(fila["CodError"]);
            if (codError == 0) return true;
            else return false;
        }

        public System.Data.DataTable Buscar(string texto)
        {
            return datos.TraerDataTable("spBuscarUsuario", texto);
        }




    }
}
