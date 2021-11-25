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
    public partial class frmLoaiKhachHang : Form
    {
        public frmLoaiKhachHang()
        {
            InitializeComponent();
        }

        private void frmLoaiKhachHang_Load(object sender, EventArgs e)
        {
            gridControl1.DataSource = SQLHelper.LoadData("nhom_khach_hang");
            gridControl1.Refresh();
        }
    }
}
