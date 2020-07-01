using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
namespace CapaEntidades
{
    [DataContract]
    public class Atencion
    {
        [DataMember]
        public string _codAtendido
        { get; set; }
        [DataMember]
        public string _codPedido
        { get; set; }
        [DataMember]
        public string _CodUsuario
        { get; set; }

        [DataMember]
        public string _estado
        { get; set; }




    }
}
