using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;

namespace CapaNegocios.Interfaces
{
    interface IProducto
    {
        DataTable Listar();
        bool Agregar(Producto producto);
        bool Eliminar(string codproducto);
        bool Actualizar(Producto producto);
        DataTable Buscar(string texto);





    }
}
