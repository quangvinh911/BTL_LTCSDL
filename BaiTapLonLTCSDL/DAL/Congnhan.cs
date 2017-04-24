using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;
namespace DAL
{
    public class Congnhan
    {
        Provider p;
        public Congnhan()
        {
            p = new Provider();
        }
        public List<CongNhan> ViewCongNhan(string sql)
        {
            try
            {
                List<CongNhan> list = new List<CongNhan>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaCN, Ho, Ten, NoiSinh, DanToc, TonGiao, QueQuan, DCThuongTru, NoiOHienNay, Email, TTHonNhan, MaCV, NoiLamViec,TrinhDoVanHoa,MaHeSoLuong,MaLoaiCV, MaPhuCap, TaiKhoanNganHang, NoiCapCMND,
                      Hinh, QuocTich, MaBHYT, MaBHXH;
                    bool GioiTinh, TinhTrang;
                    int CMND, DienThoaiNha, DienThoaiDD;
                    DateTime NgayTuyenDung, NgayCapCMND, NgaySinh;
                    while (dr.Read())
                    {
                        MaCN = dr.GetString(0);
                        Ho = dr.GetString(1);
                        Ten = dr.GetString(2);
                        GioiTinh = dr.GetBoolean(3);
                        NgaySinh = dr.GetDateTime(4);
                        NoiSinh = dr.GetString(5);
                        CMND = dr.GetInt32(6);
                        DanToc = dr.GetString(7);
                        TonGiao = dr.GetString(8);
                        QueQuan = dr.GetString(9);
                        DCThuongTru = dr.GetString(10);
                        NoiOHienNay = dr.GetString(11);
                        DienThoaiNha = dr.GetInt32(12);
                        DienThoaiDD = dr.GetInt32(13) ;
                        Email = dr.GetString(14);
                        TTHonNhan = dr.GetString(15);
                        NgayTuyenDung = dr.GetDateTime(16);
                        NoiLamViec = dr.GetString(17);
                        TrinhDoVanHoa = dr.GetString(18);
                        MaHeSoLuong = dr.GetString(19);
                        MaCV = dr.GetString(20);
                        MaPhuCap = dr.GetString(21);
                        MaLoaiCV = dr.GetString(22);
                        TaiKhoanNganHang = dr.GetString(23);
                        NoiCapCMND = dr.GetString(24);
                        NgayCapCMND = dr.GetDateTime(25);
                        Hinh = dr.GetString(26);
                        TinhTrang = dr.GetBoolean(27);
                        QuocTich = dr.GetString(28);
                        MaBHYT = dr.GetString(29);
                        MaBHXH = dr.GetString(30);
                        CongNhan congnhan = new CongNhan(MaCN, Ho, Ten, GioiTinh, NgaySinh, NoiSinh,
                        CMND, DanToc, TonGiao, QueQuan, DCThuongTru, NoiOHienNay,
                        DienThoaiNha, DienThoaiDD, Email, TTHonNhan, NgayTuyenDung,
                        NoiLamViec, TrinhDoVanHoa,MaCV,MaHeSoLuong, MaPhuCap,MaLoaiCV ,TaiKhoanNganHang,
                        NoiCapCMND, NgayCapCMND, Hinh, TinhTrang, QuocTich,
                        MaBHYT, MaBHXH);
                        list.Add(congnhan);
                    }
                }
                return list;
            }
            catch(SqlException p)
            {
                throw p;
            }
        }
        public List<ChucVu> ViewChucVu(string sql)
        {
            try
            {
                List<ChucVu> list = new List<ChucVu>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaCV;
                    string TenChucVu;
                    while (dr.Read())
                    {
                        MaCV = dr.GetString(0);
                        TenChucVu = dr.GetString(1);
                        ChucVu cv = new ChucVu(MaCV, TenChucVu);
                        list.Add(cv);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<CaLamViec> ViewCaLamViec(string sql)
        {
            try
            {
                List<CaLamViec> list = new List<CaLamViec>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaCaLV;
                    string TenCa;
                    DateTime GioBatDau;
                    DateTime GioKetThuc;
                    while (dr.Read())
                    {
                        MaCaLV=dr.GetString(0);
                        TenCa=dr.GetString(1);
                        GioBatDau = dr.GetDateTime(2);
                        GioKetThuc = dr.GetDateTime(3);
                        CaLamViec clv = new CaLamViec(MaCaLV, TenCa, GioBatDau, GioKetThuc);
                        list.Add(clv);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<Lich> ViewLich(string sql)
        {
            try
            {
                List<Lich> list = new List<Lich>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    while (dr.Read())
                    {
                        string MaCN;
                        bool n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31;
                        int Thang, Nam;
                        MaCN = dr.GetString(0);
                        n1 = dr.GetBoolean(1);
                        n2 = dr.GetBoolean(2);
                        n3 = dr.GetBoolean(3);
                        n4 = dr.GetBoolean(4);
                        n5 = dr.GetBoolean(5);
                        n6 = dr.GetBoolean(6);
                        n7 = dr.GetBoolean(7);
                        n8 = dr.GetBoolean(8);
                        n9 = dr.GetBoolean(9);
                        n10 = dr.GetBoolean(10);
                        n11 = dr.GetBoolean(11);
                        n12 = dr.GetBoolean(12);
                        n13 = dr.GetBoolean(13);
                        n14 = dr.GetBoolean(14);
                        n15 = dr.GetBoolean(15);
                        n16 = dr.GetBoolean(16);
                        n17 = dr.GetBoolean(17);
                        n18 = dr.GetBoolean(18);
                        n19 = dr.GetBoolean(19);
                        n20 = dr.GetBoolean(20);
                        n21 = dr.GetBoolean(21);
                        n22 = dr.GetBoolean(22);
                        n23 = dr.GetBoolean(23);
                        n24 = dr.GetBoolean(24);
                        n25 = dr.GetBoolean(25);
                        n26 = dr.GetBoolean(26);
                        n27 = dr.GetBoolean(27);
                        n28 = dr.GetBoolean(28);
                        n29 = dr.GetBoolean(29);
                        n30 = dr.GetBoolean(30);
                        n31 = dr.GetBoolean(31);
                        Thang = dr.GetInt32(32);
                        Nam = dr.GetInt32(33);
                        Lich lic = new Lich(MaCN, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, Thang, Nam);
                        list.Add(lic);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<GioLamViec> ViewGioLamViec(string sql)
        {
            try
            {
                List<GioLamViec> list = new List<GioLamViec>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaCaLV, Thu, MaCN, MaGioLamViec;
                    TimeSpan GioToi, GioVe, Tong;
                    DateTime NgayThangNam;
                    bool DiTre;
                    while (dr.Read())
                    {
                        MaCaLV=dr.GetString(0);
                        Thu=dr.GetString(1);
                        GioToi = dr.GetTimeSpan(2);
                        GioVe = dr.GetTimeSpan(3);
                        DiTre = dr.GetBoolean(4);
                        Tong = dr.GetTimeSpan(5);
                        NgayThangNam = dr.GetDateTime(6);
                        MaCN = dr.GetString(7);
                        MaGioLamViec = dr.GetString(8);
                        GioLamViec glv = new GioLamViec(MaCaLV, Thu, GioToi, GioVe, DiTre, Tong, NgayThangNam, MaCN, MaGioLamViec);
                        list.Add(glv);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<HeSoLuong> ViewHeSoLuong(string sql)
        {
            try
            {
                List<HeSoLuong> list = new List<HeSoLuong>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaHSL, TenHeSoLuong;
                    int HeSL;
                    while (dr.Read())
                    {
                        MaHSL=dr.GetString(0);
                        TenHeSoLuong=dr.GetString(1);
                        HeSL = dr.GetInt32(2);
                        HeSoLuong hsl = new HeSoLuong(MaHSL, TenHeSoLuong, HeSL);
                        list.Add(hsl);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<LoaiCongViec> ViewLoaiCongViec(string sql)
        {
            try
            {
                List<LoaiCongViec> list = new List<LoaiCongViec>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaLoaiCV;
                    string TenLCV;
                    while (dr.Read())
                    {
                        MaLoaiCV=dr.GetString(0);
                        TenLCV=dr.GetString(1);
                        LoaiCongViec lcv = new LoaiCongViec(MaLoaiCV, TenLCV);
                        list.Add(lcv);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<HopDong> ViewHopDong(string sql)
        {
            try
            {
                List<HopDong> list = new List<HopDong>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaHD;
                    string LoaiHopDong;
                    int KyHan;
                    while (dr.Read())
                    {
                        MaHD=dr.GetString(0);
                        LoaiHopDong=dr.GetString(1);
                        KyHan = dr.GetInt32(3);
                        HopDong hd = new HopDong(MaHD, LoaiHopDong, KyHan);
                        list.Add(hd);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<KyHopDong> ViewKyHopDong(string sql)
        {
            try
            {
                List<KyHopDong> list = new List<KyHopDong>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaHD;
                    DateTime TuNgay;
                    DateTime DenNgay;
                    DateTime NgayKyHD;
                    string DieuKhoan;
                    string MaCN;
                    while (dr.Read())
                    {
                        MaHD = dr.GetString(0);
                        TuNgay = dr.GetDateTime(1);
                        DenNgay = dr.GetDateTime(2);
                        NgayKyHD = dr.GetDateTime(3);
                        DieuKhoan = dr.GetString(4);
                        MaCN = dr.GetString(5);
                        KyHopDong khd= new KyHopDong(MaHD,TuNgay,DenNgay,NgayKyHD,DieuKhoan,MaCN);
                        list.Add(khd);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<Luong> ViewLuong(string sql)
        {
            try
            {
                List<Luong> list = new List<Luong>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaLuong, MaHSL, MaGioLamViec, MaPhuCap;
                    int TienLuong, Thang, Nam;
                    while (dr.Read())
                    {
                        MaLuong = dr.GetString(0);
                        MaHSL = dr.GetString(1);
                        MaGioLamViec = dr.GetString(2);
                        MaPhuCap = dr.GetString(3);
                        TienLuong = dr.GetInt32(4);
                        Thang = dr.GetInt32(5);
                        Nam = dr.GetInt32(6);
                        Luong l = new Luong(MaLuong, MaHSL, MaGioLamViec, MaPhuCap, TienLuong, Thang, Nam);
                        list.Add(l);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<PhuCap> ViewPhuCap(string sql)
        {
            try
            {
                List<PhuCap> list = new List<PhuCap>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaPhuCap, TenPhuCap;
                    int SoTienPhuCap;
                    while (dr.Read())
                    {
                        MaPhuCap= dr.GetString(0);
                        TenPhuCap= dr.GetString(1);
                        SoTienPhuCap = dr.GetInt32(2);
                        PhuCap pc= new PhuCap(MaPhuCap,TenPhuCap,SoTienPhuCap);
                        list.Add(pc);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public List<TaiKhoan> ViewTaiKhoan(string sql)
        {
            try
            {
                List<TaiKhoan> list = new List<TaiKhoan>();
                SqlDataReader dr = p.View(sql);
                if (dr != null)
                {
                    string MaTaiKhoan, MatKhau, PhanQuyen;
                    while (dr.Read())
                    {
                        MaTaiKhoan = dr.GetString(0);
                        MatKhau= dr.GetString(1);
                        PhanQuyen = dr.GetString(2);
                        TaiKhoan tk= new TaiKhoan(MaTaiKhoan,MatKhau,PhanQuyen);
                        list.Add(tk);
                    }
                }
                return list;
            }
            catch (SqlException p)
            {
                throw p;
            }
        }
        public int AddCongNhan(CongNhan congnhan)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@ho", congnhan.Ho));
            paras.Add(new SqlParameter("@ten", congnhan.Ten));
            paras.Add(new SqlParameter("@gioitinh", congnhan.GioiTinh));
            paras.Add(new SqlParameter("@ngaysinh", congnhan.NgaySinh));
            paras.Add(new SqlParameter("@noisinh", congnhan.NoiSinh));
            paras.Add(new SqlParameter("@cmnd", congnhan.CMND));
            paras.Add(new SqlParameter("@dantoc", congnhan.DanToc));
            paras.Add(new SqlParameter("@tongiao", congnhan.TonGiao));
            paras.Add(new SqlParameter("@quequan", congnhan.QueQuan));
            paras.Add(new SqlParameter("@dcthuongtru", congnhan.DCThuongTru));
            paras.Add(new SqlParameter("@noiohiennay", congnhan.NoiOHienNay));
            paras.Add(new SqlParameter("@dienthoainha", congnhan.DienThoaiNha));
            paras.Add(new SqlParameter("@dienthoaidd", congnhan.DienThoaiDD));
            paras.Add(new SqlParameter("@email", congnhan.Email));
            paras.Add(new SqlParameter("@ttranghonnhan", congnhan.TTHonNhan));
            paras.Add(new SqlParameter("@ngaytuyendung", congnhan.NgayTuyenDung));
            paras.Add(new SqlParameter("@noilamviec", congnhan.NoiLamViec));
            paras.Add(new SqlParameter("@trinhdovanhoa", congnhan.TrinhDoVanHoa));
            paras.Add(new SqlParameter("@mahesoluong", congnhan.MaHeSoLuong));
            paras.Add(new SqlParameter("@machucvu", congnhan.MaCV));
            paras.Add(new SqlParameter("@maphucap", congnhan.MaPhuCap));
            paras.Add(new SqlParameter("@maloaicongviec", congnhan.MaLoaiCV));
            paras.Add(new SqlParameter("@taikhoangnganhang", congnhan.TaiKhoanNganHang));
            paras.Add(new SqlParameter("@ngaycapcmnd", congnhan.NgayCapCMND));
            paras.Add(new SqlParameter("@noicapcmnd", congnhan.NoiCapCMND));
            paras.Add(new SqlParameter("@hinh", congnhan.Hinh));
            paras.Add(new SqlParameter("@tinhtranglamviec", congnhan.TinhTrang));
            paras.Add(new SqlParameter("@quoctich", congnhan.QuocTich));
            paras.Add(new SqlParameter("@mabhyt", congnhan.MaBHYT));
            paras.Add(new SqlParameter("@mabhxh", congnhan.MaBHXH));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddChucVu(ChucVu chucvu)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macv", chucvu.MaCV));
            paras.Add(new SqlParameter("@tenchucvu", chucvu.TenChucVu));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddCaLamViec(CaLamViec calamviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maclv", calamviec.MaCaLV));
            paras.Add(new SqlParameter("@tencalamviec", calamviec.TenCa));
            paras.Add(new SqlParameter("@giobatdau", calamviec.GioBatDau));
            paras.Add(new SqlParameter("@gioketthuc", calamviec.GioKetThuc));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddLich(Lich lich)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macn", lich.MaCN));
            paras.Add(new SqlParameter("@1", lich.n1));
            paras.Add(new SqlParameter("@2", lich.n2));
            paras.Add(new SqlParameter("@3", lich.n3));
            paras.Add(new SqlParameter("@4", lich.n4));
            paras.Add(new SqlParameter("@5", lich.n5));
            paras.Add(new SqlParameter("@6", lich.n6));
            paras.Add(new SqlParameter("@7", lich.n7));
            paras.Add(new SqlParameter("@8", lich.n8));
            paras.Add(new SqlParameter("@9", lich.n9));
            paras.Add(new SqlParameter("@10", lich.n10));
            paras.Add(new SqlParameter("@11", lich.n11));
            paras.Add(new SqlParameter("@12", lich.n12));
            paras.Add(new SqlParameter("@13", lich.n13));
            paras.Add(new SqlParameter("@14", lich.n14));
            paras.Add(new SqlParameter("@15", lich.n15));
            paras.Add(new SqlParameter("@16", lich.n16));
            paras.Add(new SqlParameter("@17", lich.n17));
            paras.Add(new SqlParameter("@18", lich.n18));
            paras.Add(new SqlParameter("@19", lich.n19));
            paras.Add(new SqlParameter("@20", lich.n20));
            paras.Add(new SqlParameter("@21", lich.n21));
            paras.Add(new SqlParameter("@22", lich.n22));
            paras.Add(new SqlParameter("@23", lich.n23));
            paras.Add(new SqlParameter("@24", lich.n24));
            paras.Add(new SqlParameter("@25", lich.n25));
            paras.Add(new SqlParameter("@26", lich.n26));
            paras.Add(new SqlParameter("@27", lich.n27));
            paras.Add(new SqlParameter("@28", lich.n28));
            paras.Add(new SqlParameter("@29", lich.n29));
            paras.Add(new SqlParameter("@30", lich.n30));
            paras.Add(new SqlParameter("@31", lich.n31));
            paras.Add(new SqlParameter("@Thang", lich.Thang));
            paras.Add(new SqlParameter("@Nam", lich.Nam));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddGioLamViec(GioLamViec giolamviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macalamviec", giolamviec.MaCaLV));
            paras.Add(new SqlParameter("@giotoi", giolamviec.GioToi));
            paras.Add(new SqlParameter("@thu", giolamviec.Thu));
            paras.Add(new SqlParameter("@giotoi", giolamviec.GioToi));
            paras.Add(new SqlParameter("@ditre", giolamviec.DiTre));
            paras.Add(new SqlParameter("@ngaythangnam", giolamviec.NgayThangNam));
            paras.Add(new SqlParameter("@macn", giolamviec.MaCN));
            paras.Add(new SqlParameter("@magiolamviec", giolamviec.MaGioLamViec));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddHeSoLuong(HeSoLuong hsl)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mahsl", hsl.MaHSL));
            paras.Add(new SqlParameter("@tenhesoluong", hsl.TenHeSoLuong));
            paras.Add(new SqlParameter("@hesoluong", hsl.HeSL));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddLoaiCongViec(LoaiCongViec loaicongviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maloaicongviec",loaicongviec.MaLoaiCV));
            paras.Add(new SqlParameter("@tenloaicongviec", loaicongviec.TenLCV));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddHopDong(HopDong hopdong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mahopdong",hopdong.MaHD));
            paras.Add(new SqlParameter("@loaihopdong", hopdong.LoaiHopDong));
            paras.Add(new SqlParameter("@kyhan", hopdong.KyHan));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddKyHopDong(KyHopDong kyhopdong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mahd",kyhopdong.MaHD));
            paras.Add(new SqlParameter("@tungay", kyhopdong.TuNgay));
            paras.Add(new SqlParameter("@denngay", kyhopdong.DenNgay));
            paras.Add(new SqlParameter("@ngaykyhopdong", kyhopdong.NgayKyHD));
            paras.Add(new SqlParameter("@dieukhoan", kyhopdong.DieuKhoan));
            paras.Add(new SqlParameter("@macn", kyhopdong.MaCN));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddLuong(Luong luong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@thang",luong.Thang));
            paras.Add(new SqlParameter("@nam", luong.Nam));
            paras.Add(new SqlParameter("@macn", luong.MaCN));
            paras.Add(new SqlParameter("@mahesoluong", luong.MaHSL));
            paras.Add(new SqlParameter("@magiolamviec", luong.MaGioLamViec));
            paras.Add(new SqlParameter("@maphucap", luong.MaPhuCap));
            paras.Add(new SqlParameter("@tong", luong.TienLuong));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddPhuCap(PhuCap phucap)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maphucap",phucap.MaPhuCap));
            paras.Add(new SqlParameter("@tenphucap", phucap.TenPhuCap));
            paras.Add(new SqlParameter("@sotienphucap", phucap.SoTienPhuCap));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int AddTaiKhoan(TaiKhoan taikhoan)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mataikhoan",taikhoan.MaTaiKhoan));
            paras.Add(new SqlParameter("@matkhau",taikhoan.MatKhau));
            paras.Add(new SqlParameter("@phanquyen", taikhoan.PhanQuyen));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateCongNhan(CongNhan congnhan)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
    }
        public int UpdateChucVu(ChucVu chucvu)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macv", chucvu.MaCV));
            paras.Add(new SqlParameter("@macv", chucvu.MaCV));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateCaLamViec(CaLamViec calamviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maclv", calamviec.MaCaLV));
            paras.Add(new SqlParameter("@maclv", calamviec.MaCaLV));
            paras.Add(new SqlParameter("@maclv", calamviec.MaCaLV));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateGioLamViec(GioLamViec giolamviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("magiolamviec", giolamviec.MaGioLamViec));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateLich(Lich lich)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macn", lich.MaCN));
            paras.Add(new SqlParameter("@macn", lich.MaCN));
            paras.Add(new SqlParameter("@macn", lich.MaCN));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateHeSoLuong(HeSoLuong hesoluong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mahsl",hesoluong.MaHSL));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateLoaiCongViec(LoaiCongViec loaicongviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maloaicongviec", loaicongviec.MaLoaiCV));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateHopDong(HopDong hopdong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mahopdong", hopdong.MaHD));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateLuong(Luong luong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macn", luong.MaPhuCap));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdatePhuCap(PhuCap phucap)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maphucap", phucap.MaPhuCap));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int UpdateTaiKhoan(TaiKhoan taikhoan)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mataikhoan", taikhoan.MaTaiKhoan));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteCongNhan(CongNhan congnhan)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            paras.Add(new SqlParameter("@macn", congnhan.MaCN));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteChucVu(ChucVu chucvu)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macv", chucvu.MaCV));
            paras.Add(new SqlParameter("@macv", chucvu.MaCV));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteCaLamViec(CaLamViec calamviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maclv", calamviec.MaCaLV));
            paras.Add(new SqlParameter("@maclv", calamviec.MaCaLV));
            paras.Add(new SqlParameter("@maclv", calamviec.MaCaLV));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteGioLamViec(GioLamViec giolamviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("magiolamviec", giolamviec.MaGioLamViec));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteLich(Lich lich)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macn", lich.MaCN));
            paras.Add(new SqlParameter("@macn", lich.MaCN));
            paras.Add(new SqlParameter("@macn", lich.MaCN));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteHeSoLuong(HeSoLuong hesoluong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mahsl", hesoluong.MaHSL));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteLoaiCongViec(LoaiCongViec loaicongviec)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maloaicongviec", loaicongviec.MaLoaiCV));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteHopDong(HopDong hopdong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mahopdong", hopdong.MaHD));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteLuong(Luong luong)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@macn", luong.MaPhuCap));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeletePhuCap(PhuCap phucap)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@maphucap", phucap.MaPhuCap));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
        public int DeleteTaiKhoan(TaiKhoan taikhoan)
        {
            List<SqlParameter> paras = new List<SqlParameter>();
            paras.Add(new SqlParameter("@mataikhoan", taikhoan.MaTaiKhoan));
            return p.ExecNonQuery("", CommandType.StoredProcedure, paras);
        }
    }
}
