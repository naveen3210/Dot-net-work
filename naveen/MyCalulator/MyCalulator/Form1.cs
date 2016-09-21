using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MyCalulator
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button_add_Click(object sender, EventArgs e)
        {
            int a =int .Parse ( textBox_firstnumber.Text);
            int b = int.Parse(textBox_secondnumber.Text );
            int c = a + b;
            textBox_result.Text = c.ToString();


        }

        private void button_sub_Click(object sender, EventArgs e)
        {
            int a = int.Parse(textBox_firstnumber.Text);
            int b = int.Parse(textBox_secondnumber.Text);
            int c = a - b;
            textBox_result.Text = c.ToString();
        }

        private void button_mul_Click(object sender, EventArgs e)
        {
            int a = int.Parse(textBox_firstnumber.Text);
            int b = int.Parse(textBox_secondnumber.Text);
            int c = a * b;
            textBox_result.Text = c.ToString();
        }

        private void button_div_Click(object sender, EventArgs e)
        {
            int a = int.Parse(textBox_firstnumber.Text);
            int b = int.Parse(textBox_secondnumber.Text);
            int c = a / b;
            textBox_result.Text = c.ToString();
        }

        private void button_rem_Click(object sender, EventArgs e)
        {
            int a = int.Parse(textBox_firstnumber.Text);
            int b = int.Parse(textBox_secondnumber.Text);
            int c = a % b;
            textBox_result.Text = c.ToString();
        }

        private void button_clear_Click(object sender, EventArgs e)
        {
            textBox_firstnumber.Clear();
            textBox_secondnumber.Clear();
            textBox_result.Clear();

            textBox_firstnumber.Focus();
        }

        private void button_exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
