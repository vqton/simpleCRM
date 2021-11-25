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
    public partial class frmLoaiDichVuCongTrinh : Form
    {
        public frmLoaiDichVuCongTrinh()
        {
            InitializeComponent();
        }

        private void frmLoaiDichVuCongTrinh_Load(object sender, EventArgs e)
        {
            gridControl1.DataSource = SQLHelper.LoadData("dich_vu_ctrinh");
            gridControl1.Refresh();
        }
    }
}
