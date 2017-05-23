using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using BUS;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;
namespace ChamCong
{
    public partial class Form1 : Form
    {
        CongnhanBUS cnb;
        public Form1()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            DataGridView datagridView = new DataGridView();
            datagridView.Dock = DockStyle.Fill;
            panelDataGridView.Controls.Add(datagridView);
        }

        private void btLoadCongnhan_Click(object sender, EventArgs e)
        {
            dgvLoadcn.DataSource = new CongnhanBUS().ViewCongNhan("SELECT *FROM CongNhan,ChucVu WHERE CongNhan.MaCV=ChucVu.MaCV").ToList();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            cnb = new CongnhanBUS();
        }

        private void dgvLoadcn_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaCN_CN.Text = dgvLoadcn.CurrentRow.Cells[0].Value.ToString();
            txtTen.Text = dgvLoadcn.CurrentRow.Cells[1].Value.ToString();
            txtHo.Text = dgvLoadcn.CurrentRow.Cells[2].Value.ToString();
            dtTuyendung.Value = (DateTime)dgvLoadcn.CurrentRow.Cells[16].Value;
            cbChucvu.Text= dgvLoadcn.CurrentRow.Cells[20].Value.ToString();
            txtSDT.Text = dgvLoadcn.CurrentRow.Cells[13].Value.ToString();
            cbGioitinh.Text = dgvLoadcn.CurrentRow.Cells[3].Value.ToString();
            txtNoilamviec.Text = dgvLoadcn.CurrentRow.Cells[17].Value.ToString();
            txtEmail.Text = dgvLoadcn.CurrentRow.Cells[14].Value.ToString();
            dtNgaysinh.Value = (DateTime)dgvLoadcn.CurrentRow.Cells[4].Value;
            txtTrinhdoVH.Text = dgvLoadcn.CurrentRow.Cells[18].Value.ToString();
            txtDantoc.Text = dgvLoadcn.CurrentRow.Cells[7].Value.ToString();
            txtNoisinh.Text = dgvLoadcn.CurrentRow.Cells[5].Value.ToString();
            txtQuoctich.Text = dgvLoadcn.CurrentRow.Cells[28].Value.ToString();
            txttongiao.Text = dgvLoadcn.CurrentRow.Cells[8].Value.ToString();
            txtQuequan.Text = dgvLoadcn.CurrentRow.Cells[9].Value.ToString();
            cbhonnhan.Text = dgvLoadcn.CurrentRow.Cells[15].Value.ToString();
            txtCmnd.Text = dgvLoadcn.CurrentRow.Cells[6].Value.ToString();
            dtNgaycap.Value = (DateTime)dgvLoadcn.CurrentRow.Cells[24].Value;
            txtNoicap.Text = dgvLoadcn.CurrentRow.Cells[23].Value.ToString();
            txtSonha.Text = dgvLoadcn.CurrentRow.Cells[10].Value.ToString();
            txtTKnganhang.Text = dgvLoadcn.CurrentRow.Cells[22].Value.ToString();
            textBox58.Text = dgvLoadcn.CurrentRow.Cells[29].Value.ToString();
            textBox1.Text =dgvLoadcn.CurrentRow.Cells[29].Value.ToString();
            //picCongnhan.Image = Image.FromFile(dgvLoadcn.CurrentRow.Cells[26].Value.ToString());
            picCongnhan.ImageLocation = dgvLoadcn.CurrentRow.Cells[26].Value.ToString();
        }

        private void btCheckin_Click(object sender, EventArgs e)
        {
            string day = DateTime.Now.Day.ToString();
            TimeSpan giotoi = DateTime.Now.TimeOfDay;
            GioLamViec glv = new GioLamViec("CALV1", day, giotoi, true, DateTime.Now,txtMaCN_tkCC.Text,"1");
            new CongnhanBUS().AddGioLamViec(glv);
            dgvCheck.DataSource = new CongnhanBUS().ViewGioLamViec("SELECT *FROM GioLamViec").ToList();
        }

        private void btThemCN_newForm_Click(object sender, EventArgs e)
        {
            ThemNhanVien themnhanvien = new ThemNhanVien();
            themnhanvien.Show();
        }

        private void btThem_CN_Click(object sender, EventArgs e)
        {
            if(txtHo.Text==""|| txtTen.Text==""|| cbGioitinh.Text==""|| dtNgaysinh.Value==null|| txtNoisinh.Text==""|| txtCmnd.Text==""|| txtDantoc.Text==""|| txttongiao.Text==""|| txtQuequan.Text==""||txtSonha.Text==""||txtNoiOHien.Text==""|| txtSDTN.Text==""|| txtSDT.Text==""||txtEmail.Text==""|| cbhonnhan.Text==""|| dtNgay.Value==null|| txtNoilamviec.Text==""|| txtTrinhdoVH.Text==""|| txtMaCN_CC.Text==""|| txtMahesoluong.Text==""|| txtPhuCap.Text==""|| txtTKnganhang.Text==""|| txtNoicap.Text==""|| dtNgaycap.Value==null|| picCongnhan.ImageLocation==""||txtQuoctich.Text==""||textBox58.Text==""|| textBox1.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            CongNhan cn = new CongNhan(txtMaCN_CN.Text, txtHo.Text, txtTen.Text, cbGioitinh.Text, dtNgaysinh.Value, txtNoisinh.Text, txtCmnd.Text, txtDantoc.Text, txttongiao.Text, txtQuequan.Text, txtSonha.Text, txtNoiOHien.Text, txtSDTN.Text, txtSDT.Text, txtEmail.Text, cbhonnhan.Text, dtNgay.Value, txtNoilamviec.Text, txtTrinhdoVH.Text, txtMaCN_CC.Text, txtMahesoluong.Text, txtPhuCap.Text, txtTKnganhang.Text, txtNoicap.Text, dtNgaycap.Value, picCongnhan.ImageLocation, "1", txtQuoctich.Text, textBox58.Text, textBox1.Text);
            cnb.AddCongNhan(cn);
        }

        private void btSua_CN_Click(object sender, EventArgs e)
        {
            if (txtHo.Text == "" || txtTen.Text == "" || cbGioitinh.Text == "" || dtNgaysinh.Value == null || txtNoisinh.Text == "" || txtCmnd.Text == "" || txtDantoc.Text == "" || txttongiao.Text == "" || txtQuequan.Text == "" || txtSonha.Text == "" || txtNoiOHien.Text == "" || txtSDTN.Text == "" || txtSDT.Text == "" || txtEmail.Text == "" || cbhonnhan.Text == "" || dtNgay.Value == null || txtNoilamviec.Text == "" || txtTrinhdoVH.Text == "" || txtMaCN_CC.Text == "" || txtMahesoluong.Text == "" || txtPhuCap.Text == "" || txtTKnganhang.Text == "" || txtNoicap.Text == "" || dtNgaycap.Value == null || picCongnhan.ImageLocation == "" || txtQuoctich.Text == "" || textBox58.Text == "" || textBox1.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            CongNhan cn = new CongNhan(txtMaCN_CN.Text, txtHo.Text, txtTen.Text, cbGioitinh.Text, dtNgaysinh.Value, txtNoisinh.Text, txtCmnd.Text, txtDantoc.Text, txttongiao.Text, txtQuequan.Text, txtSonha.Text, txtNoiOHien.Text, txtSDTN.Text, txtSDT.Text, txtEmail.Text, cbhonnhan.Text, dtNgay.Value, txtNoilamviec.Text, txtTrinhdoVH.Text, txtMaCN_CC.Text, txtMahesoluong.Text, txtPhuCap.Text, txtTKnganhang.Text, txtNoicap.Text, dtNgaycap.Value, picCongnhan.ImageLocation, "1", txtQuoctich.Text, textBox58.Text, textBox1.Text);
            cnb.UpdateCongNhan(cn);
        }

        private void btXoa_CN_Click(object sender, EventArgs e)
        {
            if(txtMaCN_CC.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.DeleteCongNhan(txtMaCN_CC.Text);
        }

        private void btSua_CC_Click(object sender, EventArgs e)
        {
            if(txtMaCN_tkCC.Text==""||txtHo_CC.Text==""||txtTen_CC.Text==""||dtGiotoi.Value==null||dtGiove.Value==null||txtCalv.Text==""||dtNgay.Value==null)
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            GioLamViec glv = new GioLamViec(txtMaCa.Text, dtNgay.Value.Kind.ToString(), dtGiotoi.Value.TimeOfDay, checkDitre.Checked, dtNgay.Value, txtMaCN_tkCC.Text, txtMaCN_tkCC.Text);
            cnb.UpdateGioLamViec1(glv);
            dgvCheck.DataSource = new CongnhanBUS().ViewGioLamViec("SELECT *FROM GioLamViec").ToList();
        }

        private void btCheckout_Click(object sender, EventArgs e)
        {
            if(txtMaCN_tkCC.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.UpdateGioLamViec(txtMaCN_tkCC.Text, DateTime.Now.TimeOfDay);
            dgvCheck.DataSource = new CongnhanBUS().ViewGioLamViec("SELECT *FROM GioLamViec").ToList();
            cnb.AddLuong(txtMaCN_tkCC.Text,DateTime.Now);
        }

        private void btXoa_CC_Click(object sender, EventArgs e)
        {
            if(txtMaCN_CC.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.DeleteGioLamViec(txtMaCN_CC.Text,dtNgay.Value);
            dgvCheck.DataSource = new CongnhanBUS().ViewGioLamViec("SELECT *FROM GioLamViec").ToList();
        }

        private void btLoadlich_Click(object sender, EventArgs e)
        {
            dgvLich.DataSource = new CongnhanBUS().ViewLich("SELECT * FROM Lich").ToList();
        }

        private void dgvLich_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaCN_QLCC.Text = dgvLich.CurrentRow.Cells[0].Value.ToString();
            dgvGiolam.DataSource = cnb.ViewGioLamViec("SELECT *FROM GioLamViec WHERE MaNV='"+txtMaCN_QLCC.Text+"'").ToList();

        }

        private void btTimlich_Click(object sender, EventArgs e)
        {
            if(txtNam_QLCC.Text==""&&txtThang_QLCC.Text!="")
            {
                dgvLich.DataSource = new CongnhanBUS().ViewLich("SELECT * FROM Lich WHERE Thang="+txtThang_QLCC.Text).ToList();
            }
            if(txtThang_QLCC.Text==""&&txtNam_QLCC.Text!="")
            {
                dgvLich.DataSource = new CongnhanBUS().ViewLich("SELECT * FROM Lich WHERE Nam="+txtNam_QLCC.Text).ToList();
            }
            if (txtThang_QLCC.Text!= "" && txtNam_QLCC.Text!= "")
            {
                dgvLich.DataSource = new CongnhanBUS().ViewLich("SELECT * FROM Lich WHERE Thang="+txtThang_QLCC.Text+"AND Nam"+txtNam_QLCC.Text).ToList();
            }
            if (txtThang_QLCC.Text==""&&txtNam_QLCC.Text=="")
            {
                dgvLich.DataSource = new CongnhanBUS().ViewLich("SELECT * FROM Lich").ToList();
            }
        }

        private void btLoadluong_Click(object sender, EventArgs e)
        {
            dgvLuong.DataSource = new CongnhanBUS().ViewLuong("SELECT * FROM Luong").ToList();
        }

        private void dgvLuong_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaCN_QLBL.Text = dgvLuong.CurrentRow.Cells[2].Value.ToString();
            txtLuongcoban.Text = dgvLuong.CurrentRow.Cells[3].Value.ToString();
            textBox2.Text = dgvLuong.CurrentRow.Cells[5].Value.ToString();
            txtThuclanh.Text = dgvLuong.CurrentRow.Cells[6].Value.ToString();
        }

        private void btLoadHD_Click(object sender, EventArgs e)
        {
            dgvHD.DataSource = new CongnhanBUS().ViewKyHopDong("SELECT KyHopDong.MaHD,KyHopDong.TuNgay,KyHopDong.DenNgay,Kyhopdong.NgayKyHD,KyHopDong.DieuKhoan,KyHopDong.MaNV,HopDong.LoaiHopDong,HopDong.KyHan,CongNhan.Ten FROM KyHopDong,HopDong,CongNhan WHERE KyHopDong.MaHD=HopDong.MaHD AND KyHopDong.MaNV=CongNhan.MaNV").ToList();
        }

        private void dgvHD_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaHD_HD.Text = dgvHD.CurrentRow.Cells[0].Value.ToString();
            txtMaCN_HD.Text = dgvHD.CurrentRow.Cells[5].Value.ToString();
            txtTenHD_HD.Text = dgvHD.CurrentRow.Cells[6].Value.ToString();
            txtTenCN_HD.Text = dgvHD.CurrentRow.Cells[8].Value.ToString();
            txtKyhan_HD.Text = dgvHD.CurrentRow.Cells[7].Value.ToString();
            dtTungay_HD.Value = (DateTime)dgvHD.CurrentRow.Cells[1].Value;
            dtDenngay_HD.Value = (DateTime)dgvHD.CurrentRow.Cells[2].Value;
            dtNgayky_HD.Value = (DateTime)dgvHD.CurrentRow.Cells[3].Value;
            txtDieukhoan_HD.Text = dgvHD.CurrentRow.Cells[4].Value.ToString();
        }

        private void btThem_HD_Click(object sender, EventArgs e)
        {
            if (txtMaHD_HD.Text == "" || dtTungay_HD.Value == null || dtDenngay_HD.Value == null || dtNgayky_HD.Value == null || txtDieukhoan_HD.Text == "" || txtMaCN_HD.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            KyHopDong khd= new KyHopDong(txtMaHD_HD.Text, dtTungay_HD.Value, dtDenngay_HD.Value, dtNgayky_HD.Value, txtDieukhoan_HD.Text, txtMaCN_HD.Text);
            cnb.AddKyHopDong(khd);
        }

        private void btSua_HD_Click(object sender, EventArgs e)
        {
            if (txtMaHD_HD.Text == "" || dtTungay_HD.Value == null || dtDenngay_HD.Value == null || dtNgayky_HD.Value == null || txtDieukhoan_HD.Text == "" || txtMaCN_HD.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            KyHopDong khd = new KyHopDong(txtMaHD_HD.Text, dtTungay_HD.Value, dtDenngay_HD.Value, dtNgayky_HD.Value, txtDieukhoan_HD.Text, txtMaCN_HD.Text);
            cnb.UpdateKyHopDong(khd);
        }

        private void btXoa_HD_Click(object sender, EventArgs e)
        {
            if(txtMaHD_HD.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.DeleteKyHopDong(txtMaHD_HD.Text);
        }

        private void btTimHD_Click(object sender, EventArgs e)
        {
            if(txtMaHD_tk.Text==""&&txtMaCN_tkHD.Text!="")
            {
                dgvHD.DataSource = cnb.ViewKyHopDong("SELECT KyHopDong.MaHD,KyHopDong.TuNgay,KyHopDong.DenNgay,Kyhopdong.NgayKyHD,KyHopDong.DieuKhoan,KyHopDong.MaNV,HopDong.LoaiHopDong,HopDong.KyHan,CongNhan.Ten FROM KyHopDong,HopDong,CongNhan WHERE KyHopDong.MaHD=HopDong.MaHD AND KyHopDong.MaNV=CongNhan.MaNV AND KyHopDong.MaHD='" + txtMaCN_tkHD.Text + "'").ToList();
            }
            if(txtMaHD_tk.Text!=""&&txtMaCN_tkHD.Text=="")
            {
                dgvHD.DataSource = cnb.ViewKyHopDong("SELECT KyHopDong.MaHD,KyHopDong.TuNgay,KyHopDong.DenNgay,Kyhopdong.NgayKyHD,KyHopDong.DieuKhoan,KyHopDong.MaNV,HopDong.LoaiHopDong,HopDong.KyHan,CongNhan.Ten FROM KyHopDong,HopDong,CongNhan WHERE KyHopDong.MaHD=HopDong.MaHD AND KyHopDong.MaNV=CongNhan.MaNV AND CongNhan.MaNV='" + txtMaCN_tkHD.Text + "'").ToList();
            }
            if(txtMaHD_tk.Text==""&&txtMaCN_tkHD.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
        }

        private void btLoadTK_Click(object sender, EventArgs e)
        {
            dgv_TaiKhoan.DataSource = cnb.ViewTaiKhoan("SELECT *FROM TaiKhoan").ToList();
        }

        private void dgv_TaiKhoan_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTenTK.Text = dgv_TaiKhoan.CurrentRow.Cells[0].Value.ToString();
            txtMaukhau.Text = dgv_TaiKhoan.CurrentRow.Cells[1].Value.ToString();
            cbNhomquyen.Text = dgv_TaiKhoan.CurrentRow.Cells[2].Value.ToString();
        }

        private void btThemTK_Click(object sender, EventArgs e)
        {
            if(txtTenTK.Text==""||txtMaukhau.Text==""&&cbNhomquyen.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            TaiKhoan tk = new TaiKhoan(txtTenTK.Text, txtMaukhau.Text, cbNhomquyen.Text);
            cnb.AddTaiKhoan(tk);
        }

        private void btSuaTK_Click(object sender, EventArgs e)
        {
            if (txtTenTK.Text == "" || txtMaukhau.Text == "" && cbNhomquyen.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            TaiKhoan tk = new TaiKhoan(txtTenTK.Text, txtMaukhau.Text, cbNhomquyen.Text);
            cnb.UpdataTaiKhoan(tk);
        }

        private void btXoaTK_Click(object sender, EventArgs e)
        {
            if(txtTenTK.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.DeleteTaiKhoan(txtTenTK.Text);
        }

        private void btLoadPC_Click(object sender, EventArgs e)
        {
            dgvPhucap.DataSource = cnb.ViewPhuCap("SELECT *FROM PhuCap").ToList();
        }

        private void dgvPhucap_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaPC.Text = dgvPhucap.CurrentRow.Cells[0].Value.ToString();
            txtTenPC.Text = dgvPhucap.CurrentRow.Cells[1].Value.ToString();
            txtTienPC.Text = dgvPhucap.CurrentRow.Cells[2].Value.ToString();
        }

        private void btThemPC_Click(object sender, EventArgs e)
        {
            if(txtMaPC.Text==""||txtTenPC.Text==""||txtTienPC.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            PhuCap pc = new PhuCap(txtMaPC.Text, txtTenPC.Text, int.Parse(txtTienPC.Text));
            cnb.AddPhuCap(pc);
        }

        private void btSuaPC_Click(object sender, EventArgs e)
        {
            if (txtMaPC.Text == "" || txtTenPC.Text == "" || txtTienPC.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            PhuCap pc = new PhuCap(txtMaPC.Text, txtTenPC.Text, int.Parse(txtTienPC.Text));
            cnb.UpdatePhuCap(pc);
        }

        private void btXoaPC_Click(object sender, EventArgs e)
        {
            if (txtTenPC.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.DeletePhuCap(txtTenPC.Text);
        }

        private void btLoadHD_CD_Click(object sender, EventArgs e)
        {
            dgvHD_CD.DataSource = cnb.ViewPhuCap("SELECT *FROM HopDong").ToList();
        }

        private void btThemHD_CD_Click(object sender, EventArgs e)
        {
            if(txtMaHD_CD.Text==""||txtLoaiHD_CD.Text==""||txtKyHanHD_CD.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            HopDong hd= new HopDong(txtMaHD_CD.Text, txtLoaiHD_CD.Text, txtKyHanHD_CD.Text);
            cnb.AddHopDong(hd);
        }

        private void btSuaHD_CD_Click(object sender, EventArgs e)
        {
            if (txtMaHD_CD.Text == "" || txtLoaiHD_CD.Text == "" || txtKyHanHD_CD.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            HopDong hd = new HopDong(txtMaHD_CD.Text, txtLoaiHD_CD.Text, txtKyHanHD_CD.Text);
            cnb.UpdateHopDong(hd);
        }

        private void btXoaHD_CD_Click(object sender, EventArgs e)
        {
            if(txtMaHD_CD.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.DeleteHopDong(txtMaHD_CD.Text);
        }

        private void dgvHD_CD_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaHD_CD.Text = dgvHD_CD.CurrentRow.Cells[0].Value.ToString();
            txtLoaiHD_CD.Text = dgvHD_CD.CurrentRow.Cells[1].Value.ToString();
            txtKyHanHD_CD.Text = dgvHD_CD.CurrentRow.Cells[2].Value.ToString();
        }

        private void btLoadCV_Click(object sender, EventArgs e)
        {
            dgvLoaiCV_CD.DataSource = cnb.ViewChucVu("SELECT *FROM ChucVu").ToList();
        }

        private void dgvLoaiCV_CD_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaCV_CD.Text = dgvLoaiCV_CD.CurrentRow.Cells[0].Value.ToString();
            txtTenCV_CD.Text = dgvLoaiCV_CD.CurrentRow.Cells[1].Value.ToString();
        }

        private void btThemCV_CD_Click(object sender, EventArgs e)
        {
            if(txtMaCV_CD.Text==""&&txtTenCV_CD.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            ChucVu cv = new ChucVu(txtMaCV_CD.Text, txtTenCV_CD.Text);
            cnb.AddChucVu(cv);
        }

        private void btSuaCV_CD_Click(object sender, EventArgs e)
        {
            if (txtMaCV_CD.Text == "" && txtTenCV_CD.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            ChucVu cv = new ChucVu(txtMaCV_CD.Text, txtTenCV_CD.Text);
            cnb.UpdateChucVu(cv);
        }

        private void btXoaCV_CD_Click(object sender, EventArgs e)
        {
            if (txtMaCV_CD.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.DeleteChucVu(txtMaCV_CD.Text);
        }

        private void btHSL_Click(object sender, EventArgs e)
        {
            dgvHSL.DataSource = cnb.ViewHeSoLuong("SELECT *FROM HeSoLuong").ToList();
        }

        private void dgvHSL_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            MaHSL.Text = dgvHSL.CurrentRow.Cells[0].Value.ToString();
            txtTenHSL.Text = dgvHSL.CurrentRow.Cells[1].Value.ToString();
            txtHSL.Text = dgvHSL.CurrentRow.Cells[2].Value.ToString();
        }

        private void btThemHSL_Click(object sender, EventArgs e)
        {
            if (MaHSL.Text == "" || txtTenHSL.Text == "" || txtHSL.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            HeSoLuong hsl = new HeSoLuong(MaHSL.Text, txtTenHSL.Text, txtHSL.Text);
            cnb.AddHeSoLuong(hsl);
        }

        private void btSuaHSL_Click(object sender, EventArgs e)
        {
            if (MaHSL.Text == "" || txtTenHSL.Text == "" || txtHSL.Text == "")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            HeSoLuong hsl = new HeSoLuong(MaHSL.Text, txtTenHSL.Text, txtHSL.Text);
            cnb.UpdateHeSoLuong(hsl);
        }

        private void btXoaHSL_Click(object sender, EventArgs e)
        {
            if(MaHSL.Text=="")
            {
                MessageBox.Show("Khong co du lieu");
                return;
            }
            cnb.DeleteHeSoLuong(MaHSL.Text);      
        }

        private void btTimLuong_Click(object sender, EventArgs e)
        {
            if(txtMaCN_tkQLBL.Text!=""&&txtThang_QLBL.Text==""&&txtNam_QLBL.Text=="")
            {
                dgvLuong.DataSource = new CongnhanBUS().ViewLuong("SELECT * FROM Luong WHERE MaVN='"+txtMaCN_tkQLBL.Text+"'").ToList();
            }
            if(txtMaCN_tkQLBL.Text!=""&&txtThang_QLBL.Text!=""&&txtNam_QLBL.Text=="")
            {
                dgvLuong.DataSource = new CongnhanBUS().ViewLuong("SELECT * FROM Luong WHERE MaVN='" + txtMaCN_tkQLBL.Text + "' AND Thang="+txtThang_QLBL.Text).ToList();
            }
            if(txtMaCN_tkQLBL.Text!=""&&txtThang_QLBL.Text!=""&&txtNam_QLBL.Text!="")
            {
                dgvLuong.DataSource = new CongnhanBUS().ViewLuong("SELECT * FROM Luong WHERE MaVN='" + txtMaCN_tkQLBL.Text + "' AND Thang=" + txtThang_QLBL.Text+"AND Nam="+txtNam_QLBL.Text).ToList();
            }
            if(txtMaCN_tkQLBL.Text==""&&txtThang_QLBL.Text!=""&&txtNam_QLBL.Text!="")
            {
                dgvLuong.DataSource = new CongnhanBUS().ViewLuong("SELECT * FROM Luong WHERE Thang=" + txtThang_QLBL.Text + "AND Nam=" + txtNam_QLBL.Text).ToList();
            }

        }

        private void btBCNhansu_Click(object sender, EventArgs e)
        {
            ReportDataSource rpdt = new ReportDataSource("CongNhan", cnb.ViewCongNhan("SELECT * FROM CongNhan, ChucVu WHERE CongNhan.MaCV = ChucVu.MaCV"));
            reportViewer1.LocalReport.ReportPath = "ChamCongReport1.rdlc";
            reportViewer1.LocalReport.DataSources.Clear();
            reportViewer1.LocalReport.DataSources.Add(rpdt);
            reportViewer1.RefreshReport();
        }
    }
}