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
    public partial class frmCalificacion : Form
    {
        public static frmCalificacion Instancia = null;
        public static frmCalificacion ventanaUnica()
        {
            if (Instancia == null)
            {
                Instancia = new frmCalificacion();
            }
            return Instancia;
        }

        public frmCalificacion()
        {
            InitializeComponent();
        }
    }
}
