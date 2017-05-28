USE [master]
GO
/****** Object:  Database [QLCN]    Script Date: 05/28/2017 16:01:44 ******/
CREATE DATABASE [QLCN] ON  PRIMARY 
( NAME = N'QLCN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLCN3.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLCN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLCN_1.LDF' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLCN] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCN] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLCN] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLCN] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLCN] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLCN] SET ARITHABORT OFF
GO
ALTER DATABASE [QLCN] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLCN] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLCN] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLCN] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLCN] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLCN] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLCN] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLCN] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLCN] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLCN] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLCN] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLCN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLCN] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLCN] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLCN] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLCN] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLCN] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLCN] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLCN] SET  READ_WRITE
GO
ALTER DATABASE [QLCN] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLCN] SET  MULTI_USER
GO
ALTER DATABASE [QLCN] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLCN] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLCN', N'ON'
GO
USE [QLCN]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 05/28/2017 16:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHD] [nvarchar](10) NOT NULL,
	[LoaiHopDong] [nvarchar](50) NULL,
	[KyHan] [nvarchar](50) NULL,
 CONSTRAINT [PK_HopDong_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HopDong] ([MaHD], [LoaiHopDong], [KyHan]) VALUES (N'HD03T', N'Hợp Đồng 4', N'3 tháng')
INSERT [dbo].[HopDong] ([MaHD], [LoaiHopDong], [KyHan]) VALUES (N'HD06T', N'Hợp Đồng 3', N'6 tháng')
INSERT [dbo].[HopDong] ([MaHD], [LoaiHopDong], [KyHan]) VALUES (N'HD09T', N'Hợp Đồng 2', N'9 tháng')
INSERT [dbo].[HopDong] ([MaHD], [LoaiHopDong], [KyHan]) VALUES (N'HD12T', N'Hợp Đồng 1', N'12 tháng')
/****** Object:  Table [dbo].[HeSoLuong]    Script Date: 05/28/2017 16:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeSoLuong](
	[MaHSL] [nvarchar](10) NOT NULL,
	[TenHeSoLuong] [nvarchar](50) NULL,
	[HeSoLuong] [float] NULL,
 CONSTRAINT [PK_HeSoLuong] PRIMARY KEY CLUSTERED 
(
	[MaHSL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HeSoLuong] ([MaHSL], [TenHeSoLuong], [HeSoLuong]) VALUES (N'HSL01', N'Hệ Số Lương 1', 1.55)
INSERT [dbo].[HeSoLuong] ([MaHSL], [TenHeSoLuong], [HeSoLuong]) VALUES (N'HSL02', N'Hệ Số Lương 2', 1.76)
INSERT [dbo].[HeSoLuong] ([MaHSL], [TenHeSoLuong], [HeSoLuong]) VALUES (N'HSL03', N'Hệ Số Lương 3', 1.83)
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 05/28/2017 16:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[PhanQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [PhanQuyen]) VALUES (N'admin', N'admin', NULL)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [PhanQuyen]) VALUES (N'user1', N'user1', NULL)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [PhanQuyen]) VALUES (N'user2', N'user2', NULL)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [PhanQuyen]) VALUES (N'usernv1', N'usernv1', NULL)
/****** Object:  Table [dbo].[PhuCap]    Script Date: 05/28/2017 16:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuCap](
	[MaPhuCap] [nvarchar](10) NOT NULL,
	[TenPhucCap] [nvarchar](50) NULL,
	[SoTienPhuCap] [money] NULL,
 CONSTRAINT [PK_PhuCap] PRIMARY KEY CLUSTERED 
(
	[MaPhuCap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhuCap] ([MaPhuCap], [TenPhucCap], [SoTienPhuCap]) VALUES (N'PC01', N'Tiền Xăng', 300000.0000)
INSERT [dbo].[PhuCap] ([MaPhuCap], [TenPhucCap], [SoTienPhuCap]) VALUES (N'PC02', N'Tiền Làm Ngoài Giờ', 300000.0000)
INSERT [dbo].[PhuCap] ([MaPhuCap], [TenPhucCap], [SoTienPhuCap]) VALUES (N'PC03', N'Tiền Ăn Trưa Chiều', 500000.0000)
/****** Object:  Table [dbo].[Luong]    Script Date: 05/28/2017 16:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[Thang] [nvarchar](10) NOT NULL,
	[Nam] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaHSL] [nvarchar](10) NULL,
	[MaPhuCap] [nvarchar](10) NULL,
	[GioLamViec] [nvarchar](50) NULL,
	[Luong] [money] NULL,
 CONSTRAINT [PK_Luong] PRIMARY KEY CLUSTERED 
(
	[Thang] ASC,
	[Nam] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN001', N'HSL02', N'PC03', N'34:30', 4500000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN002', N'HSL01', N'PC01', N'31:30', 3800000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN003', N'HSL01', N'PC01', N'33:00', 3900000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN004', N'HSL03', N'PC03', N'31:30', 3850000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN005', N'HSL03', N'PC01', N'34:30', 4200000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN006', N'HSL01', N'PC01', N'31:30', 3800000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN007', N'HSL01', N'PC03', N'31:30', 3850000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN008', N'HSL01', N'PC01', N'33:00', 3900000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN009', N'HSL01', N'PC03', N'34:30', 4520000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'5', N'2017', N'CN010', N'HSL03', N'PC01', N'34:30', 4320000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN001', N'HSL02', N'PC03', N'34:30', 4510000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN002', N'HSL01', N'PC01', N'31:30', 3860000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN003', N'HSL01', N'PC01', N'33:00', 3970000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN004', N'HSL03', N'PC03', N'31:30', 3810000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN005', N'HSL03', N'PC01', N'34:30', 4300000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN006', N'HSL01', N'PC01', N'31:30', 3700000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN007', N'HSL01', N'PC03', N'10:30', 1100000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN008', N'HSL01', N'PC01', N'33:00', 3970000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN009', N'HSL01', N'PC03', N'34:30', 4520000.0000)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (N'6', N'2017', N'CN010', N'HSL01', N'PC01', N'34:30', 4220000.0000)
/****** Object:  Table [dbo].[ChucVu]    Script Date: 05/28/2017 16:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCV] [nvarchar](10) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV01', N'Giám Đốc')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV02', N'Phó Giám Đốc')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV03', N'Tổ Trưởng')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV04', N'Tổ Phó')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV05', N'Công Nhân')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV06', N'Công Nhân Thời Vụ')
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 05/28/2017 16:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[MaCaLV] [nvarchar](10) NOT NULL,
	[TenCa] [nvarchar](50) NULL,
	[GioBatDau] [time](0) NULL,
	[GioKetThuc] [time](0) NULL,
 CONSTRAINT [PK_CaLamViec] PRIMARY KEY CLUSTERED 
(
	[MaCaLV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CaLamViec] ([MaCaLV], [TenCa], [GioBatDau], [GioKetThuc]) VALUES (N'CALV1', N'Ca 1', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time))
INSERT [dbo].[CaLamViec] ([MaCaLV], [TenCa], [GioBatDau], [GioKetThuc]) VALUES (N'CALV2', N'Ca 2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0008E80000000000 AS Time))
INSERT [dbo].[CaLamViec] ([MaCaLV], [TenCa], [GioBatDau], [GioKetThuc]) VALUES (N'CALV3', N'Ca Toi', CAST(0x0020FD0000000000 AS Time), CAST(0x0060350100000000 AS Time))
/****** Object:  Table [dbo].[CongNhan]    Script Date: 05/28/2017 16:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongNhan](
	[MaNV] [nvarchar](10) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[CMND] [nchar](30) NULL,
	[DanToc] [nvarchar](10) NULL,
	[TonGiao] [nvarchar](10) NULL,
	[QueQuan] [nvarchar](50) NOT NULL,
	[DCThuongTru] [nvarchar](50) NULL,
	[NoiOHienNay] [nvarchar](50) NULL,
	[DienThoaiNha] [nchar](30) NULL,
	[DienThoaiDD] [nchar](30) NULL,
	[Email] [nvarchar](50) NULL,
	[TTrangHonNhan] [nvarchar](50) NULL,
	[NgayTuyenDung] [date] NULL,
	[NoiLamViec] [nvarchar](50) NULL,
	[TrinhDoVanHoa] [nvarchar](50) NULL,
	[MaHSL] [nvarchar](10) NULL,
	[MaCV] [nvarchar](10) NULL,
	[MaPhuCap] [nvarchar](10) NULL,
	[TaiKhoanNganHang] [nvarchar](50) NULL,
	[NgayCapCMND] [date] NULL,
	[NoiCapCMND] [nvarchar](50) NULL,
	[Hinh] [nvarchar](50) NULL,
	[TinhTrangLamViec] [nvarchar](20) NULL,
	[QuocTich] [nvarchar](50) NULL,
	[MaBHYT] [nvarchar](50) NULL,
	[MaBHXH] [nvarchar](50) NULL,
 CONSTRAINT [PK_CongNhan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN001', N'Lê', N'Huỳnh', N'Nam', CAST(0x6D1F0B00 AS Date), N'TP.HCM', N'301627555                     ', N'Kinh', N'Không', N'Long An', N'Huyện Bến Lức, Long An', N'Nguyễn Kiệm, Phường 3, Quận Gò Vấp', N'0839402486                    ', N'01202464521                   ', N'CN01@gmail', N'Độc thân', CAST(0xB43C0B00 AS Date), N'1', N'12/12', N'HSL02', N'CV05', N'PC03', N'WPEP4TCMT9', CAST(0x66380B00 AS Date), N'Long An', N'1', N'Còn', N'Việt Nam', N'LTW92NU89ZR3HT', N'NVE49HPJ08YZZ7')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN002', N'Huỳnh Văn', N'Nam', N'Nam', CAST(0xB31B0B00 AS Date), N'Cà Mau', N'987654321                     ', N'Hoa', N'Phật', N'Cà Mau', N'TP. Cà Mau, Cà Mau', N'Kinh Dương Vương, Bình Tân', N'0832795458                    ', N'01226754231                   ', N'CN02@gmail', N'Độc thân', CAST(0x883C0B00 AS Date), N'1', N'11/12', N'HSL02', N'CV05', N'PC01', N'HF27X4DB22', CAST(0x66380B00 AS Date), N'Cà Mau', N'1', N'Còn', N'Việt Nam', N'VJY0N52DE7T9XB', N'47EPWN8EGO5HAY')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN003', N'Trần ', N'Thủy', N'Nữ', CAST(0x921C0B00 AS Date), N'Bạc Liêu', N'123456789                     ', N'Kinh', N'Không', N'Bạc Liêu', N'Thị Xã Giá Rai, Bạc Liêu', N'Lý Thường Kiệt, Tân Bình', N'0833002278                    ', N'01226754231                   ', N'CN03@gmail', N'Kết Hôn', CAST(0xAF3C0B00 AS Date), N'1', N'9/12', N'HSL01', N'CV05', N'PC01', N'ARHIB2A39K', CAST(0x66380B00 AS Date), N'Bạc Liêu', N'1', N'Còn', N'Việt Nam', N'MBQA8B6OS9HCG5', N'U110JEV5BAECIV')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN004', N'Nguyễn Trần Cẩm ', N'Tiên', N'Nữ', CAST(0x2A200B00 AS Date), N'Đồng Tháp', N'123456789                     ', N'Hoa', N'Thiên Chúa', N'Đồng Tháp', N'TP. Cao Lãnh, Đồng Tháp', N'Trường Chinh, Tân Bình', N'0834963568                    ', N'01202464521                   ', N'CN04@gmail', N'Độc thân', CAST(0x9D3C0B00 AS Date), N'1', N'Đại Học', N'HSL03', N'CV03', N'PC03', N'2USH3YJ54U', CAST(0xF1360B00 AS Date), N'Đồng Tháp', N'1', N'Còn', N'Việt Nam', N'0IACB0HIZRZSKF', N'336HLKOEV1U61C')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN005', N'Hoàng Thị ', N'Cầm', N'Nữ', CAST(0x541A0B00 AS Date), N'An Giang', N'301627555                     ', N'Khơ Me', N'Không', N'An Giang', N'TP. Long Xuyên, An Giang', N'Hoàng Hoa Thám, Phú Nhuận', N'0839913033                    ', N'0925556432                    ', N'CN05@gmail', N'Độc Thân', CAST(0xA63C0B00 AS Date), N'1', N'Cao Đẵng', N'HSL03', N'CV04', N'PC01', N'JW0E5ROX9C', CAST(0xA7320B00 AS Date), N'An Giang', N'1', N'Không', N'Việt Nam', N'XA3FRZUGTH0956', N'994ZPIPA8MF6UG')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN006', N'Nguyễn Tuấn', N'Anh', N'Nam', CAST(0x66200B00 AS Date), N'Bình Phước', N'233333666                     ', N'Kinh', N'Không', N'Bình Phước', N'TX. Đồng Xoài, Bình Phước', N'Đặng Huy Trứ, HCM', N'0838441681                    ', N'0988269613                    ', N'CN06@gmail', N'Độc Thân', CAST(0x6A3C0B00 AS Date), N'1', N'6/12', N'HSL01', N'CV06', N'PC01', N'PVG6IAIW2O', CAST(0xF1360B00 AS Date), N'Bình Phước', N'1', N'Không', N'Việt Nam', N'AVX12CFN1HMU27', N'A2PQFESUC7PU8M')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN007', N'Lê Thị Mỹ', N'Thủy', N'Nữ', CAST(0xBC1B0B00 AS Date), N'Hậu Giang', N'9552430458                    ', N'Kinh', N'Thiên Chúa', N'Hậu Giang', N'TP.Vị Thanh, Hâu Giang', N'Phan Văn Trị, HCM', N'0835809161                    ', N'0992422692                    ', N'CN07@gmail', N'Độc Thân', CAST(0x603C0B00 AS Date), N'1', N'12/12', N'HSL02', N'CV05', N'PC03', N'5K5RK9OJLK', CAST(0xE0350B00 AS Date), N'Hậu Giang', N'1', N'Còn', N'Việt Nam', N'955VSCAWU57IM0', N'6QH062NPVDHO2B')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN008', N'Ngô Tiến', N'Minh', N'Nam', CAST(0x331A0B00 AS Date), N'Kiên Giang', N'7165804009                    ', N'Hoa', N'Không', N'Kiên Giang', N'TP.Rạch Giá, Kiên Giang', N'Trần Phú, HCM', N'0833497011                    ', N'0945131770                    ', N'CN08@gmail', N'Độc Thân', CAST(0xE43B0B00 AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'PZ8RHY1GGM', CAST(0xE0350B00 AS Date), N'TP.HCM', N'1', N'Còn', N'Việt Nam', N'I8XLNUWU19ZJZK', N'GYBQHM2LV3TP5H')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN009', N'Lê Nguyễn Hồng', N'Thanh', N'Nữ', CAST(0x6A180B00 AS Date), N'Tiền Giang', N'6753936426                    ', N'Kinh', N'Không', N'Tiền Giang', N'H. Chợ Gạo, Tiền Giang', N'Quốc Lộ 1K, Dĩ An, Bình Dương', N'0838409428                    ', N'0979986574                    ', N'CN09@gmail', N'Độc Thân', CAST(0xCA3B0B00 AS Date), N'1', N'8/12', N'HSL01', N'CV05', N'PC03', N'C1JNYAT4RS', CAST(0xE0350B00 AS Date), N'Tiền Giang', N'1', N'Còn', N'Việt Nam', N'4FIYERRDDIF6J6', N'Z8HX24MMGAHU6N')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN010', N'Bùi Ngọc', N'Nam', N'Nam', CAST(0xE6150B00 AS Date), N'Bến Tre', N'8951168408                    ', N'Kinh', N'Không', N'Bến Tre', N'Thạnh Phú, Bến Tre', N'Tân Bữu, Bến Lức, Long An', N'0833782773                    ', N'0916076805                    ', N'CN10@gmail', N'Độc Thân', CAST(0xF23B0B00 AS Date), N'1', N'9/12', N'HSL01', N'CV05', N'PC01', N'UZ76UHIDKW', CAST(0x37360B00 AS Date), N'TP.HCM', N'1', N'Còn', N'Việt Nam', N'ZFAD1IN9WY6B8F', N'7S8Y5AMJHQIFR0')
/****** Object:  StoredProcedure [dbo].[AddCongNhan]    Script Date: 05/28/2017 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddCongNhan]
	(@macn nvarchar(10),
	@ho nvarchar(50),
	@ten nvarchar(10),
	@gioitinh nvarchar(3),
	@ngaysinh date,
	@noisinh nvarchar(50),
	@cmnd nchar(30),
	@dantoc nvarchar(10),
	@tongiao nvarchar(10),
	@quequan nvarchar(50),
	@dcthuongtru nvarchar(50),
	@noiohiennay nvarchar(50),
	@dienthoainha nchar(30),
	@dienthoaididong nchar(30),
	@email nchar(30),
	@ttranghonnhan nvarchar(50),
	@ngaytuyendung date,
	@noilamviec nvarchar(50),
	@trinhdovanhoa nvarchar(50),
	@mahsl nvarchar(10),
	@macvu nvarchar(10),
	@maphucap nvarchar(10),
	@taikhoannganhang nvarchar(50),
	@ngaycapcmnd date,
	@noicap nvarchar(50),
	@hinh nvarchar(50),
	@trinhtranglamviec  nvarchar(20),
	@quoctich  nvarchar(50),
	@mabhyt nvarchar(50),
	@mabhxh  nvarchar(50)
	)
AS
BEGIN
INSERT INTO CongNhan(MaNV,Ho,Ten,GioiTinh,NgaySinh,NoiSinh,CMND,DanToc,TonGiao,QueQuan,DCThuongTru,NoiOHienNay,DienThoaiNha,DienThoaiDD,Email,TTrangHonNhan,NgayTuyenDung,NoiLamViec,TrinhDoVanHoa,MaHSL,MaCV,MaPhuCap,NgayCapCMND,NoiCapCMND,Hinh,TinhTrangLamViec,QuocTich,MaBHYT,MaBHXH)
	VALUES(@macn,@ho,@ten,@gioitinh,@ngaysinh,@noisinh,@cmnd,@dantoc,@tongiao,@quequan,@dcthuongtru,@noiohiennay,@dienthoainha,@dienthoaididong,@email,@ttranghonnhan,@ngaytuyendung,@noilamviec,@trinhdovanhoa,@mahsl,@macvu,@maphucap,@ngaycapcmnd,@noicap,@hinh,@trinhtranglamviec,@quoctich,@mabhyt,@mabhxh)
END
GO
/****** Object:  Table [dbo].[Lich]    Script Date: 05/28/2017 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lich](
	[MaNV] [nvarchar](10) NOT NULL,
	[1] [bit] NULL,
	[2] [bit] NULL,
	[3] [bit] NULL,
	[4] [bit] NULL,
	[5] [bit] NULL,
	[6] [bit] NULL,
	[7] [bit] NULL,
	[8] [bit] NULL,
	[9] [bit] NULL,
	[10] [bit] NULL,
	[11] [bit] NULL,
	[12] [bit] NULL,
	[13] [bit] NULL,
	[14] [bit] NULL,
	[15] [bit] NULL,
	[16] [bit] NULL,
	[17] [bit] NULL,
	[18] [bit] NULL,
	[19] [bit] NULL,
	[20] [bit] NULL,
	[21] [bit] NULL,
	[22] [bit] NULL,
	[23] [bit] NULL,
	[24] [bit] NULL,
	[25] [bit] NULL,
	[26] [bit] NULL,
	[27] [bit] NULL,
	[28] [bit] NULL,
	[29] [bit] NULL,
	[30] [bit] NULL,
	[31] [bit] NULL,
	[Tong] [int] NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
 CONSTRAINT [PK_Lich] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[Thang] ASC,
	[Nam] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN001', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN001', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN002', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN002', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN003', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN003', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN004', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN004', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN005', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN005', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN006', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN006', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN007', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN007', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN008', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN008', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN009', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN009', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN010', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 5, 2017)
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Tong], [Thang], [Nam]) VALUES (N'CN010', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 6, 2017)
/****** Object:  Table [dbo].[KyHopDong]    Script Date: 05/28/2017 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyHopDong](
	[MaHD] [nvarchar](10) NOT NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[NgayKyHD] [date] NULL,
	[DieuKhoan] [nvarchar](50) NULL,
	[MaNV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HopDong] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD03T', CAST(0xDD3C0B00 AS Date), CAST(0x393D0B00 AS Date), CAST(0xDB3C0B00 AS Date), NULL, N'CN005')
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD09T', CAST(0xDD3C0B00 AS Date), CAST(0xF03D0B00 AS Date), CAST(0xDA3C0B00 AS Date), NULL, N'CN007')
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD12T', CAST(0xDD3C0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0xDB3C0B00 AS Date), NULL, N'CN001')
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD12T', CAST(0xDD3C0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0xDB3C0B00 AS Date), NULL, N'CN002')
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD12T', CAST(0xDD3C0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0xDB3C0B00 AS Date), NULL, N'CN003')
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD12T', CAST(0xDD3C0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0xDA3C0B00 AS Date), NULL, N'CN004')
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD12T', CAST(0xDD3C0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0xDA3C0B00 AS Date), NULL, N'CN008')
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD12T', CAST(0xDD3C0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0xDA3C0B00 AS Date), NULL, N'CN009')
INSERT [dbo].[KyHopDong] ([MaHD], [TuNgay], [DenNgay], [NgayKyHD], [DieuKhoan], [MaNV]) VALUES (N'HD12T', CAST(0xDD3C0B00 AS Date), CAST(0x4A3E0B00 AS Date), CAST(0xDA3C0B00 AS Date), NULL, N'CN010')
/****** Object:  Table [dbo].[GioLamViec]    Script Date: 05/28/2017 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioLamViec](
	[MaCaLV] [nvarchar](10) NOT NULL,
	[Thu] [nvarchar](10) NULL,
	[GioToi] [time](0) NULL,
	[GioVe] [time](0) NULL,
	[DiTre] [bit] NULL,
	[Tong] [time](0) NULL,
	[Ngay/Thang/Nam] [date] NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaGioLamViec] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_GioLamViec] PRIMARY KEY CLUSTERED 
(
	[MaCaLV] ASC,
	[Ngay/Thang/Nam] ASC,
	[MaNV] ASC,
	[MaGioLamViec] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN001', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN002', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN003', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN004', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN005', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN006', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN007', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN008', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN009', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN010', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN001', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN002', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN003', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN004', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN005', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN006', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN007', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN008', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN009', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN010', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN001', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN002', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN003', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN004', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN005', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN006', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN007', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN008', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN009', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN010', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN001', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN002', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN003', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN004', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN005', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN006', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN008', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN009', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'5', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN010', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN001', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN002', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN003', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN004', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN005', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN006', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN008', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN009', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN010', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN001', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN002', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN003', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN004', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN005', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN006', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN007', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN008', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN009', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN010', N'GLV01')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN001', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN002', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN003', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN004', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN005', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN006', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN007', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN008', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN009', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN010', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN001', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN002', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN003', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN004', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN005', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN006', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN007', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN008', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN009', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN010', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN001', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN002', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN003', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN004', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN005', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN006', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN007', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN008', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN009', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN010', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN001', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN002', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN003', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN004', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN005', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN006', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN008', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN009', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN010', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN001', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN002', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN003', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN004', N'GLV02')
GO
print 'Processed 100 total records'
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN005', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN006', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN008', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN009', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN010', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN001', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN002', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x0078690000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN003', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B8A10000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN004', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x0078690000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 0, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN005', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN006', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x0080700000000000 AS Time), CAST(0x00B09A0000000000 AS Time), 1, CAST(0x00302A0000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN007', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN008', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN009', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV2', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN010', N'GLV02')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN001', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN002', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN003', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN004', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN005', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN006', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN007', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN008', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN009', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'2', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDD3C0B00 AS Date), N'CN010', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN001', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN002', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN003', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN004', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN005', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN006', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN007', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN008', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN009', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'3', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDE3C0B00 AS Date), N'CN010', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN001', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN002', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN003', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN004', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN005', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN006', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN007', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN008', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN009', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'4', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xDF3C0B00 AS Date), N'CN010', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN001', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN002', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN003', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN004', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN005', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN006', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN008', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN009', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'5', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE03C0B00 AS Date), N'CN010', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN001', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN002', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN003', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN004', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN005', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN006', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN008', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN009', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'6', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE13C0B00 AS Date), N'CN010', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN001', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN002', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00E0C40000000000 AS Time), CAST(0x0018F60000000000 AS Time), 1, CAST(0x0038310000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN003', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN004', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN005', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN006', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN007', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN008', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN009', N'GLV03')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV3', N'7', CAST(0x00D8BD0000000000 AS Time), CAST(0x0018F60000000000 AS Time), 0, CAST(0x0040380000000000 AS Time), CAST(0xE23C0B00 AS Date), N'CN010', N'GLV03')
/****** Object:  StoredProcedure [dbo].[AddGioLamViec]    Script Date: 05/28/2017 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddGioLamViec]
	@macalamviec nvarchar(10),
	@giotoi time(0),
	@thu nvarchar(10),
	@ditre bit,
	@ngaythangnam date,
	@macn nvarchar(10),
	@magiolamviec nvarchar(10)
as
begin
	insert into GioLamViec(MaCaLV,GioToi,Thu,DiTre,[Ngay/Thang/Nam],MaNV,MaGioLamViec) values(@macalamviec,@giotoi,@thu,@ditre,@ngaythangnam,@macn,@magiolamviec)
end
GO
/****** Object:  Default [DF_Lich_1]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_1]  DEFAULT ((0)) FOR [1]
GO
/****** Object:  Default [DF_Lich_2]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_2]  DEFAULT ((0)) FOR [2]
GO
/****** Object:  Default [DF_Lich_3]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_3]  DEFAULT ((0)) FOR [3]
GO
/****** Object:  Default [DF_Lich_4]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_4]  DEFAULT ((0)) FOR [4]
GO
/****** Object:  Default [DF_Lich_5]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_5]  DEFAULT ((0)) FOR [5]
GO
/****** Object:  Default [DF_Lich_6]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_6]  DEFAULT ((0)) FOR [6]
GO
/****** Object:  Default [DF_Lich_7]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_7]  DEFAULT ((0)) FOR [7]
GO
/****** Object:  Default [DF_Lich_8]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_8]  DEFAULT ((0)) FOR [8]
GO
/****** Object:  Default [DF_Lich_9]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_9]  DEFAULT ((0)) FOR [9]
GO
/****** Object:  Default [DF_Lich_10]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_10]  DEFAULT ((0)) FOR [10]
GO
/****** Object:  Default [DF_Lich_11]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_11]  DEFAULT ((0)) FOR [11]
GO
/****** Object:  Default [DF_Lich_12]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_12]  DEFAULT ((0)) FOR [12]
GO
/****** Object:  Default [DF_Lich_13]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_13]  DEFAULT ((0)) FOR [13]
GO
/****** Object:  Default [DF_Lich_14]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_14]  DEFAULT ((0)) FOR [14]
GO
/****** Object:  Default [DF_Lich_15]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_15]  DEFAULT ((0)) FOR [15]
GO
/****** Object:  Default [DF_Lich_16]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_16]  DEFAULT ((0)) FOR [16]
GO
/****** Object:  Default [DF_Lich_17]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_17]  DEFAULT ((0)) FOR [17]
GO
/****** Object:  Default [DF_Lich_18]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_18]  DEFAULT ((0)) FOR [18]
GO
/****** Object:  Default [DF_Lich_19]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_19]  DEFAULT ((0)) FOR [19]
GO
/****** Object:  Default [DF_Lich_20]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_20]  DEFAULT ((0)) FOR [20]
GO
/****** Object:  Default [DF_Lich_21]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_21]  DEFAULT ((0)) FOR [21]
GO
/****** Object:  Default [DF_Lich_22]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_22]  DEFAULT ((0)) FOR [22]
GO
/****** Object:  Default [DF_Lich_23]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_23]  DEFAULT ((0)) FOR [23]
GO
/****** Object:  Default [DF_Lich_24]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_24]  DEFAULT ((0)) FOR [24]
GO
/****** Object:  Default [DF_Lich_25]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_25]  DEFAULT ((0)) FOR [25]
GO
/****** Object:  Default [DF_Lich_26]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_26]  DEFAULT ((0)) FOR [26]
GO
/****** Object:  Default [DF_Lich_27]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_27]  DEFAULT ((0)) FOR [27]
GO
/****** Object:  Default [DF_Lich_28]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_28]  DEFAULT ((0)) FOR [28]
GO
/****** Object:  Default [DF_Lich_29]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_29]  DEFAULT ((0)) FOR [29]
GO
/****** Object:  Default [DF_Lich_30]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_30]  DEFAULT ((0)) FOR [30]
GO
/****** Object:  Default [DF_Lich_31]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich] ADD  CONSTRAINT [DF_Lich_31]  DEFAULT ((0)) FOR [31]
GO
/****** Object:  ForeignKey [FK_CongNhan_ChucVu]    Script Date: 05/28/2017 16:01:45 ******/
ALTER TABLE [dbo].[CongNhan]  WITH CHECK ADD  CONSTRAINT [FK_CongNhan_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[CongNhan] CHECK CONSTRAINT [FK_CongNhan_ChucVu]
GO
/****** Object:  ForeignKey [FK_CongNhan_HeSoLuong]    Script Date: 05/28/2017 16:01:45 ******/
ALTER TABLE [dbo].[CongNhan]  WITH CHECK ADD  CONSTRAINT [FK_CongNhan_HeSoLuong] FOREIGN KEY([MaHSL])
REFERENCES [dbo].[HeSoLuong] ([MaHSL])
GO
ALTER TABLE [dbo].[CongNhan] CHECK CONSTRAINT [FK_CongNhan_HeSoLuong]
GO
/****** Object:  ForeignKey [FK_CongNhan_PhuCap]    Script Date: 05/28/2017 16:01:45 ******/
ALTER TABLE [dbo].[CongNhan]  WITH CHECK ADD  CONSTRAINT [FK_CongNhan_PhuCap] FOREIGN KEY([MaPhuCap])
REFERENCES [dbo].[PhuCap] ([MaPhuCap])
GO
ALTER TABLE [dbo].[CongNhan] CHECK CONSTRAINT [FK_CongNhan_PhuCap]
GO
/****** Object:  ForeignKey [FK_Lich_CongNhan]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[Lich]  WITH CHECK ADD  CONSTRAINT [FK_Lich_CongNhan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[CongNhan] ([MaNV])
GO
ALTER TABLE [dbo].[Lich] CHECK CONSTRAINT [FK_Lich_CongNhan]
GO
/****** Object:  ForeignKey [FK_KyHopDong_CongNhan]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[KyHopDong]  WITH CHECK ADD  CONSTRAINT [FK_KyHopDong_CongNhan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[CongNhan] ([MaNV])
GO
ALTER TABLE [dbo].[KyHopDong] CHECK CONSTRAINT [FK_KyHopDong_CongNhan]
GO
/****** Object:  ForeignKey [FK_KyHopDong_HopDong]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[KyHopDong]  WITH CHECK ADD  CONSTRAINT [FK_KyHopDong_HopDong] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HopDong] ([MaHD])
GO
ALTER TABLE [dbo].[KyHopDong] CHECK CONSTRAINT [FK_KyHopDong_HopDong]
GO
/****** Object:  ForeignKey [FK_GioLamViec_CaLamViec]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[GioLamViec]  WITH CHECK ADD  CONSTRAINT [FK_GioLamViec_CaLamViec] FOREIGN KEY([MaCaLV])
REFERENCES [dbo].[CaLamViec] ([MaCaLV])
GO
ALTER TABLE [dbo].[GioLamViec] CHECK CONSTRAINT [FK_GioLamViec_CaLamViec]
GO
/****** Object:  ForeignKey [FK_GioLamViec_CongNhan]    Script Date: 05/28/2017 16:01:46 ******/
ALTER TABLE [dbo].[GioLamViec]  WITH CHECK ADD  CONSTRAINT [FK_GioLamViec_CongNhan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[CongNhan] ([MaNV])
GO
ALTER TABLE [dbo].[GioLamViec] CHECK CONSTRAINT [FK_GioLamViec_CongNhan]
GO
