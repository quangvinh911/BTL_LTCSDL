using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
namespace BUS
{
    public class CongnhanBUS
    {
        public List<CongNhan> ViewCongNhan(string sql)
        {
            return (new Congnhan().ViewCongNhan(sql));
        }
        public int AddGioLamViec(GioLamViec glv)
        {
            return (new Congnhan().AddGioLamViec(glv));
        }
        public int AddCongNhan(CongNhan cn)
        {
            return (new Congnhan().AddCongNhan(cn));
        }
        public int UpdateCongNhan(CongNhan cn)
        {
            return (new Congnhan().UpdateCongNhan(cn));
        }
        public int DeleteCongNhan(string macn)
        {
            return (new Congnhan().DeleteCongNhan(macn));
        }
        public int UpdateGioLamViec(string maglv,TimeSpan giove)
        {
            return (new Congnhan().UpdateGioLamViec(maglv, giove));
        }
        public int UpdateGioLamViec1(GioLamViec glv)
        {
            return (new Congnhan().UpdateGioLamViec1(glv));
        }
        public int DeleteGioLamViec(string maglv, DateTime ngay)
        {
            return (new Congnhan().DeleteGioLamViec(maglv, ngay));
        }
        public List<Lich> ViewLich(string sql)
        {
            return (new Congnhan().ViewLich(sql));
        }
        public List<GioLamViec> ViewGioLamViec(string sql)
        {
            return (new Congnhan().ViewGioLamViec(sql));
        }
        public List<ViewKyHopDong> ViewKyHopDong(string sql)
        {
            return (new Congnhan().ViewKyHopDong(sql));
        }
        public int AddKyHopDong(KyHopDong khd)
        {
            return (new Congnhan().AddKyHopDong(khd));
        }
        public int UpdateKyHopDong(KyHopDong khd)
        {
            return (new Congnhan().UpdateKyHopDong(khd));
        }
        public int DeleteKyHopDong(string makhd)
        {
            return (new Congnhan().DeleteKyHopDong(makhd));
        }
        public List<TaiKhoan> ViewTaiKhoan(string sql)
        {
            return (new Congnhan().ViewTaiKhoan(sql));
        }
        public int AddTaiKhoan(TaiKhoan tk)
        {
            return (new Congnhan().AddTaiKhoan(tk));
        }
        public int UpdataTaiKhoan(TaiKhoan tk)
        {
            return (new Congnhan().UpdateTaiKhoan(tk));
        }
        public int DeleteTaiKhoan(string matk)
        {
            return (new Congnhan().DeleteTaiKhoan(matk));
        }
        public List<PhuCap> ViewPhuCap(string sql)
        {
            return (new Congnhan().ViewPhuCap(sql));
        }
        public int AddPhuCap(PhuCap pc)
        {
            return (new Congnhan().AddPhuCap(pc));
        }
        public int UpdatePhuCap(PhuCap pc)
        {
            return (new Congnhan().UpdatePhuCap(pc));
        }
        public int DeletePhuCap(string mapc)
        {
            return (new Congnhan().DeletePhuCap(mapc));
        }
        public int AddHopDong(HopDong hd)
        {
            return (new Congnhan().AddHopDong(hd));
        }
        public int UpdateHopDong(HopDong hd)
        {
            return (new Congnhan().UpdateHopDong(hd));
        }
        public int DeleteHopDong(string mahd)
        {
            return (new Congnhan().DeleteHopDong(mahd));
        }
        public List<ChucVu> ViewChucVu(string sql)
        {
            return (new Congnhan().ViewChucVu(sql));
        }
        public int AddChucVu(ChucVu cv)
        {
            return (new Congnhan().AddChucVu(cv));
        }
        public int UpdateChucVu(ChucVu cv)
        {
            return (new Congnhan().UpdateChucVu(cv));
        }
        public int DeleteChucVu(string macv)
        {
            return (new Congnhan().DeleteChucVu(macv));
        }
        public List<HeSoLuong> ViewHeSoLuong(string sql)
        {
            return (new Congnhan().ViewHeSoLuong(sql));
        }
        public int AddHeSoLuong(HeSoLuong hsl)
        {
            return (new Congnhan().AddHeSoLuong(hsl));
        }
        public int UpdateHeSoLuong(HeSoLuong hsl)
        {
            return (new Congnhan().UpdateHeSoLuong(hsl));
        }
        public int DeleteHeSoLuong(string mahsl)
        {
            return (new Congnhan().DeleteHeSoLuong(mahsl));
        }
        public int AddLuong(string macn, DateTime dt)
        {
            return (new Congnhan().AddLuong(macn, dt));
        }
        public List<Luong> ViewLuong(string sql)
        {
            return (new Congnhan().ViewLuong(sql));
        }
    }
}
