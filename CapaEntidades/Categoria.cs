using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
namespace CapaEntidades
{
    [DataContract]
      public class Categoria
    {


        [DataMember]
        public string _codCategoria
        { get; set; }

        [DataMember]
        public string _Nombre
        { get; set; }
    }
}
