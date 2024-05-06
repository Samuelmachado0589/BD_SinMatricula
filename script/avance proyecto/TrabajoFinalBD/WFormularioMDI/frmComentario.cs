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
    public partial class frmComentario : Form
    {
        public static frmComentario Instancia = null;
        public static frmComentario ventanaUnica()
        {
            if (Instancia == null)
            {
                Instancia = new frmComentario();
            }
            return Instancia;
        }
        public frmComentario()
        {
            InitializeComponent();
        }
    }
}
