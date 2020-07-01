using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;

namespace CapaNegocios.Interfaces
{
    interface ICategoria
    {


        DataTable Listar();
        bool Agregar(Categoria categoria);
        bool Eliminar(string codCategoria);
        bool Actualizar(Categoria categoria);
        DataTable Buscar(string texto);



    }
}
