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
    public partial class frmPadre : Form
    {
        public frmPadre()
        {
            InitializeComponent();
            this.IsMdiContainer = true;
        }


        private void modificarRegistroToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pictureBox1.Visible = false;
            frmFormularioHijo frmHijo = frmFormularioHijo.ventanaUnica();
            frmHijo.BringToFront();

            frmHijo.MdiParent = this;
            frmHijo.Show();

        }

        private void elimanarRegistroToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pictureBox1.Visible = false;
            frmFormularioHijo frmHijo = frmFormularioHijo.ventanaUnica();
            frmHijo.BringToFront();
            frmHijo.MdiParent = this;
            frmHijo.Show();
        }



        private void cerrarToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            this.Close();
            
        }

        private void cerrarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form frmPadre = this.ActiveMdiChild;

            if (frmPadre != null)
            {
                frmPadre.Close();
            }
            pictureBox1.Visible = true;
        }

        private void nuevaReservaToolStripMenuItem_Click(object sender, EventArgs e)
        {
          
            pictureBox1.Visible = false;
            frmHijoReservas frmHijoReservas = frmHijoReservas.ventanaUnica();
            frmHijoReservas.BringToFront();

            frmHijoReservas.MdiParent = this;
            frmHijoReservas.Show();

            


        }

        private void verReservaToolStripMenuItem_Click(object sender, EventArgs e)
        {
        

            pictureBox1.Visible = false;
            frmVerRervas frmVerRerva = frmVerRervas.ventanaUnica();
            frmVerRerva.BringToFront();
            frmVerRerva.MdiParent = this;
            frmVerRerva.Show(); 
    
           



        }

        private void modificarToolStripMenuItem_Click(object sender, EventArgs e)
        {
           

            pictureBox1.Visible = false;
            frmModificarReservas frmModificarReservas = frmModificarReservas.ventanaUnica();
            frmModificarReservas.BringToFront();

            frmModificarReservas.MdiParent = this;
            frmModificarReservas.Show();







        }

        private void cerrarToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Form frmHijo = this.ActiveMdiChild;

            if (frmHijo != null)
            {
                frmHijo.Close();
            }
            
            pictureBox1.Visible = true;
        }

        private void cerrarToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            Form frmPadre = this.ActiveMdiChild;

            if (frmPadre != null)
            {
                frmPadre.Close();
            }
            pictureBox1.Visible = true;
        }

        private void calificacionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pictureBox1.Visible = false;
            frmCalificacion frmCalificacion = frmCalificacion.ventanaUnica();
            frmCalificacion.BringToFront();

            frmCalificacion.MdiParent = this;
            frmCalificacion.Show();

        }

        private void comentariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            pictureBox1.Visible = false;
            frmComentario frmComentario = frmComentario.ventanaUnica();
            frmComentario.BringToFront();

            frmComentario.MdiParent = this;
            frmComentario.Show();
        }

        private void cerrarToolStripMenuItem3_Click(object sender, EventArgs e)
        {
            Form frmHijo = this.ActiveMdiChild;

            if (frmHijo != null)
            {
                frmHijo.Close();
            }

            pictureBox1.Visible = true;
        }

        private void cerrarToolStripMenuItem4_Click(object sender, EventArgs e)
        {
            Form frmHijo = this.ActiveMdiChild;

            if (frmHijo != null)
            {
                frmHijo.Close();
            }

            pictureBox1.Visible = true;
        }
    }

   


}
