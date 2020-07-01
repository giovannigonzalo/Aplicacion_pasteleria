using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
namespace CapaEntidades
{
    [DataContract]
    public class Promocion
    {

        [DataMember]
        public string _codPromocion
        { get; set; }

        [DataMember]
        public string _descripcion
        { get; set; }

        [DataMember]
        public int _stock
        { get; set; }
        [DataMember]
        public double _Precio
        { get; set; }

        [DataMember]
        public double _descuento
        { get; set; }




    }
}
