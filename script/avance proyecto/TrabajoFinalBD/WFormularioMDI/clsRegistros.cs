using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFormularioMDI
{
    public class clsRegistros
    {

        private int ID_Cliente;
        private string Nombre;
        private string Apellido;
        private string Email;
        private int Telefono;
        private int Documento;

        public clsRegistros(string nombre, string apellido, string email , int telefono, int documento)
        {
            this.Nombre = nombre;
            this.Apellido = apellido;
            this.Email = email;
            this.Telefono = telefono;   
            this.Documento = documento;

        }

        public string Guardar_Registro()
        {
            string Registro = ($"nombre: {this.Nombre} - Apellido: {this.Apellido} - Email: {this.Email} - Telefono: {this.Telefono} - Documento{this.Documento}. ");

            return Registro;
        
        }
    }
}
