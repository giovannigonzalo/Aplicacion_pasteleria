using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;

namespace CapaNegocios.Interfaces
{
    interface IAtencion
    {

        DataTable Listar();
        bool Agregar(Atencion atencion);
        //bool Eliminar(string codAtencion);
        //bool Actualizar(Atencion atencion);
        DataTable Buscar(string texto);
    }
}
