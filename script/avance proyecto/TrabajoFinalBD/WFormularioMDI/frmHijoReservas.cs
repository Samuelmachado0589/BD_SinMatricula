using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFormularioMDI
{
    public partial class frmHijoReservas : Form
    {
        public static frmHijoReservas Instancia = null;
        public static frmHijoReservas ventanaUnica()
        {
            if (Instancia == null)
            {
                Instancia = new frmHijoReservas();
            }
            return Instancia;
        }


        public frmHijoReservas()
        {
            InitializeComponent();
        }

        
        public void AgregarElementosAlListBox(List<string> elementos)
        {
            foreach (var elemento in elementos)
            {
                ltbCliente.Items.Add(elemento);
            }
        }

        

      




    }
}
