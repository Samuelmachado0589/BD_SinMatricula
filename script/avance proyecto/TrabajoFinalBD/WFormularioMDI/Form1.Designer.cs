namespace WFormularioMDI
{
    partial class frmPadre
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.nuevoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nuevaReservaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.verReservaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.modificarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.comentariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarToolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
            this.calificacionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarToolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
            this.registroToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.elimanarRegistroToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.modificarRegistroToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarToolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.AccessibleDescription = "";
            this.pictureBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(253)))), ((int)(((byte)(247)))), ((int)(((byte)(228)))));
            this.pictureBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureBox1.Image = global::WFormularioMDI.Properties.Resources._239a8a5a_906e_421d_a732_5644a631b30c;
            this.pictureBox1.Location = new System.Drawing.Point(0, 24);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(877, 531);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 3;
            this.pictureBox1.TabStop = false;
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackgroundImage = global::WFormularioMDI.Properties.Resources.clean_woven_beautiful_soft_fabric_white_abstract_smooth_curve_shape_decorative_fashion_textile_background_photo;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.nuevoToolStripMenuItem,
            this.comentariosToolStripMenuItem,
            this.calificacionToolStripMenuItem,
            this.registroToolStripMenuItem,
            this.cerrarToolStripMenuItem2});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(877, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // nuevoToolStripMenuItem
            // 
            this.nuevoToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.nuevaReservaToolStripMenuItem,
            this.verReservaToolStripMenuItem,
            this.modificarToolStripMenuItem,
            this.cerrarToolStripMenuItem});
            this.nuevoToolStripMenuItem.Name = "nuevoToolStripMenuItem";
            this.nuevoToolStripMenuItem.Size = new System.Drawing.Size(64, 20);
            this.nuevoToolStripMenuItem.Text = "&Reservas";
            // 
            // nuevaReservaToolStripMenuItem
            // 
            this.nuevaReservaToolStripMenuItem.Name = "nuevaReservaToolStripMenuItem";
            this.nuevaReservaToolStripMenuItem.Size = new System.Drawing.Size(227, 22);
            this.nuevaReservaToolStripMenuItem.Text = "&Nueva Reserva";
            this.nuevaReservaToolStripMenuItem.Click += new System.EventHandler(this.nuevaReservaToolStripMenuItem_Click);
            // 
            // verReservaToolStripMenuItem
            // 
            this.verReservaToolStripMenuItem.Name = "verReservaToolStripMenuItem";
            this.verReservaToolStripMenuItem.Size = new System.Drawing.Size(227, 22);
            this.verReservaToolStripMenuItem.Text = "&Ver Reserva";
            this.verReservaToolStripMenuItem.Click += new System.EventHandler(this.verReservaToolStripMenuItem_Click);
            // 
            // modificarToolStripMenuItem
            // 
            this.modificarToolStripMenuItem.Name = "modificarToolStripMenuItem";
            this.modificarToolStripMenuItem.Size = new System.Drawing.Size(227, 22);
            this.modificarToolStripMenuItem.Text = "&Modificar o Cancelar Reserva";
            this.modificarToolStripMenuItem.Click += new System.EventHandler(this.modificarToolStripMenuItem_Click);
            // 
            // cerrarToolStripMenuItem
            // 
            this.cerrarToolStripMenuItem.Name = "cerrarToolStripMenuItem";
            this.cerrarToolStripMenuItem.Size = new System.Drawing.Size(227, 22);
            this.cerrarToolStripMenuItem.Text = "&Cerrar";
            this.cerrarToolStripMenuItem.Click += new System.EventHandler(this.cerrarToolStripMenuItem_Click);
            // 
            // comentariosToolStripMenuItem
            // 
            this.comentariosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cerrarToolStripMenuItem3});
            this.comentariosToolStripMenuItem.Name = "comentariosToolStripMenuItem";
            this.comentariosToolStripMenuItem.Size = new System.Drawing.Size(87, 20);
            this.comentariosToolStripMenuItem.Text = "&Comentarios";
            this.comentariosToolStripMenuItem.Click += new System.EventHandler(this.comentariosToolStripMenuItem_Click);
            // 
            // cerrarToolStripMenuItem3
            // 
            this.cerrarToolStripMenuItem3.Name = "cerrarToolStripMenuItem3";
            this.cerrarToolStripMenuItem3.Size = new System.Drawing.Size(106, 22);
            this.cerrarToolStripMenuItem3.Text = "&Cerrar";
            this.cerrarToolStripMenuItem3.Click += new System.EventHandler(this.cerrarToolStripMenuItem3_Click);
            // 
            // calificacionToolStripMenuItem
            // 
            this.calificacionToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cerrarToolStripMenuItem4});
            this.calificacionToolStripMenuItem.Name = "calificacionToolStripMenuItem";
            this.calificacionToolStripMenuItem.Size = new System.Drawing.Size(81, 20);
            this.calificacionToolStripMenuItem.Text = "&Calificacion";
            this.calificacionToolStripMenuItem.Click += new System.EventHandler(this.calificacionToolStripMenuItem_Click);
            // 
            // cerrarToolStripMenuItem4
            // 
            this.cerrarToolStripMenuItem4.Name = "cerrarToolStripMenuItem4";
            this.cerrarToolStripMenuItem4.Size = new System.Drawing.Size(106, 22);
            this.cerrarToolStripMenuItem4.Text = "&Cerrar";
            this.cerrarToolStripMenuItem4.Click += new System.EventHandler(this.cerrarToolStripMenuItem4_Click);
            // 
            // registroToolStripMenuItem
            // 
            this.registroToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.elimanarRegistroToolStripMenuItem,
            this.modificarRegistroToolStripMenuItem,
            this.cerrarToolStripMenuItem1});
            this.registroToolStripMenuItem.Name = "registroToolStripMenuItem";
            this.registroToolStripMenuItem.Size = new System.Drawing.Size(62, 20);
            this.registroToolStripMenuItem.Text = "&Registro";
            // 
            // elimanarRegistroToolStripMenuItem
            // 
            this.elimanarRegistroToolStripMenuItem.Name = "elimanarRegistroToolStripMenuItem";
            this.elimanarRegistroToolStripMenuItem.Size = new System.Drawing.Size(227, 22);
            this.elimanarRegistroToolStripMenuItem.Text = "&Registro";
            this.elimanarRegistroToolStripMenuItem.Click += new System.EventHandler(this.elimanarRegistroToolStripMenuItem_Click);
            // 
            // modificarRegistroToolStripMenuItem
            // 
            this.modificarRegistroToolStripMenuItem.Name = "modificarRegistroToolStripMenuItem";
            this.modificarRegistroToolStripMenuItem.Size = new System.Drawing.Size(227, 22);
            this.modificarRegistroToolStripMenuItem.Text = "&Modificar o Eliminar Registro";
            this.modificarRegistroToolStripMenuItem.Click += new System.EventHandler(this.modificarRegistroToolStripMenuItem_Click);
            // 
            // cerrarToolStripMenuItem1
            // 
            this.cerrarToolStripMenuItem1.Name = "cerrarToolStripMenuItem1";
            this.cerrarToolStripMenuItem1.Size = new System.Drawing.Size(227, 22);
            this.cerrarToolStripMenuItem1.Text = "&cerrar";
            this.cerrarToolStripMenuItem1.Click += new System.EventHandler(this.cerrarToolStripMenuItem1_Click_1);
            // 
            // cerrarToolStripMenuItem2
            // 
            this.cerrarToolStripMenuItem2.Name = "cerrarToolStripMenuItem2";
            this.cerrarToolStripMenuItem2.Size = new System.Drawing.Size(41, 20);
            this.cerrarToolStripMenuItem2.Text = "&Salir";
            this.cerrarToolStripMenuItem2.Click += new System.EventHandler(this.cerrarToolStripMenuItem2_Click);
            // 
            // frmPadre
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.OldLace;
            this.ClientSize = new System.Drawing.Size(877, 555);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmPadre";
            this.Text = "formulario padre ";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem nuevoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem comentariosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem calificacionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem registroToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem elimanarRegistroToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem modificarRegistroToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cerrarToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem cerrarToolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem nuevaReservaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem verReservaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem modificarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cerrarToolStripMenuItem;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.ToolStripMenuItem cerrarToolStripMenuItem3;
        private System.Windows.Forms.ToolStripMenuItem cerrarToolStripMenuItem4;
    }
}

