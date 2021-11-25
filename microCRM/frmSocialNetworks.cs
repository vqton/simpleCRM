using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace microCRM
{
    public partial class frmSocialNetworks : Form
    {
        public frmSocialNetworks()
        {
            InitializeComponent();
        }

        private void frmSocialNetworks_Load(object sender, EventArgs e)
        {
            gridControl1.DataSource =  SQLHelper.LoadData("mang_xa_hoi");
            gridControl1.RefreshDataSource();
        }
    }
}
