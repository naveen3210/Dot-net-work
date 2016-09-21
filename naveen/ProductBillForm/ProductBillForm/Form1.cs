using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProductBillForm
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox_ProductNo_KeyPress(object sender, KeyPressEventArgs e)
        {
            // take only digits
            if (char.IsDigit(e.KeyChar) || e.KeyChar == 8)
            {
                e.Handled = false;
            }
            else
                e.Handled = true;
        }

        private void textBox_ProductName_TextChanged(object sender, EventArgs e)
        {
        }

        private void textBox_ProductName_KeyPress(object sender, KeyPressEventArgs e)
        {
            // take only characters
            if (char.IsLetter(e.KeyChar) || e.KeyChar == 8)
            {
                e.Handled = false;
            }
            else
            {
                e.Handled = true;
            }
        }
        public void billamount()
        {
            if (textBox_Quantity .Text !="" && textBox_ProductRate .Text !="")
            {
                double rate = double.Parse(textBox_ProductRate.Text);
                int qty = int.Parse(textBox_Quantity.Text);
                double billamount = rate * qty;
                textBox_BillAmount.Text = billamount.ToString();
            }else
            {
                MessageBox.Show("Please enter quantity and rate ");
            }
            
        }
        private void textBox_ProductRate_KeyPress(object sender, KeyPressEventArgs e)
        {
            // take only digits
            if (char.IsDigit(e.KeyChar) || e.KeyChar == 8)
            {
                e.Handled = false;
            }
            else
                e.Handled = true;
        }

        private void textBox_Quantity_KeyPress(object sender, KeyPressEventArgs e)
        {
            // take only digits
            if (char.IsDigit(e.KeyChar) || e.KeyChar == 8)
            {
                e.Handled = false;
               
            }
            else
            {
                e.Handled = true;

            }


           // when i press enter
            if (e.KeyChar == 13)
            {
                billamount();

            }
        }

        private void button_Next_Click(object sender, EventArgs e)
        {
            textBox_ProductNo.Clear();
            textBox_ProductName.Clear();
            textBox_ProductRate.Clear();
            textBox_Quantity.Clear();
            textBox_BillAmount.Clear();
            textBox_ProductNo.Focus();
        }

        private void button_Exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}

        //private void button1_Click(object sender, EventArgs e)
        //{

        //}
   