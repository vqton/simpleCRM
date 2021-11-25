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
    public partial class frmTinhThanh : Form
    {
        DataSet ds = new DataSet();
        public frmTinhThanh()
        {
            InitializeComponent();
        }

        private void frmTinhThanh_Load(object sender, EventArgs e)
        {
            gridControl1.DataSource = SQLHelper.LoadData("dv_hanh_chinh");
            gridControl1.Refresh();
        }


    }
}
