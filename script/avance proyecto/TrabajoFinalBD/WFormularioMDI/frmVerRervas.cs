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
    public partial class frmVerRervas : Form
    {
        public static frmVerRervas Instancia = null;
        public static frmVerRervas ventanaUnica()
        {
            if (Instancia == null)
            {
                Instancia = new frmVerRervas();
            }
            return Instancia;
        }

        public frmVerRervas()
        {
            InitializeComponent();
        }
    }
}
