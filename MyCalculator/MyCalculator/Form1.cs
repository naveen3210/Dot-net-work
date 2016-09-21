using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MyCalculator
{
    
    public partial class Form1 : Form
    {
        Mathematical.MathematicalOperation obj = new Mathematical.MathematicalOperation();

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int r = obj.add(int.Parse(textBox1.Text), int.Parse(textBox2.Text));
            textBox3.Text = r.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int r = obj.sub(int.Parse(textBox1.Text), int.Parse(textBox2.Text));
            textBox3.Text = r.ToString();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            int r = obj.mul(int.Parse(textBox1.Text), int.Parse(textBox2.Text));
            textBox3.Text = r.ToString();

        }

        private void button5_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox1.Focus();
        }
    }
}
