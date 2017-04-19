using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ChamCong
{
    public partial class Form1 : Form
    {
        ThemNhanVien themnv;
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

        // Load ----------------------------------------------------------------------------------------------------

        private void btLoadCongnhan_Click(object sender, EventArgs e)
        {
            dgvLoadcn.DataSource = CongNhanBUS.LoadCN(); //load cn
        }

        private void btdscnDitre_Click(object sender, EventArgs e)
        {
            dgvLoadcn.DataSource = CongNhanBUS.LoadCNDitre(); //cong nhan di tre
        }

     

        private void btLoadlich_Click(object sender, EventArgs e)
        {
            dgvLich.DataSource = CongNhanBUS.LoadLich();
        }

        private void btLoadluong_Click(object sender, EventArgs e)
        {
            dgvLuong.DataSource = CongNhanBUS.LoadLuong();
        }

        private void btLoadHD_Click(object sender, EventArgs e)
        {
            dgvHD.DataSource = CongNhanBUS.LoadCTHD();
        }

        private void btDS_hetHD_Click(object sender, EventArgs e)
        {
            dgvHD.DataSource = CongNhanBUS.LoadHD_hethan();
        }

        private void btLoadTK_Click(object sender, EventArgs e)
        {
            dgv_TaiKhoan.DataSource = CongNhanBUS.LoadTK();
        }

        private void btLoadPC_Click(object sender, EventArgs e)
        {
            dgvPhucap.DataSource = CongNhanBUS.LoadPC();
        }

        private void btLoadHD_CD_Click(object sender, EventArgs e)
        {
            dgvHD_CD.DataSource = CongNhanBUS.LoadHD();
        }

        private void btLoadCV_Click(object sender, EventArgs e)
        {
            dgvLoaiCV_CD.DataSource = CongNhanBUS.LoadCV();
        }

        private void btLoadCa_Click(object sender, EventArgs e)
        {
            dgvCalv_CD.DataSource = CongNhanBUS.LoadCaLV();
        }

        private void btHSL_Click(object sender, EventArgs e)
        {
            dgvHSL.DataSource = CongNhanBUS.LoadHSL();
        }


       
        private void btThemCN_newForm_Click(object sender, EventArgs e)
        {
            this.Hide();
            themnv = new ThemNhanVien();
            themnv.Show();
        }

        // tab Công Nhân
        //Them
        private void btThem_CN_Click(object sender, EventArgs e)
        {
            Add_CN();
        }
        
        private int Add_CN()
        {
            string maCN, ho, ten, gioitinh, noisinh, dantoc,tongiao, quequan, thuongtru, tamtru, email, tthonnhan, macv,noilamviec, tdvanhoa, maloaicv,
                tknganhang, noicapcmnd,hinh, quoctich, mabhyt, mabhxh;
            DateTime ngaysinh , ngaytuyendung, ngaycapcmnd;
            long cmnd, sdtnha, sdtdidong;
            maCN = txtMaCN_CN.Text; ho = txtHo.Text; ten = txtTen.Text; gioitinh = cbGioitinh.Text; noisinh = txtNoisinh.Text; dantoc = txtDantoc.Text; tongiao = txtTongiao.Text; quequan = txtQuequan.Text;
            thuongtru = txtThuongtru.Text; tamtru = txtTamtru.Text; email = txtEmail.Text; tthonnhan =txtHonnhan.Text; macv = cbChucvu.Text; noilamviec = txtNoilamviec.Text;
            tdvanhoa = txtTrinhdoVH.Text; maloaicv = cbLoaicv.Text; tknganhang = txtTKnganhang.Text; noicapcmnd = txtNoicap.Text; hinh = ""; quoctich = txtQuoctich.Text;
            mabhyt = txtMaBHYT.Text; mabhxh = txtMaBHXH.Text;
            ngaysinh = Convert.ToDateTime(dtNgaysinh.Text);
            ngaytuyendung = Convert.ToDateTime(dtTuyendung.Text);
            ngaycapcmnd = Convert.ToDateTime(dtNgaycap.Text);
            cmnd = long.Parse(txtCmnd.Text);
            sdtnha = long.Parse(txtSDTNha.Text);
            sdtdidong = long.Parse(txtSDTDD.Text);
            //tao doi tuong DTO
            CongNhan cn = new CongNhan(maCN, ho, ten, gioitinh, noisinh, dantoc, tongiao, quequan, thuongtru, tamtru, email, tthonnhan, macv, noilamviec, tdvanhoa, maloaicv,
                tknganhang, noicapcmnd, hinh, quoctich, mabhyt, mabhxh, ngaysinh, ngaytuyendung, ngaycapcmnd, cmnd, sdtnha, sdtdidong);
            //chuyen xuong BUS
            CongNhanBUS cnBUS = new CongNhanBUS;
            return cnBUS.Add_CN(cn);
        }
        //Xoa
        private void btXoa_CN_Click(object sender, EventArgs e)
        {
            Delete_CN();
        }
        private int Delete_CN()
        {
            string maCn = txtMaCN_CN.Text;
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Delete(maCn);

        }
        //Sua
        private void btSua_CN_Click(object sender, EventArgs e)
        {
            Update_CN();
        }
        private int Update_CN()
        {
            string maCN, ho, ten, gioitinh, noisinh, dantoc, tongiao, quequan, thuongtru, tamtru, email, tthonnhan, macv, noilamviec, tdvanhoa, maloaicv,
               tknganhang, noicapcmnd, hinh, quoctich, mabhyt, mabhxh;
            DateTime ngaysinh, ngaytuyendung, ngaycapcmnd;
            long cmnd, sdtnha, sdtdidong;
            maCN = txtMaCN_CN.Text; ho = txtHo.Text; ten = txtTen.Text; gioitinh = cbGioitinh.Text; noisinh = txtNoisinh.Text; dantoc = txtDantoc.Text; tongiao = txtTongiao.Text; quequan = txtQuequan.Text;
            thuongtru = txtThuongtru.Text; tamtru = txtTamtru.Text; email = txtEmail.Text; tthonnhan = txtHonnhan.Text; macv = cbChucvu.Text; noilamviec = txtNoilamviec.Text;
            tdvanhoa = txtTrinhdoVH.Text; maloaicv = cbLoaicv.Text; tknganhang = txtTKnganhang.Text; noicapcmnd = txtNoicap.Text; hinh = ""; quoctich = txtQuoctich.Text;
            mabhyt = txtMaBHYT.Text; mabhxh = txtMaBHXH.Text;
            ngaysinh = Convert.ToDateTime(dtNgaysinh.Text);
            ngaytuyendung = Convert.ToDateTime(dtTuyendung.Text);
            ngaycapcmnd = Convert.ToDateTime(dtNgaycap.Text);
            cmnd = long.Parse(txtCmnd.Text);
            sdtnha = long.Parse(txtSDTNha.Text);
            sdtdidong = long.Parse(txtSDTDD.Text);

             CongNhan cn = new CongNhan(maCN, ho, ten, gioitinh, noisinh, dantoc, tongiao, quequan, thuongtru, tamtru, email, tthonnhan, macv, noilamviec, tdvanhoa, maloaicv,
                tknganhang, noicapcmnd, hinh, quoctich, mabhyt, mabhxh, ngaysinh, ngaytuyendung, ngaycapcmnd, cmnd, sdtnha, sdtdidong);
            //chuyen xuong BUS
            CongNhanBUS cnBUS = new CongNhanBUS;
            return cnBUS.Update_CN(cn);
        }
        // LUU
        private void Save_CN()
        {
            Update_CN();
        }

        private void btLuu_CN_Click(object sender, EventArgs e)
        {
            Save_CN();
        }

        private void SearchID_CN()
        {
            string maCN = txtMaCN_CN.Text;
            
            CongNhanBUS cnBUS= new CongNhanBUS();
            cnBUS.SearchID_CN(maCN);
        }
        private void btTimtenCN_Click(object sender, EventArgs e)
        {
            SearchID_CN();
        }

      
        //tab Chấm Công

        private int Insert_Time()
        {
            string maCN = txtMaCN_CC.Text;
            DateTime giotoi, giove, ngay;
            giotoi = Convert.ToDateTime(dtGiotoi);
            giove = Convert.ToDateTime(dtGiove);
            ngay = Convert.ToDateTime(dtNgay);
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Add_Time(maCN, giotoi, giove);
        }
        private void btCheckin_Click(object sender, EventArgs e)  // vua chen vua load
        {
            Insert_Time();
        }

        private int Update_Time()
        {
            string maCN = txtMaCN_CC.Text;
            DateTime giotoi, giove, ngay;
            giotoi = Convert.ToDateTime(dtGiotoi);
            giove = Convert.ToDateTime(dtGiove);
            ngay = Convert.ToDateTime(dtNgay);

            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Update_Time(maCN, giotoi, giove);
        }
        private void btCheckout_Click(object sender, EventArgs e)
        {
            Update_Time();
        }

        private void btSua_CC_Click(object sender, EventArgs e)
        {
            Update_Time();
        }

        private void btXoa_CC_Click(object sender, EventArgs e)
        {
            string maCN = txtMaCN_CC.Text;
            CongNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.Delete_Time(maCN);
        }

        private void btLuu_CC_Click(object sender, EventArgs e)
        {
            Update_Time();
        }
        // tab Lich

        private void Search_Lich()
        {
            string maCN, thang, nam;
            maCN = txtMaCN_tkQLCC.Text;
            thang = txtThang_QLCC.Text;
            nam = txtNam_QLCC.Text;
            CongNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.SearchLich(maCN, thang, nam);
        }
        private void btTimlich_Click(object sender, EventArgs e)
        {
            Search_Lich();
        }

        //tab QLBL

        private void Search_Luong()
        {
            string maCN, thang, nam;
            maCN = txtMaCN_tkQLBL.Text;
            thang = txtThang_QLBL.Text;
            nam = txtNam_QLBL.Text;
            CongNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.SearchLuong(maCN, thang, nam);
        }
        private void btTimLuong_Click(object sender, EventArgs e)
        {
            Search_Luong();
        }

        private void btTinhluong_Click(object sender, EventArgs e)
        {
            int phucap, luongcoban;
            string tonghlamviec = txtTongh_ngay.Text;
            phucap = int.Parse(txtPhucap.Text);
            luongcoban = int.Parse(txtLuongcoban.Text);

            CongNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.TinhLuong(phucap, luongcoban,tonghlamviec);
        }

        private void btLuu_QLBL_Click(object sender, EventArgs e)
        {
            int luong = int.Parse(txtThuclanh.Text);
            
            CongNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.Update_Luong(luong);
        }

        //tab HD
        private void btTimHD_Click(object sender, EventArgs e)
        {
            string maHD, maCN;
            maHD = txtMaHD_tk.Text;
            maCN = txtMaCN_tkHD.Text;
            CongNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.SearchCTHD(maCN, maHD);
        }
        private int Add_CTHD()
        {
            string maHD, maCN, dieuKhoan; ;
            DateTime tungay, denngay, ngaykyHD;
            maHD = txtMaHD_HD.Text;
            maCN = txtMaCN_HD.Text;
            dieuKhoan = txtDieukhoan_HD.Text;
            tungay = Convert.ToDateTime(dtTungay_HD.Text);
            denngay = Convert.ToDateTime(dtDenngay_HD.Text);
            ngaykyHD = Convert.ToDateTime(dtNgayky_HD.Text);

            KyHopDong ctHD = new KyHopDong(maHD, tungay, denngay, ngaykyHD, dieuKhoan, maCN);
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Add_CTHD(ctHD);
        }
        private void btThem_HD_Click(object sender, EventArgs e)
        {
            Add_CTHD();
        }

        private int Update_CTHD()
        {
            string maHD, maCN, dieuKhoan; ;
            DateTime tungay, denngay, ngaykyHD;
            maHD = txtMaHD_HD.Text;
            maCN = txtMaCN_HD.Text;
            dieuKhoan = txtDieukhoan_HD.Text;
            tungay = Convert.ToDateTime(dtTungay_HD.Text);
            denngay = Convert.ToDateTime(dtDenngay_HD.Text);
            ngaykyHD = Convert.ToDateTime(dtNgayky_HD.Text);

            KyHopDong ctHD = new KyHopDong(maHD, tungay, denngay, ngaykyHD, dieuKhoan, maCN);
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Update_CTHD(ctHD);
        }
        private void btSua_HD_Click(object sender, EventArgs e)
        {
            Update_CTHD();
        }
        private int Delete_HD()
        {
            string maHD, maCN;
            maHD = txtMaHD_HD.Text;
            maCN = txtMaCN_HD.Text;
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Delete_CTHD(maHD, maCN);
        }
        private void btXoa_HD_Click(object sender, EventArgs e)
        {
            Delete_HD();
        }
        private void Save_HD()
        {
            Update_CTHD();
        }
        private void btLuu_HD_Click(object sender, EventArgs e)
        {
            Save_HD();
        }

        // tab Bao Cao
        private int Report_CN()
        {
            string loaiCV, chucvu;
            loaiCV = cbLoaiCV_BC.Text;
            chucvu = cbChucvu_BC.Text;
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Report_CN(loaiCV, chucvu);
        }
        private void btBCNhansu_Click(object sender, EventArgs e)
        {
            Report_CN();
        }
        private int Report_Luong()
        {
            string thang, nam;
            thang = cbThang_BC.Text;
            nam = cbNam_BC.Text;
            
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Report_Luong(thang, nam);
        }
        private void btBCLuong_Click(object sender, EventArgs e)
        {
            Report_Luong();
        }
        private int Report_HD()
        {
            string maHD;
            maHD = cbMaHD_BC.Text;

            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Report_HD(maHD);
        }
        private void btBCHD_Click(object sender, EventArgs e)
        {

        }

        //tab Tai khoan
        private int Add_TK()
        {
            string tenTK, matKhau, nhomQuyen;
            tenTK = txtTenTK.Text;
            matKhau = txtMatkhau.Text;
            nhomQuyen = cbNhomquyen.Text;
            TaiKhoan tk = new TaiKhoan(tenTK, matKhau, nhomQuyen);
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Add_TK(tk);
        }
        private void btThemTK_Click(object sender, EventArgs e)
        {
            Add_TK();
        }
        private int Update_TK()
        {
            string tenTK, matKhau, nhomQuyen;
            tenTK = txtTenTK.Text;
            matKhau = txtMatkhau.Text;
            nhomQuyen = cbNhomquyen.Text;
            TaiKhoan tk = new TaiKhoan(tenTK, matKhau, nhomQuyen);
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Update_TK(tk);
        }
        private void btSuaTK_Click(object sender, EventArgs e)
        {
            Update_TK();
        }
        private int Delete_TK()
        {
            string maTK;
            maTK = txtTen.Text;
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Xoa_TK(maTK);
            
        }
        private void btXoaTK_Click(object sender, EventArgs e)
        {
            Delete_TK();
        }

        private void btLuuTK_Click(object sender, EventArgs e)
        {
            Update_TK();
        }

        //tab  cai dat Phu Cap  (*)

        private void btThemPC_Click(object sender, EventArgs e)
        {
            string maPC, tenPC;
            int tienPC;
            PhuCap pc = new PhuCap(maPC, tenPC, tienPC);
            CongNhanBUS cnBUS = new CongNhanBUS()
            cnBUS.Add_PC(pc);
        }
        private int UpDate_PC()
        {
            string maPC, tenPC;
            int tienPC;
            PhuCap pc = new PhuCap(maPC, tenPC, tienPC);
            CongNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Update_PC(pc);
        }
        private void btSuaPC_Click(object sender, EventArgs e)
        {
            UpDate_PC();
        }

        private void btXoaPC_Click(object sender, EventArgs e)
        {
            string maPC;
            CongNhanBUS cnBUS = new CongNhanBUS()
            cnBUS.Delete_PC(maPC);
        }

        private void btLuuPC_Click(object sender, EventArgs e)
        {
            UpDate_PC();
        }

        //tab Cai dat HD

        private int Add_HD()
        {
            string maHD, loaiHD;
            int kyhan;
            maHD = txtMaHD_CD.Text;
            loaiHD = txtLoaiHD_CD.Text;
            kyhan = int.Parse(txtKyhan_HD.Text);
            HopDong hd = new HopDong(maHD, loaiHD, kyhan);
            ConNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Add_HD(hd);
        }
        private void btThemHD_CD_Click(object sender, EventArgs e)
        {
            Add_HD();
         }
        private int Update_HD()
        {
            string maHD, loaiHD;
            int kyhan;
            maHD = txtMaHD_CD.Text;
            loaiHD = txtLoaiHD_CD.Text;
            kyhan = int.Parse(txtKyhan_HD.Text);
            HopDong hd = new HopDong(maHD, loaiHD, kyhan);
            ConNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Add_HD(hd);
        }
        private void btSuaHD_CD_Click(object sender, EventArgs e)
        {
            Update_HD();
        }

        private int Delete()
        {
            string maHD;
            maHD = txtMaHD_CD.Text;
            ConNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Delete_HD(maHD);
        }
        private void btXoaHD_CD_Click(object sender, EventArgs e)
        {
            Delete();
        }

        private void btLuuHD_CD_Click(object sender, EventArgs e)
        {
            Update_HD();
        }

        //tab cai dat Loai CV
        private int Add_LoaiCV()
        {
            string maLoaiCV, tenLoaiCV;

            maLoaiCV = txtMaCV_CD.Text;
            tenLoaiCV = txtTenCV_CD.Text;

            LoaiCongViec loaicv = new LoaiCongViec();
            ConNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Add_LoaiCV(loaicv);
        }
        private void btThemCV_CD_Click(object sender, EventArgs e)
        {
            Add_LoaiCV()
        }
        private int Update_LoaiCV()
        {

            string maLoaiCV, tenLoaiCV;

            maLoaiCV = txtMaCV_CD.Text;
            tenLoaiCV = txtTenCV_CD.Text;

            LoaiCongViec loaicv = new LoaiCongViec();
            ConNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Update_LoaiCV(loaicv);
        }
        private void btSuaCV_CD_Click(object sender, EventArgs e)
        {
            Update_LoaiCV();
        }

        private void btXoaCV_CD_Click(object sender, EventArgs e)
        {
            string maLoaiCV = txtMaCV_CD.Text;
            ConNhanBUS cnBUS = new CongNhanBUS();
            return cnBUS.Delete_LoaiCV(maLoaiCV);
        }

        private void btLuuCV_CD_Click(object sender, EventArgs e)
        {
            Update_LoaiCV();
        }
        //tab 

        private void btThemCa_Click(object sender, EventArgs e)
        {
            string maCalv, tenCalv;
            DateTime gioBD, gioKT;
            maCalv = txtMaCa.Text;
            tenCalv = txtTenCa.Text;
            gioBD = Convert.ToDateTime(dtGiobatdau.Text);
            gioKT = Convert.ToDateTime(dtGioketthuc.Text);

            CaLamViec calv = new CaLamViec(maCalv, tenCalv, gioBD, gioKT);
            ConNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.Add_Calv(calv);
        }
        private int Update_CaLV ()
        {
            string maCalv, tenCalv;
            DateTime gioBD, gioKT;
            maCalv = txtMaCa.Text;
            tenCalv = txtTenCa.Text;
            gioBD = Convert.ToDateTime(dtGiobatdau.Text);
            gioKT = Convert.ToDateTime(dtGioketthuc.Text);

            CaLamViec calv = new CaLamViec(maCalv, tenCalv, gioBD, gioKT);
            ConNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.Update_Calv(calv);
        }
        private void btSuaCa_Click(object sender, EventArgs e)
        {
            Update_CaLV();
        }

        private void btXoaCa_Click(object sender, EventArgs e)
        {
            string maCalv = txtMaCa.Text;
            ConNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.Delete_Calv(maCalv);
        }

        private void btLuuCa_Click(object sender, EventArgs e)
        {
            Update_CaLV();
        }
        //tab HSL

        private void btThemHSL_Click(object sender, EventArgs e)
        {
            string maHSL, tenHSL;
            int HSL;
            maHSL = MaHSL.Text;
            tenHSL = txtTenHSL.Text;
            HSL = txtHSL.Text;
            HeSoLuong hsl = new HeSoLuong(maHSL, tenHSL, HSL);
            ConNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.Add_HSL(hsl);
        }
        private int Update_HSL()
        {
            string maHSL, tenHSL;
            int HSL;
            maHSL = MaHSL.Text;
            tenHSL = txtTenHSL.Text;
            HSL = txtHSL.Text;

            HeSoLuong hsl = new HeSoLuong(maHSL, tenHSL, HSL);
            ConNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.Update_HSL(hsl);
            
        }
        private void btSuaHSL_Click(object sender, EventArgs e)
        {
            Update_HSL();
        }

        private void btXoaHSL_Click(object sender, EventArgs e)
        {
            string maHSL;
            maHSL = MaHSL.Text;
            ConNhanBUS cnBUS = new CongNhanBUS();
            cnBUS.Delete_HSL(hsl);
        }

        private void btLuuHSL_Click(object sender, EventArgs e)
        {
            Update_HSL();
        }
      
    }
}
