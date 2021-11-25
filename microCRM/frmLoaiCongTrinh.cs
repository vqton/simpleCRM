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
    public partial class frmLoaiCongTrinh : Form
    {
        public frmLoaiCongTrinh()
        {
            InitializeComponent();
        }

        private void frmLoaiCongTrinh_Load(object sender, EventArgs e)
        {
            gridControl1.DataSource = SQLHelper.LoadData("Loai_Cong_Trinh");
            gridControl1.Refresh();
        }
    }
}
