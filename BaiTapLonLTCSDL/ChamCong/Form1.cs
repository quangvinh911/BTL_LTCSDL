using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ChamCong
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            DataGridView datagridView = new DataGridView();
            datagridView.Dock = DockStyle.Fill;
            panelDataGridView.Controls.Add(datagridView);
        }


    }
}
