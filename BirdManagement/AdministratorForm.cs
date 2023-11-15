﻿using BirdManagement;
using BusinessObject.Models;
using Service;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bird_Farm_Shop
{
    public partial class AdministratorForm : Form
    {
        private Form FormChild;
        private int id;
        IAccountService _accountService;
        public AdministratorForm(int id)
        {
            InitializeComponent();
            this.id = id;
            _accountService = new AccountService();
            lbName.Text = _accountService.GetAlll().SingleOrDefault(a => a.Id == id).Customer.Name;
        }

        private void picClose_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Exit Application?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
        #region panelSlide
        private void OpenForm(Form child)
        {
            if (FormChild != null)
            {
                FormChild.Close();
            }
            FormChild = child;
            child.TopLevel = false;
            child.FormBorderStyle = FormBorderStyle.None;
            child.Dock = DockStyle.Fill;
            panelMain.Controls.Add(child);
            panelMain.Tag = child;
            child.BringToFront();
            lbTitle.Text = child.Text;
            child.Show();
        }
        private void customizeDesigning()
        {

            panelSubUser.Visible = false;
        }
        private void hideSubmenu()
        {
            if (panelSubUser.Visible == true)
                panelSubUser.Visible = false;

        }
        private void showSubmenu(Panel submenu)
        {
            if (submenu.Visible == false)
            {
                hideSubmenu();
                submenu.Visible = true;
            }
            else
            {
                submenu.Visible = false;
            }
        }
        #endregion panelSlide
        private void btnProduct_Click(object sender, EventArgs e)
        {
            hideSubmenu();
            OpenForm(new ProductForm());
        }

        private void btnManageOrders_Click(object sender, EventArgs e)
        {
            hideSubmenu();
            OpenForm(new ManageOrdersForm());
        }

        private void btnManageBills_Click(object sender, EventArgs e)
        {
            hideSubmenu();
            OpenForm(new ManageBillsForm());
        }

        private void btnUserSetting_Click(object sender, EventArgs e)
        {
            showSubmenu(panelSubUser);
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            hideSubmenu();
            if (MessageBox.Show("Logout Application?", "Logout", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Hide();
                Login login = new Login();
                login.ShowDialog();
            }

        }

        private void AdministratorForm_Load(object sender, EventArgs e)
        {
            OpenForm(new ProductForm());
        }

        private void btnCreateAcc_Click(object sender, EventArgs e)
        {
            hideSubmenu();
        }

        private void btnUpdateAcc_Click(object sender, EventArgs e)
        {
            hideSubmenu();
        }

        private void btnChangePass_Click(object sender, EventArgs e)
        {
            hideSubmenu();
        }

        private void btnActAccount_Click(object sender, EventArgs e)
        {
            hideSubmenu();
        }
    }
}
