using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
namespace CapaEntidades
{
     [DataContract]
    public  class Pedido
    {

         [DataMember]
         public string _codPedido 
         { get; set; }

         [DataMember]
         public DateTime _FechaPedido
         { get; set; }

         [DataMember]
         public DateTime _Fechaentrega
         { get; set; }
         [DataMember]
         public int _cantidad
         { get; set; }
         [DataMember]
         public string _codProducto
         { get; set; }
         
         [DataMember]
         public string _Direccion
         { get; set; }


         [DataMember]
         public string _CodCliente 
         { get; set; }
         


    }
}
