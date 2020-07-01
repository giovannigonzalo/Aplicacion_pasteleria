using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;

namespace CapaNegocios.Interfaces
{
    interface IPromocion
    {
         DataTable Listar();
        bool Agregar(Promocion promocion);
        bool Eliminar(string codPromocion);
        bool Actualizar(Promocion promocion);
        DataTable Buscar(string texto);
    }
}
