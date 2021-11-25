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
    public partial class frmKhachHangKyHopDong : Form
    {
        DataTable dtTinhThanh = new DataTable();
        public frmKhachHangKyHopDong()
        {
            InitializeComponent();
        }
        
      
        void initLoaiContrinh()
        {
            var a = SQLHelper.LoadData("loai_cong_trinh");
            txtLoaiCongtrinh.Properties.DataSource = a;
            txtLoaiCongtrinh.Properties.ValueMember = "loai_cong_trinh";
            txtLoaiCongtrinh.Properties.DisplayMember = "dien_giai";
            txtLoaiCongtrinh.Properties.PopulateColumns();
            txtLoaiCongtrinh.Properties.Columns["ngay_tao"].Visible = false;
            txtLoaiCongtrinh.Properties.Columns["ngay_cap_nhat"].Visible = false;
        }
        void initDichVuCongtrinh()
        {
            var a = SQLHelper.LoadData("dich_vu_ctrinh");
           txtDichVuCongTrinh.Properties.DataSource = a;
            txtDichVuCongTrinh.Properties.ValueMember = "ma_dich_vu";
            txtDichVuCongTrinh.Properties.DisplayMember = "dien_giai";
            txtDichVuCongTrinh.Properties.PopulateColumns();
            txtDichVuCongTrinh.Properties.Columns["ngay_tao"].Visible = false;
            txtDichVuCongTrinh.Properties.Columns["ngay_cap_nhat"].Visible = false;
        }
        void LoadDataTinhThanh()
        {
            dtTinhThanh = SQLHelper.LoadData("dv_hanh_chinh");
        }
        string GenMaKh()
        {
            try
            {
                var s = DateTime.Today.Year.ToString();
                s += cmbXepLoaiKhach.EditValue.ToString();
                s += txtTinhThanh.EditValue.ToString();
                s += txtTenKH.EditValue.ToString().Substring(txtTenKH.EditValue.ToString().Length - txtTenKH.EditValue.ToString().LastIndexOf(' ') - 1);

                return s;
            }
            catch (Exception ex)
            {

                throw;
            }
         
        }
        private void frmKhachHangKyHopDong_Load(object sender, EventArgs e)
        {
            LoadDataTinhThanh();
            initLoaiContrinh();
            initDichVuCongtrinh();
            rdGioiTinh.EditValue = "Nam";
            txtGiatriHD.EditValue = 0;
            cmbXepLoaiKhach.EditValue = "VIP";
            txtNgayHD.EditValue = DateTime.Now;

            txtQuanHuyen.Enabled = false;
            txtPhuongXa.Enabled = false;
            if (dtTinhThanh != null)
            {
                var tinhThanh = from dv_hanh_chinh in dtTinhThanh.AsEnumerable()
                                select new
                                {
                                    ma_tinh = dv_hanh_chinh.Field<String>("ma_tinh")
                                ,
                                    ten_tinh = dv_hanh_chinh.Field<String>("ten_tinh")
                                   ,
                                    uu_tien = dv_hanh_chinh.Field<Int16>("uu_tien")
                                };
                var a = tinhThanh.Distinct().OrderBy(s => s.uu_tien);


                txtTinhThanh.Properties.DataSource = a;
                txtTinhThanh.Properties.ValueMember = "ma_tinh";
                txtTinhThanh.Properties.DisplayMember = "ten_tinh";
                txtTinhThanh.Properties.PopulateColumns();
                txtTinhThanh.Properties.Columns["uu_tien"].Visible = false;
            }
         
        }

        private void txtTinhThanh_EditValueChanged(object sender, EventArgs e)
        {
            txtQuanHuyen.Enabled = true;
            txtPhuongXa.Enabled = false;
            if (dtTinhThanh != null)
            {
                var tinhThanh = (from dv_hanh_chinh in dtTinhThanh.AsEnumerable()
                                where dv_hanh_chinh.Field<String>("ma_tinh") == txtTinhThanh.EditValue.ToString()
                                select new
                                {
                                    ma_quan_huyen = dv_hanh_chinh.Field<String>("ma_quan_huyen"),
                                    ten_quan_huyen = dv_hanh_chinh.Field<String>("ten_quan_huyen"),
                                }).Distinct();
                //-var a = tinhThanh.Where(r =>r.ma_quan_huyen = txtTinhThanh.EditValue).Distinct().OrderBy(s => s.ma_quan_huyen);


                txtQuanHuyen.Properties.DataSource = tinhThanh;
                txtQuanHuyen.Properties.ValueMember = "ma_quan_huyen";
                txtQuanHuyen.Properties.DisplayMember = "ten_quan_huyen";
                txtQuanHuyen.Properties.PopulateColumns();

                }
            }

        private void txtQuanHuyen_EditValueChanged(object sender, EventArgs e)
        {
            txtPhuongXa.Enabled = true;

            if (dtTinhThanh != null)
            {
                var tinhThanh = from dv_hanh_chinh in dtTinhThanh.AsEnumerable()
                                where dv_hanh_chinh.Field<String>("ma_quan_huyen") == txtQuanHuyen.EditValue.ToString()
                                select new
                                {
                                    ma_phuong_xa = dv_hanh_chinh.Field<String>("ma_phuong_xa"),
                                    ten_phuong_xa = dv_hanh_chinh.Field<String>("ten_phuong_xa"),
                                };
                //-var a = tinhThanh.Where(r =>r.ma_quan_huyen = txtTinhThanh.EditValue).Distinct().OrderBy(s => s.ma_quan_huyen);


                txtPhuongXa.Properties.DataSource = tinhThanh;
                txtPhuongXa.Properties.ValueMember = "ma_phuong_xa";
                txtPhuongXa.Properties.DisplayMember = "ten_phuong_xa";
                txtPhuongXa.Properties.PopulateColumns();

            }
        }

        private void textEdit2_EditValueChanged_1(object sender, EventArgs e)
        {

        }

        private void labelControl8_Click(object sender, EventArgs e)
        {

        }

        private void textEdit11_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            var sQuery = " INSERT INTO[dbo].[khach_hang]";
            sQuery += " ([ma_khach_hang]";
            sQuery += " ,[ma_nguon]";
            sQuery += ",[ma_nhom]";
            sQuery += ",[ten_don_vi]";
            sQuery += ",[qui_mo]";
            sQuery += ",[loai_hinh]";
            sQuery += ",[ten_nguoi_lh]";
            sQuery += ",[gioi_tinh]";
            sQuery += ",[email]";
            sQuery += ",[facebook]";
            sQuery += ",[twitter]";
            sQuery += ",[zalo]";
            sQuery += ",[viber]";
            sQuery += ",[linkedin]";
            sQuery += ",[dia_chi]";
            sQuery += ",[phuong_xa]";
            sQuery += ",[quan_huyen]";
            sQuery += ",[tinh_thanh]";
            sQuery += ",[ghi_chu]";
            sQuery += " ,[tiem_nang]";
            sQuery += ",[ngay_tao]";
            sQuery += ",[ngay_cap_nhat]";
            sQuery += " ,[ngay_hop_dong]";
            sQuery += " ,[gia_tri_hd]";
            sQuery += "  ,[cap_do_kh]";
            sQuery += " ,[trang_thai])";
            sQuery += " VALUES (";
            sQuery += "'" + GenMaKh() + "',";
            sQuery += "''"; //,< ma_nguon, nvarchar(10),>
            sQuery += ",''"; //,<ma_nhom, nvarchar(10),>
            sQuery += ",N'" + txtTenKH.EditValue.ToString() + "'"; //,< ten_don_vi, nvarchar(100),>
            sQuery += ",N'" + txtQuiMo.EditValue.ToString() + "'";//,< qui_mo, nvarchar(100),>
            sQuery += ",''"; //,<loai_hinh, nvarchar(100),>
            sQuery += ",N'" + txtLienHe.EditValue.ToString() + "'";//,< ten_nguoi_lh, nvarchar(100),>
            sQuery += ",N'" + rdGioiTinh.EditValue.ToString() + "'";
            sQuery += ",N'" + txtEmail.EditValue.ToString() + "'";//,< email, nvarchar(251),>
            sQuery += ",N'" + txtFaceBook.EditValue.ToString() + "'";//,< email, nvarchar(251),>,<facebook, nvarchar(100),>
            sQuery += ",''"; //,< twitter, nvarchar(100),>
            sQuery += ",N'" + txtZalo.EditValue.ToString() + "'";//,< zalo, nvarchar(100),>
            sQuery += ",N'" + txtViber.EditValue.ToString() + "'";//,< viber, nvarchar(100),>
            sQuery += ",''"; // ,<linkedin, nvarchar(100),>
            sQuery += ",N'" + txtDiaChi.EditValue.ToString() + "'";//,< dia_chi, nvarchar(100),>
            sQuery += ",N'" + txtPhuongXa.EditValue.ToString() + "'";//,< phuong_xa, nvarchar(10),>
            sQuery += ",N'" + txtQuanHuyen.EditValue.ToString() + "'";//,<quan_huyen, nvarchar(10),>
            sQuery += ",N'" + txtTinhThanh.EditValue.ToString() + "'";//,< tinh_thanh, nvarchar(10),>
            sQuery += ",''"; // ,< ghi_chu, nvarchar(256),>
            sQuery += ",''"; // ,< tiem_nang, tinyint,>
            sQuery += ",''"; // ,< ngay_tao, datetime,>
            sQuery += ",''"; // ,< ngay_cap_nhat, datetime,>
            sQuery += ",N'" + txtNgayHD.EditValue.ToString() + "'";//  ngay_hop_dong, datetime,>
            sQuery += ","+txtGiatriHD.EditValue.ToString()+"";//,< gia_tri_hd, money,>txt
            sQuery += ",'" + cmbXepLoaiKhach.EditValue.ToString() + "'";//,< cap_do_kh, nvarchar(10),>
            sQuery += ",'" + ""+ "')";//,< trang_thai, nvarchar(10),>)

            SQLHelper.ExecuteQuery(sQuery);
    }
    }
}
