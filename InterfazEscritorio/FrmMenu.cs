﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InterfazEscritorio
{
    public partial class FrmMenu : Form
    {
        public FrmMenu()
        {
            InitializeComponent();
        }

        private void btnSlide1_Click(object sender, EventArgs e)
        {
            if (MenuVertical.Width == 227)
            {
                MenuVertical.Width = 70;
            }
            else
            {
                MenuVertical.Width = 227;
            }
        }

        private void AbrirFormInPanel(object FormHijo)
        {
            // Se pregunta si existe un panel,si hay se elima
            if (this.panelContenedor.Controls.Count > 0)
            {
                this.panelContenedor.Controls.RemoveAt(0);
            }
            Form fh = FormHijo as Form; //Se crea un formulario con el que le llega
            fh.TopLevel = false; // Con esto se dice que es un formulario secundario
            fh.Dock = DockStyle.Fill; // Se aclopa en todo el panel
            this.panelContenedor.Controls.Add(fh);
            this.panelContenedor.Tag = fh;
            fh.Show();
        }

        private void btnPrograma_Click(object sender, EventArgs e)
        {
            //Se envia en los parámetros el formulario que se quiere abrir
            AbrirFormInPanel(new FrmProgramas());
        }
    }
}