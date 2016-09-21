namespace ProductBillForm
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.button5 = new System.Windows.Forms.Button();
            this.button_Next = new System.Windows.Forms.Button();
            this.button_Exit = new System.Windows.Forms.Button();
            this.textBox_ProductNo = new System.Windows.Forms.TextBox();
            this.textBox_ProductName = new System.Windows.Forms.TextBox();
            this.textBox_ProductRate = new System.Windows.Forms.TextBox();
            this.textBox_Quantity = new System.Windows.Forms.TextBox();
            this.textBox_BillAmount = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(50, 60);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(198, 36);
            this.button1.TabIndex = 0;
            this.button1.Text = "Product No.";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(50, 122);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(198, 42);
            this.button2.TabIndex = 1;
            this.button2.Text = "Product Name";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.Location = new System.Drawing.Point(50, 190);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(198, 36);
            this.button3.TabIndex = 2;
            this.button3.Text = "Product Rate";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.Location = new System.Drawing.Point(85, 252);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(163, 36);
            this.button4.TabIndex = 3;
            this.button4.Text = "Quantity";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(193, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(108, 20);
            this.label1.TabIndex = 4;
            this.label1.Text = "Product Bill";
            // 
            // button5
            // 
            this.button5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5.Location = new System.Drawing.Point(85, 314);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(163, 36);
            this.button5.TabIndex = 5;
            this.button5.Text = "Bill Amount";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button_Next
            // 
            this.button_Next.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_Next.Location = new System.Drawing.Point(130, 400);
            this.button_Next.Name = "button_Next";
            this.button_Next.Size = new System.Drawing.Size(131, 36);
            this.button_Next.TabIndex = 6;
            this.button_Next.Text = "Next";
            this.button_Next.UseVisualStyleBackColor = true;
            this.button_Next.Click += new System.EventHandler(this.button_Next_Click);
            // 
            // button_Exit
            // 
            this.button_Exit.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_Exit.Location = new System.Drawing.Point(354, 400);
            this.button_Exit.Name = "button_Exit";
            this.button_Exit.Size = new System.Drawing.Size(131, 36);
            this.button_Exit.TabIndex = 7;
            this.button_Exit.Text = "Exit";
            this.button_Exit.UseVisualStyleBackColor = true;
            this.button_Exit.Click += new System.EventHandler(this.button_Exit_Click);
            // 
            // textBox_ProductNo
            // 
            this.textBox_ProductNo.Location = new System.Drawing.Point(331, 60);
            this.textBox_ProductNo.Name = "textBox_ProductNo";
            this.textBox_ProductNo.Size = new System.Drawing.Size(208, 22);
            this.textBox_ProductNo.TabIndex = 8;
            this.textBox_ProductNo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.textBox_ProductNo_KeyPress);
            // 
            // textBox_ProductName
            // 
            this.textBox_ProductName.Location = new System.Drawing.Point(331, 123);
            this.textBox_ProductName.Name = "textBox_ProductName";
            this.textBox_ProductName.Size = new System.Drawing.Size(208, 22);
            this.textBox_ProductName.TabIndex = 9;
            this.textBox_ProductName.TextChanged += new System.EventHandler(this.textBox_ProductName_TextChanged);
            this.textBox_ProductName.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.textBox_ProductName_KeyPress);
            // 
            // textBox_ProductRate
            // 
            this.textBox_ProductRate.Location = new System.Drawing.Point(331, 186);
            this.textBox_ProductRate.Name = "textBox_ProductRate";
            this.textBox_ProductRate.Size = new System.Drawing.Size(208, 22);
            this.textBox_ProductRate.TabIndex = 10;
            this.textBox_ProductRate.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.textBox_ProductRate_KeyPress);
            // 
            // textBox_Quantity
            // 
            this.textBox_Quantity.Location = new System.Drawing.Point(331, 249);
            this.textBox_Quantity.Name = "textBox_Quantity";
            this.textBox_Quantity.Size = new System.Drawing.Size(208, 22);
            this.textBox_Quantity.TabIndex = 11;
            this.textBox_Quantity.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.textBox_Quantity_KeyPress);
            // 
            // textBox_BillAmount
            // 
            this.textBox_BillAmount.Enabled = false;
            this.textBox_BillAmount.Location = new System.Drawing.Point(331, 312);
            this.textBox_BillAmount.Name = "textBox_BillAmount";
            this.textBox_BillAmount.Size = new System.Drawing.Size(208, 22);
            this.textBox_BillAmount.TabIndex = 12;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(682, 524);
            this.Controls.Add(this.textBox_BillAmount);
            this.Controls.Add(this.textBox_Quantity);
            this.Controls.Add(this.textBox_ProductRate);
            this.Controls.Add(this.textBox_ProductName);
            this.Controls.Add(this.textBox_ProductNo);
            this.Controls.Add(this.button_Exit);
            this.Controls.Add(this.button_Next);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button_Next;
        private System.Windows.Forms.Button button_Exit;
        private System.Windows.Forms.TextBox textBox_ProductNo;
        private System.Windows.Forms.TextBox textBox_ProductName;
        private System.Windows.Forms.TextBox textBox_ProductRate;
        private System.Windows.Forms.TextBox textBox_Quantity;
        private System.Windows.Forms.TextBox textBox_BillAmount;
    }
}

