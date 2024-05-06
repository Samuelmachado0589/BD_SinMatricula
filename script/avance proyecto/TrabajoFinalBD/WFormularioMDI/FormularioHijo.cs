using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace WFormularioMDI
{
    public partial class frmFormularioHijo : Form
    {
        public static frmFormularioHijo Instancia = null;
        public static frmFormularioHijo ventanaUnica()
        {
            if (Instancia == null)
            { 
                Instancia = new frmFormularioHijo();
            }
            return Instancia;
        }

        public frmFormularioHijo()
        {
            InitializeComponent();
        }


        /*
        private void guardarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                if (saveFileDialog1.ShowDialog().Equals(DialogResult.OK))
                {
                    Stream strGuardar = saveFileDialog1.OpenFile();
                    StreamWriter wrtGuardar = new StreamWriter(strGuardar);

                    foreach (string linea in txtContenido.Lines)
                    {
                        wrtGuardar.WriteLine(linea);
                    }
                    wrtGuardar.Close();
                }
            }
            catch (Exception ex)
            {
              MessageBox.Show(ex.Message);  
            }
        }
        */

        private void button1_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string apelllido = txtApellido.Text;    
            Double documento = Convert.ToDouble(txtDocumento.Text);
            Double telefono = Convert.ToDouble(txtTelefono.Text);
            string email = txtCorreo.Text;

            int indiceFila = dgvRegistros.Rows.Add(); 
            dgvRegistros.Rows[indiceFila].Cells[1].Value = nombre; 
            dgvRegistros.Rows[indiceFila].Cells[2].Value = apelllido; 
            dgvRegistros.Rows[indiceFila].Cells[3].Value = telefono;
            dgvRegistros.Rows[indiceFila].Cells[4].Value = email;
            dgvRegistros.Rows[indiceFila].Cells[5].Value = documento;

            txtNombre.Clear();
            txtApellido.Clear();
            txtTelefono.Clear();
            txtDocumento.Clear();
            txtCorreo.Clear();

        }



        private List<string> ObtenerDatosdgv()
        {
            List<string> datos = new List<string>();

            foreach (DataGridViewRow row in dgvRegistros.Rows)
            {
                if (!row.IsNewRow)
                { // Agregar llaves para definir el bloque del condicional
                    string nombre = row.Cells["Column2"].Value?.ToString() ?? string.Empty;
                    string apellido = row.Cells["Column3"].Value?.ToString() ?? string.Empty;
                    string telefono = row.Cells["Column4"].Value?.ToString() ?? string.Empty;
                    string email = row.Cells["Column5"].Value?.ToString() ?? string.Empty;
                    string documento = row.Cells["Column6"].Value?.ToString() ?? string.Empty;

                    string filaFormateada = $"{nombre}, {apellido}, {telefono}, {email}, {documento}";
                    datos.Add(filaFormateada);
                }
            }

            return datos; // Mover esta línea dentro del alcance del método
        }




        private void btnEliminarFila_Click(object sender, EventArgs e)
        {

            if (dgvRegistros.SelectedRows.Count > 0)
            {
                // Obtener el índice de la fila seleccionada
                int indiceFila = dgvRegistros.SelectedRows[0].Index;

                // Eliminar la fila del DataGridView
                dgvRegistros.Rows.RemoveAt(indiceFila);
            }
            else
            {
                MessageBox.Show("Por favor, seleccione una fila para eliminar.");
            }
            
        }

        private void btnTranferirr_Click(object sender, EventArgs e)
        {
            List<string> datosParaTransferir = ObtenerDatosdgv();

            frmHijoReservas frmHijoReservas = new frmHijoReservas();


            frmHijoReservas.AgregarElementosAlListBox(datosParaTransferir);

            frmHijoReservas.Show();
        }
    }
}
