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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void toolStripContainer1_ContentPanel_Load(object sender, EventArgs e)
        {
            
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            frmTinhThanh oTinhThanh = new frmTinhThanh();
            oTinhThanh.Show();
        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            frmLoaiKhachHang oLoaiKhachHang = new frmLoaiKhachHang();
            oLoaiKhachHang.Show();
        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            frmNguonKhachHang oNguonKhachHang = new frmNguonKhachHang();
            oNguonKhachHang.Show();
        }

        private void kênhLiênLạcToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmSocialNetworks oSocialNetworks = new frmSocialNetworks();
            oSocialNetworks.Show();
        }

        private void dvToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLoaiDichVuCongTrinh oLoaiDvCongTrinh = new frmLoaiDichVuCongTrinh();
            oLoaiDvCongTrinh.Show();
        }

        private void vtrToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLoaiCongTrinh oLoaiCongTrinh = new frmLoaiCongTrinh();
            oLoaiCongTrinh.Show();
        }

        private void kháchHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmKhachHang oKhachHang = new frmKhachHang();
             oKhachHang.Show();
        }

        private void toolStripMenuItem9_Click(object sender, EventArgs e)
        {
            frmKhachHangKyHopDong oKhachHangHD = new frmKhachHangKyHopDong();
            oKhachHangHD.Show();
        }
    }
}
