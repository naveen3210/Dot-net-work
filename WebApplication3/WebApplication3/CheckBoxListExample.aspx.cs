﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class CheckBoxListExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
           for (int i = 0; i< CheckBoxList1 .Items.Count; i++)
            {
                if (CheckBoxList1 .Items [i].Selected == true )
                {
                    ListBox1.Items.Add(CheckBoxList1.Items[i].Text.ToString());
                }

            }
        }
    }
}