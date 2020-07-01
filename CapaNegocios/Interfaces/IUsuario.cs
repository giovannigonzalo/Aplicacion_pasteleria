using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;

namespace CapaNegocios.Interfaces
{
    interface  IUsuario
    {
        DataTable Listar();
        bool Agregar(Usuario usuario);
        bool Eliminar(string codUsuario);
        bool Actualizar(Usuario usuario);
        DataTable Buscar(string texto);
        bool Login(Usuario usuario);

    }
}
