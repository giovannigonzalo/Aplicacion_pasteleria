using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;
namespace CapaNegocios.Interfaces
{
    interface IPedido

    {
        DataTable Listar();
        bool Agregar(Pedido pedido);
        bool Eliminar(string codPedido);
        bool Actualizar(Pedido pedido);
        DataTable Buscar(string texto);





    }
}
