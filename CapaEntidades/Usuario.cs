using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Runtime.Serialization;

namespace CapaEntidades
{
     [DataContract]
    public class Usuario
    {
        // Mapeado de los campos de la tabla  Alumno
        [DataMember]
         public string _CodUsuario
        { get; set; }

        [DataMember]
        public string _Nombres 
        { get; set; }

        [DataMember]
        public string _ApePaterno
        { get; set; }

        [DataMember]
        public string _ApeMaterno
        { get; set; }

        [DataMember]
        public string _Cargo
        { get; set; }
        [DataMember]
        public string _Genero
        { get; set; }


        [DataMember]
        public string _Usuario
        { get; set; }

        [DataMember]
        public string _Contrasena
        { get; set; }

    }
}
