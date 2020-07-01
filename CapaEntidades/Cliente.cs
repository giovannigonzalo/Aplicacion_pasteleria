using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
namespace CapaEntidades
{
    [DataContract]
    public class Cliente
    {
        [DataMember]
        public string _CodCliente
        { get; set; }
        [DataMember]
        public string _ApePaterno
        { get; set; }
        [DataMember]
        public string _ApeMaterno
        { get; set; }

        [DataMember]
        public string _Nombres
        { get; set; }

        [DataMember]
        public string _NumDocIdentidad
        { get; set; }

        [DataMember]
        public string _Telefono
        { get; set; }



    }
}
