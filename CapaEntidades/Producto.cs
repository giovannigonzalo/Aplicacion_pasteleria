using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
namespace CapaEntidades
{
     [DataContract]
      public class Producto
    {
        [DataMember]
         public string _codProducto
        { get; set; }

        [DataMember]
        public string _Nombres
        { get; set; }

        [DataMember]
        public string _descripcion
        { get; set; }

        [DataMember]
        public  double _Precio 
        { get; set; }

        [DataMember]
        public string _codCategoria
        { get; set; }
        [DataMember]
        public string _codPromocion
        { get; set; }



    }
}
