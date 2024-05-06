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
    public partial class frmModificarReservas : Form
    {
        public static frmModificarReservas Instancia = null;
        public static frmModificarReservas ventanaUnica()
        {
            if (Instancia == null)
            {
                Instancia = new frmModificarReservas();
            }
            return Instancia;
        }

        public frmModificarReservas()
        {
            InitializeComponent();
        }
    }
}
