using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;

namespace CapaNegocios.Interfaces
{
    interface ICliente
    {
        DataTable Listar();
        bool Agregar(Cliente Cliente);
        bool Eliminar(string CodCliente);
        bool Actualizar(Cliente Cliente);
        DataTable Buscar(string texto);

    }
}
