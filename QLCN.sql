USE [master]
GO
/****** Object:  Database [QLCN]    Script Date: 5/28/2017 12:35:11 AM ******/
CREATE DATABASE [QLCN] ON  PRIMARY 
( NAME = N'QLCN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLCN.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
ALTER DATABASE [QLCN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCN] SET  MULTI_USER 
GO
ALTER DATABASE [QLCN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCN] SET DB_CHAINING OFF 
GO
USE [QLCN]
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 5/28/2017 12:35:11 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/28/2017 12:35:11 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongNhan]    Script Date: 5/28/2017 12:35:11 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioLamViec]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioLamViec](
	[MaCaLV] [nvarchar](10) NOT NULL,
	[Thu] [nvarchar](10) NOT NULL,
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
	[Thu] ASC,
	[MaNV] ASC,
	[MaGioLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HeSoLuong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeSoLuong](
	[MaHSL] [nvarchar](10) NOT NULL,
	[TenHeSoLuong] [nvarchar](50) NULL,
	[HeSoLuong] [int] NULL,
 CONSTRAINT [PK_HeSoLuong] PRIMARY KEY CLUSTERED 
(
	[MaHSL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 5/28/2017 12:35:11 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KyHopDong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyHopDong](
	[MaHD] [nvarchar](10) NOT NULL,
	[TuNgay] [date] NOT NULL,
	[DenNgay] [date] NULL,
	[NgayKyHD] [date] NULL,
	[DieuKhoan] [nvarchar](50) NULL,
	[MaNV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HopDong] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[TuNgay] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lich]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lich](
	[MaNV] [nvarchar](10) NOT NULL,
	[1] [bit] NULL CONSTRAINT [DF_Lich_1]  DEFAULT ((0)),
	[2] [bit] NULL CONSTRAINT [DF_Lich_2]  DEFAULT ((0)),
	[3] [bit] NULL CONSTRAINT [DF_Lich_3]  DEFAULT ((0)),
	[4] [bit] NULL CONSTRAINT [DF_Lich_4]  DEFAULT ((0)),
	[5] [bit] NULL CONSTRAINT [DF_Lich_5]  DEFAULT ((0)),
	[6] [bit] NULL CONSTRAINT [DF_Lich_6]  DEFAULT ((0)),
	[7] [bit] NULL CONSTRAINT [DF_Lich_7]  DEFAULT ((0)),
	[8] [bit] NULL CONSTRAINT [DF_Lich_8]  DEFAULT ((0)),
	[9] [bit] NULL CONSTRAINT [DF_Lich_9]  DEFAULT ((0)),
	[10] [bit] NULL CONSTRAINT [DF_Lich_10]  DEFAULT ((0)),
	[11] [bit] NULL CONSTRAINT [DF_Lich_11]  DEFAULT ((0)),
	[12] [bit] NULL CONSTRAINT [DF_Lich_12]  DEFAULT ((0)),
	[13] [bit] NULL CONSTRAINT [DF_Lich_13]  DEFAULT ((0)),
	[14] [bit] NULL CONSTRAINT [DF_Lich_14]  DEFAULT ((0)),
	[15] [bit] NULL CONSTRAINT [DF_Lich_15]  DEFAULT ((0)),
	[16] [bit] NULL CONSTRAINT [DF_Lich_16]  DEFAULT ((0)),
	[17] [bit] NULL CONSTRAINT [DF_Lich_17]  DEFAULT ((0)),
	[18] [bit] NULL CONSTRAINT [DF_Lich_18]  DEFAULT ((0)),
	[19] [bit] NULL CONSTRAINT [DF_Lich_19]  DEFAULT ((0)),
	[20] [bit] NULL CONSTRAINT [DF_Lich_20]  DEFAULT ((0)),
	[21] [bit] NULL CONSTRAINT [DF_Lich_21]  DEFAULT ((0)),
	[22] [bit] NULL CONSTRAINT [DF_Lich_22]  DEFAULT ((0)),
	[23] [bit] NULL CONSTRAINT [DF_Lich_23]  DEFAULT ((0)),
	[24] [bit] NULL CONSTRAINT [DF_Lich_24]  DEFAULT ((0)),
	[25] [bit] NULL CONSTRAINT [DF_Lich_25]  DEFAULT ((0)),
	[26] [bit] NULL CONSTRAINT [DF_Lich_26]  DEFAULT ((0)),
	[27] [bit] NULL CONSTRAINT [DF_Lich_27]  DEFAULT ((0)),
	[28] [bit] NULL CONSTRAINT [DF_Lich_28]  DEFAULT ((0)),
	[29] [bit] NULL CONSTRAINT [DF_Lich_29]  DEFAULT ((0)),
	[30] [bit] NULL CONSTRAINT [DF_Lich_30]  DEFAULT ((0)),
	[31] [bit] NULL CONSTRAINT [DF_Lich_31]  DEFAULT ((0)),
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
 CONSTRAINT [PK_Lich] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[Thang] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Luong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaHSL] [nvarchar](10) NULL,
	[MaPhuCap] [nvarchar](10) NULL,
	[GioLamViec] [time](0) NULL,
	[Luong] [int] NULL,
 CONSTRAINT [PK_Luong] PRIMARY KEY CLUSTERED 
(
	[Thang] ASC,
	[Nam] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhuCap]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuCap](
	[MaPhuCap] [nvarchar](10) NOT NULL,
	[TenPhucCap] [nvarchar](50) NULL,
	[SoTienPhuCap] [int] NULL,
 CONSTRAINT [PK_PhuCap] PRIMARY KEY CLUSTERED 
(
	[MaPhuCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/28/2017 12:35:11 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CaLamViec] ([MaCaLV], [TenCa], [GioBatDau], [GioKetThuc]) VALUES (N'CALV1', N'Ca1', CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time))
INSERT [dbo].[CaLamViec] ([MaCaLV], [TenCa], [GioBatDau], [GioKetThuc]) VALUES (N'CALV2', N'Ca2', CAST(N'13:30:00' AS Time), CAST(N'16:30:00' AS Time))
INSERT [dbo].[CaLamViec] ([MaCaLV], [TenCa], [GioBatDau], [GioKetThuc]) VALUES (N'CALV3', N'CaToi', CAST(N'18:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV01', N'Giám Đốc')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV02', N'Phó Giám Đốc')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV03', N'Tổ Trưởng')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV04', N'Tổ Phó')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV05', N'Công Nhân')
INSERT [dbo].[ChucVu] ([MaCV], [TenChucVu]) VALUES (N'CV06', N'Công Nhân Thời Vụ')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN001', N'Lê', N'Huỳnh', N'Nam', CAST(N'1996-10-10' AS Date), N'TP.HCM', N'301627555                     ', N'Kinh', N'Không', N'Long An', N'Huyện Bến Lức, Long An', N'Nguyễn Kiệm, Phường 3, Quận Gò Vấp', N'1                             ', N'01202464521                   ', N'1', N'Độc thân', CAST(N'2017-04-18' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2014-04-12' AS Date), N'Long An', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN002', N'Huỳnh Văn', N'Nam', N'Nam', CAST(N'1994-03-01' AS Date), N'Cà Mau', N'987654321                     ', N'Hoa', N'Phật', N'Cà Mau', N'TP. Cà Mau, Cà Mau', N'Kinh Dương Vương, Bình Tân', N'1                             ', N'01226754231                   ', N'1', N'Độc thân', CAST(N'2017-03-05' AS Date), N'1', N'11/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2014-04-12' AS Date), N'Cà Mau', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN003', N'Trần ', N'Thủy', N'Nữ', CAST(N'1994-10-10' AS Date), N'Bạc Liêu', N'123456789                     ', N'Kinh', N'Không', N'Bạc Liêu', N'Thị Xã Giá Rai, Bạc Liêu', N'Lý Thường Kiệt, Tân Bình', N'1                             ', N'01226754231                   ', N'1', N'Kết Hôn', CAST(N'2017-04-13' AS Date), N'1', N'9/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2014-04-12' AS Date), N'Bạc Liêu', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN004', N'Nguyễn Trần Cẩm ', N'Tiên', N'Nữ', CAST(N'1997-04-17' AS Date), N'Đồng Tháp', N'123456789                     ', N'Hoa', N'Thiên Chúa', N'Đồng Tháp', N'TP. Cao Lãnh, Đồng Tháp', N'Trường Chinh, Tân Bình', N'1                             ', N'01202464521                   ', N'1', N'Độc thân', CAST(N'2017-03-26' AS Date), N'1', N'Đại Học', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2013-04-04' AS Date), N'Đồng Tháp', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN005', N'Hoàng Thị ', N'Cầm', N'Nữ', CAST(N'1993-03-15' AS Date), N'An Giang', N'301627555                     ', N'Khơ Me', N'Không', N'An Giang', N'TP. Long Xuyên, An Giang', N'Hoàng Hoa Thám, Phú Nhuận', N'1                             ', N'0925556432                    ', N'1', N'Độc Thân', CAST(N'2017-04-04' AS Date), N'1', N'Cao Đẵng', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2010-04-02' AS Date), N'An Giang', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN006', N'Nguyễn Tuấn', N'Anh', N'Nam', CAST(N'1997-06-16' AS Date), N'Bình Phước', N'233333666                     ', N'Kinh', N'Không', N'Bình Phước', N'TX. Đồng Xoài, Bình Phước', N'Đặng Huy Trứ, HCM', N'1                             ', N'0988269613                    ', N'1', N'Độc Thân', CAST(N'2017-02-03' AS Date), N'1', N'6/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2013-04-04' AS Date), N'Bình Phước', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN007', N'Lê Thị Mỹ', N'Thủy', N'Nữ', CAST(N'1994-03-10' AS Date), N'Hậu Giang', N'9552430458                    ', N'Kinh', N'Thiên Chúa', N'Hậu Giang', N'TP.Vị Thanh, Hâu Giang', N'Phan Văn Trị, HCM', N'1                             ', N'0992422692                    ', N'1', N'Độc Thân', CAST(N'2017-01-24' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2012-07-05' AS Date), N'Hậu Giang', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN008', N'Ngô Tiến', N'Minh', N'Nam', CAST(N'1993-02-10' AS Date), N'Kiên Giang', N'7165804009                    ', N'Hoa', N'Không', N'Kiên Giang', N'TP.Rạch Giá, Kiên Giang', N'Trần Phú, HCM', N'1                             ', N'0945131770                    ', N'1', N'Độc Thân', CAST(N'2016-09-22' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2012-07-05' AS Date), N'TP.HCM', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN009', N'Lê Nguyễn Hồng', N'Thanh', N'Nữ', CAST(N'1991-11-11' AS Date), N'Tiền Giang', N'6753936426                    ', N'Kinh', N'Không', N'Tiền Giang', N'H. Chợ Gạo, Tiền Giang', N'Quốc Lộ 1K, Dĩ An, Bình Dương', N'1                             ', N'0979986574                    ', N'1', N'Độc Thân', CAST(N'2016-08-27' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2012-07-05' AS Date), N'Tiền Giang', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN010', N'Bùi Ngọc', N'Nam', N'Nam', CAST(N'1990-02-05' AS Date), N'Bến Tre', N'8951168408                    ', N'Kinh', N'Không', N'Bến Tre', N'Thạnh Phú, Bến Tre', N'Tân Bữu, Bến Lức, Long An', N'1                             ', N'0916076805                    ', N'1', N'Độc Thân', CAST(N'2016-10-06' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2012-09-30' AS Date), N'TP.HCM', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN011', N'Phù Ngọc', N'Tuyết', N'Nữ', CAST(N'1997-05-17' AS Date), N'Bến Tre', N'0451003235                    ', N'Kinh', N'Không', N'Bến Tre', N'Bình Đại, Bến Tre', N'Đại lộ Bình Dương, TX Thuận An', N'1                             ', N'0975453641                    ', N'1', N'Độc Thân', CAST(N'2017-01-07' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2012-09-30' AS Date), N'Bến Tre', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN012', N'Đào Nguyễn Thảo', N'Nguyên', N'Nữ', CAST(N'1997-05-01' AS Date), N'Cần Thơ', N'6394006060                    ', N'Kinh', N'Phật', N'Cần Thơ', N'Huyện Phong Điền, Cần Thơ', N'Yết Kiêu, HCM', N'1                             ', N'0943044670                    ', N'1', N'Kết Hôn', CAST(N'2017-04-21' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2014-02-22' AS Date), N'Cần Thơ', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN013', N'Nguyễn Trọng', N'Nghĩa', N'Nam', CAST(N'1996-11-10' AS Date), N'Bình Dương', N'7500516725                    ', N'Kinh', N'Phật', N'Bình Dương', N'TX Tân Uyên, Bình Dương', N'Trần Văn Ơn, Phú Hòa, Thủ Dầu Một, Bình Dương', N'1                             ', N'0964075865                    ', N'1', N'Độc Thân', CAST(N'2017-03-11' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2014-02-22' AS Date), N'Bình Dương', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN014', N'Vũ Lê Ngọc', N'Ngà', N'Nữ', CAST(N'1993-11-11' AS Date), N'Sóc Trăng', N'2018654574                    ', N'Kinh', N'Phật', N'Sóc Trăng', N'Huyện Cù Lao Dung, Sóc Trăng', N'Đinh Đức Thiện, Bình Chánh, HCM', N'1                             ', N'0981344866                    ', N'1', N'Kết Hôn', CAST(N'2016-07-12' AS Date), N'1', N'12/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2014-02-22' AS Date), N'Sóc Trăng', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN015', N'Nguyễn Thanh', N'Tuấn', N'Nam', CAST(N'1994-02-10' AS Date), N'Trà Vinh', N'0811638840                    ', N'Khmer', N'Phật', N'Trà Vinh', N'Trà Cú, Sóc Trăng', N'254 Võ Văn Ngân, Thủ Đức', N'1                             ', N'0956824911                    ', N'1', N'Độc Thân', CAST(N'2016-05-24' AS Date), N'1', N'9/12', N'HSL01', N'CV05', N'PC01', N'1', CAST(N'2014-02-22' AS Date), N'Trà Vinh', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN016', N'Nguyễn Như ', N'Lan', N'Nữ', CAST(N'1994-02-23' AS Date), N'BR-VT', N'2857328951                    ', N'Kinh', N'Thiên Chúa', N'BR-VT', N'Xuyên Mộc, Vũng Tàu', N'Xa Lộ Hà Nội, Phường Hiệp Phú, Quận 9', N'1                             ', N'0980314896                    ', N'1', N'Kết Hôn', CAST(N'2016-02-10' AS Date), N'1', N'9/12', N'HSL01', N'CV06', N'PC01', N'1', CAST(N'2013-04-27' AS Date), N'BR-VT', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN017', N'Nguyễn Trần Thùy', N'Trang', N'Nữ', CAST(N'1992-11-10' AS Date), N'Bình Thuận', N'8951168408                    ', N'Khmer', N'Phật', N'Bình Thuận', N'Đức Linh, Bình Thuận', N'Đinh Đức Thiện, Bình Chánh, HCM', N'1                             ', N'01202573412                   ', N'1', N'Kết Hôn', CAST(N'2016-08-22' AS Date), N'1', N'9/12', N'HSL01', N'CV06', N'PC01', N'1', CAST(N'2013-04-27' AS Date), N'Bình Thuận', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN018', N'Trần Phú', N'Lâm', N'Nam', CAST(N'1992-01-10' AS Date), N'Đồng Nai', N'6164307479                    ', N'Kinh', N'Thiên Chúa', N'Đồng Nai', N'Tân Phú, Đồng Nai', N'Phạn Văn Đồng, Gò Vấp ', N'1                             ', N'01202573413                   ', N'1', N'Độc Thân', CAST(N'2017-03-03' AS Date), N'1', N'9/12', N'HSL01', N'CV06', N'PC01', N'1', CAST(N'2013-04-27' AS Date), N'Đồng Nai', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN019', N'Nguyễn Thị Bích ', N'Ly', N'Nữ', CAST(N'1994-02-23' AS Date), N'Lâm Đồng', N'7397696184                    ', N'Khmer', N'Phật', N'Lâm Đồng', N'Cát Tiên, Lâm Đồng', N'Trường Chinh, Tân Hưng Thuận, Quận 12', N'1                             ', N'01240573452                   ', N'1', N'Độc Thân', CAST(N'2017-04-17' AS Date), N'1', N'9/12', N'HSL01', N'CV06', N'PC01', N'1', CAST(N'2014-02-15' AS Date), N'Lâm Đồng', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN020', N'Võ Văn ', N'Hào', N'Nam', CAST(N'1998-02-03' AS Date), N'Gia Lai', N'9386634540                    ', N'Ba Na', N'Phật', N'Gia Lai', N'Pleiku, Gia Lai', N'QL22, Trung Mỹ Tây, Quận 12,', N'1                             ', N'01210573434                   ', N'1', N'Kết Hôn', CAST(N'2016-10-05' AS Date), N'1', N'Đại Học', N'HSL01', N'CV06', N'PC01', N'1', CAST(N'2014-02-15' AS Date), N'Gia Lai', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN021', N'Lương Chí ', N'Bá', N'Nam', CAST(N'1999-02-24' AS Date), N'Phú Yên', N'001326076                     ', N'Chăm', N'Thiên Chúa', N'Phú Yên', N'TX. Sông Cầu', N'QL1A, An Phú Đông, Quận 12', N'1                             ', N'01270573444                   ', N'1', N'Độc Thân', CAST(N'2016-09-03' AS Date), N'1', N'Đại Học', N'HSL01', N'CV06', N'PC01', N'1', CAST(N'2014-02-15' AS Date), N'Phú Yên', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN022', N'Nguyễn Huỳnh Anh', N'Thy', N'Nữ', CAST(N'1994-02-23' AS Date), N'Khánh Hòa', N'513127757                     ', N' Hoa', N'Phật', N'Khánh Hòa', N'Cam Ranh', N'QL51, Long Bình Tân, Tp. Biên Hòa, Đồng Nai', N'1                             ', N'01210573453                   ', N'1', N'Độc Thân', CAST(N'2016-02-20' AS Date), N'1', N'Đại Học', N'HSL01', N'CV06', N'PC01', N'1', CAST(N'2012-07-05' AS Date), N'Khánh Hòa', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN023', N'Trần Thế', N'Nhân', N'Nam', CAST(N'1995-02-24' AS Date), N'Bình Định', N'422319727                     ', N'Chăm', N'Không', N'Bình Định', N'Phù Cát', N'QL1A, Bắc Sơn, Trảng Bom, Đồng Nai', N'1                             ', N'01210573449                   ', N'1', N'Kết Hôn', CAST(N'2016-01-29' AS Date), N'1', N'Đại Học', N'HSL01', N'CV06', N'PC01', N'1', CAST(N'2012-07-05' AS Date), N'Bình Định', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN024', N'Trương Thị Như ', N'Hoa', N'Nữ', CAST(N'1993-02-22' AS Date), N'Quảng Ngãi', N'285765405                     ', N'Kinh', N'Thiên Chúa', N'Quảng Ngãi', N'Nghĩa Hành, Quảng Ngãi', N'QL20, Quang Trung, Thống Nhất, Đồng Nai', N'1                             ', N'01270573447                   ', N'1', N'Độc Thân', CAST(N'2016-03-01' AS Date), N'1', N'Cao Đẵng', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'Quảng Ngãi', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN025', N'Ngô Việt', N'Nam', N'Nam', CAST(N'1998-01-01' AS Date), N'Đắk Lắk', N'763727329                     ', N'Ê-đê', N'Không', N'Đắk Lắk', N'Ea Súp, Đắk Lắk', N'Đường N3, Xã Suối Tre, Thị Xã Long Khánh', N'1                             ', N'01240573458                   ', N'1', N'Kết Hôn', CAST(N'2016-10-05' AS Date), N'1', N'11/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'Đắk Lắk', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN026', N'Võ Hồ Song', N'Toàn', N'Nam', CAST(N'1998-11-01' AS Date), N'Quảng Nam', N'469750796                     ', N'Hoa', N'Thiên Chúa', N'Quảng Nam', N'Tam Kỳ, Quảng Nam', N'Huỳnh Văn Nghệ, Bửu Long, Tp. Biên Hòa', N'1                             ', N'01210573468                   ', N'1', N'Độc Thân', CAST(N'2016-10-05' AS Date), N'1', N'11/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'Quảng Nam', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN027', N'Mai Thúy', N'Nga', N'Nữ', CAST(N'1996-12-01' AS Date), N'Nghệ An', N'265602601                     ', N'Thái', N'Thiên Chúa', N'Nghệ An', N'Thái Hòa, Nghệ An', N'387 Quang Trung, phường 10, Gò Vấp', N'1                             ', N'01240573453                   ', N'1', N'Độc Thân', CAST(N'2016-10-05' AS Date), N'1', N'11/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'Nghệ An', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN028', N'Nguyễn Nhật Hà', N'Vy', N'Nữ', CAST(N'1995-12-11' AS Date), N'Thanh Hóa', N'302252722                     ', N'Mường', N'Không', N'Thanh Hóa', N'Bỉm Sơn, Thanh Hóa', N'97 Đường Phạm Văn Bạch, 15, Tân Bình, ', N'1                             ', N'01202573428                   ', N'1', N'Độc Thân', CAST(N'2016-04-15' AS Date), N'1', N'11/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'Thanh Hóa', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN029', N'Trần Ngọc', N'Hiền', N'Nữ', CAST(N'1993-12-11' AS Date), N'Đà Nẵng', N'077704516                     ', N'Kinh', N'Phật', N'Đà Nẵng', N'Liên Chiểu, Đà Nẵng', N'Quốc Lộ 1A, Phường Bình Hưng Hòa, Quận Bình Tân', N'1                             ', N'0947267844                    ', N'1', N'Độc Thân', CAST(N'2016-04-15' AS Date), N'1', N'11/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'Đà Nẵng', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN030', N'Nguyễn Viết', N'Xuân', N'Nam', CAST(N'1995-12-01' AS Date), N'Kon Tum', N'965634162                     ', N'Xơ-đăng', N'Thiên Chúa', N'Kon Tum', N'Ngọc Hồi', N'Võ Văn Vân, Ấp 1, Xã Vĩnh Lộc B, Huyện Bình Chánh', N'1                             ', N'0927860505                    ', N'1', N'Kết Hôn', CAST(N'2016-04-27' AS Date), N'1', N'9/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'Kon Tum', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN031', N'Huỳnh Nhật', N'Duật', N'Nam', CAST(N'1994-12-11' AS Date), N'HCM', N'449090950                     ', N'Hoa', N'Không', N'HCM', N'Gò Vấp', N'QL1A, x. Bình Chánh, Bình Chánh', N'1                             ', N'0915629093                    ', N'1', N'Độc Thân', CAST(N'2017-01-26' AS Date), N'1', N'9/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'HCM', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN032', N'Đỗ Thị ', N'Thúy', N'Nữ', CAST(N'1995-03-10' AS Date), N'Bình Dương', N'048997221                     ', N'Kinh', N'Phật', N'Bình Dương', N'Dĩ An', N'Mỹ Yên, Bến Lức', N'1                             ', N'0963568327                    ', N'1', N'Kết Hôn', CAST(N'2016-10-12' AS Date), N'1', N'9/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'HCM', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN033', N'Lê Xuân', N'Hải', N'Nam', CAST(N'1991-03-10' AS Date), N'Bình Phước', N'005035457                     ', N'Kinh', N'Thiên Chúa', N'Bình Phước', N'Bình Long', N'QL50, Tân Kim, Cần Giuộc, Long An', N'1                             ', N'0961302189                    ', N'1', N'Kết Hôn', CAST(N'2017-03-10' AS Date), N'1', N'10/12', N'HSL01', N'CV06', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'HCM', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN034', N'Bùi Thị', N'Thý', N'Nữ', CAST(N'1993-03-10' AS Date), N'Cần Thơ', N'690385813                     ', N'Kinh', N'Không', N'Cần Thơ', N'Ô Môn, Cần Thơ', N'Trương Công Định, tt. Cần Giuộc, Cần Giuộc', N'1                             ', N'0913880662                    ', N'1', N'Kết Hôn', CAST(N'2017-04-14' AS Date), N'1', N'10/12', N'HSL01', N'CV04', N'PC03', N'1', CAST(N'2013-04-27' AS Date), N'HCM', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN035', N'Nguyễn Vũ Yến', N'Hoa', N'Nữ', CAST(N'1992-04-10' AS Date), N'Cà Mau', N'905653576                     ', N'Khmer', N'Thiên Chúa', N'Cà Mau', N'Ngọc Hiển, Cà Mau', N'Nguyễn Bình, Phú Xuân, Nhà Bè', N'1                             ', N'01270573447                   ', N'1', N'Kết Hôn', CAST(N'2016-02-23' AS Date), N'1', N'10/12', N'HSL01', N'CV04', N'PC03', N'1', CAST(N'2012-07-05' AS Date), N'Cà Mau', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN036', N'Nguyễn Thị Cẩm', N'Hà', N'Nữ', CAST(N'1995-10-10' AS Date), N'Hậu Giang', N'833353224                     ', N'Khmer', N'Thiên Chúa', N'Hậu Giang', N'Long Mỹ, Hậu Giang', N'Huỳnh Tấn Phát, Phú Xuân, Nhà Bè', N'1                             ', N'01210573449                   ', N'1', N'Độc Thân', CAST(N'2017-04-11' AS Date), N'1', N'10/12', N'HSL01', N'CV04', N'PC03', N'1', CAST(N'2012-07-05' AS Date), N'Hậu Giang', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN038', N'Nguyễn Thị Thu', N'Hoài', N'Nữ', CAST(N'1995-12-10' AS Date), N'Long An', N'628573956                     ', N'Kinh', N'Thiên Chúa', N'Long An', N'Kiến Tường,Long An', N' Trương Định, phường 6, Quận 3', N'1                             ', N'0916687378                    ', N'1', N'Không', CAST(N'2017-01-26' AS Date), N'1', N'10/12', N'HSL01', N'CV04', N'PC03', N'1', CAST(N'2012-06-05' AS Date), N'Long An', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN039', N'Huỳnh Ngọc ', N'Vy', N'Nữ', CAST(N'1996-11-01' AS Date), N'HCM', N'237259455                     ', N'Hoa', N'Không', N'Bình Thuận', N'Củ Chi,HCM', N'3 Tháng 2, phường 2, Quận 11', N'1                             ', N'0994806677                    ', N'1', N'Không', CAST(N'2016-05-20' AS Date), N'1', N'11/12', N'HSL01', N'CV04', N'PC03', N'1', CAST(N'2012-06-05' AS Date), N'HCM', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN040', N'Đỗ Lan ', N'Lan ', N'Nữ', CAST(N'1993-01-01' AS Date), N'Bình Thuận', N'754259144                     ', N'Khmer', N'Không', N'Bình Thuận', N'Lagi, Bình Thuận', N'QL 51, Ấp Xóm Gốc, Long An, Long Thành', N'1                             ', N'0974806677                    ', N'1', N'Không', CAST(N'2016-03-02' AS Date), N'1', N'11/12', N'HSL01', N'CV04', N'PC03', N'1', CAST(N'2012-06-05' AS Date), N'Bình Thuận', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN042', N'Nguyễn Huỳnh', N'Thiện', N'Nam', CAST(N'1999-11-01' AS Date), N'Tây Ninh', N'864477777                     ', N'Kinh', N'Phật', N'Tây Ninh', N'Tân Châu', N' QL51, Long Đức, Long Thành', N'1                             ', N'0914806677                    ', N'1', N'Độc Thân', CAST(N'2016-03-02' AS Date), N'1', N'11/12', N'HSL01', N'CV04', N'PC03', N'1', CAST(N'2012-06-05' AS Date), N'Tây Ninh', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN044', N'Nguyễn Thanh', N'Việt', N'Nam', CAST(N'1994-11-01' AS Date), N'Ninh Thuận', N'395083226                     ', N'Khmer', N'Không', N'Ninh Thuận', N'Phan Rang - Tháp Chàm', N' Lê Duẩn, tt. Long Thành, Long Thành', N'1                             ', N'0943921341                    ', N'1', N'Kết Hôn', CAST(N'2016-03-02' AS Date), N'1', N'Cao Đẵng', N'HSL01', N'CV03', N'PC03', N'1', CAST(N'2012-06-05' AS Date), N'Ninh Thuận', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN045', N'Nguyễn Nhật Huyền', N'My', N'Nữ', CAST(N'1986-03-01' AS Date), N'An Giang', N'513368299                     ', N'Khmer', N'Phật', N'An Giang', N'Châu Đốc', N'ĐT769, Lộc An, Long Thành', N'1                             ', N'0906439651                    ', N'1', N'Kết Hôn', CAST(N'2017-01-03' AS Date), N'1', N'Cao Đẵng', N'HSL01', N'CV03', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'An Giang', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN046', N'Đỗ Thảo', N'Tâm', N'Nữ', CAST(N'1985-04-01' AS Date), N'Kiên Giang', N'627598413                     ', N'Khmer', N'Phật', N'Kiên Giang', N'Kiên Lương', N'Lộ 25, Thống Nhất, Đồng Nai', N'1                             ', N'01246754231                   ', N'1', N'Kết Hôn', CAST(N'2017-01-03' AS Date), N'1', N'Cao Đẵng', N'HSL01', N'CV03', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'Kiên Giang', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN047', N'Nguyễn Ngọc Uyên', N'Linh', N'Nữ', CAST(N'1980-12-03' AS Date), N'Sóc Trăng', N'340265485                     ', N'Khmer', N'Không', N'Sóc Trăng', N'Kế Sách', N'QL1A, Tân Biên, Tp. Biên Hòa, Đồng Nai', N'1                             ', N'01280573447                   ', N'1', N'Kết Hôn', CAST(N'2016-03-01' AS Date), N'1', N'Đại Học', N'HSL01', N'CV03', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'Sóc Trăng', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN048', N'Trần Nguyễn Minh', N'Tâm', N'Nam', CAST(N'1984-08-01' AS Date), N'Sóc Trăng', N'465042614                     ', N'Kinh', N'Thiên Chúa', N'Sóc Trăng', N'Phước Long', N'Tô Ngọc Vân, Bình Chiểu, Thủ Đức', N'1                             ', N'01280576447                   ', N'1', N'Kết Hôn', CAST(N'2016-03-01' AS Date), N'1', N'Đại Học', N'HSL01', N'CV03', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'Sóc Trăng', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN049', N'Hoàng Thị Bích ', N'Thùy', N'Nữ', CAST(N'1983-09-06' AS Date), N'Đồng Nai', N'367013654                     ', N'Kinh', N'Thiên Chúa', N'Đồng Nai', N'Long Thành', N'Trần Quốc Hoàn, Phường 4, Tân Bình', N'1                             ', N'0960314896                    ', N'1', N'Kết Hôn', CAST(N'2017-03-20' AS Date), N'1', N'Đại Học', N'HSL01', N'CV03', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'Đồng Nai', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN050', N'Trần Minh ', N'Lâm', N'Nam', CAST(N'1979-06-06' AS Date), N'Phú Yên', N'610516260                     ', N'Chăm', N'Phật', N'Phú Yên', N'Sông Hinh', N'Cộng Hòa, phường 13, Tân Bình', N'1                             ', N'0970314896                    ', N'1', N'Kết Hôn', CAST(N'2017-03-20' AS Date), N'1', N'Đại Học', N'HSL01', N'CV02', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'Phú Yên', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN051', N'Nguyễn Tiến', N'Phương', N'Nam', CAST(N'1982-08-01' AS Date), N'Bến Tre', N'730199174                     ', N'Kinh', N'Không', N'Bến Tre', N'Ba Tri', N'Cách Mạng Tháng Tám, P.7, Q.Tân Bình', N'1                             ', N'0900314896                    ', N'1', N'Độc thân', CAST(N'2017-03-20' AS Date), N'1', N'Đại Học', N'HSL01', N'CV02', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'Bến Tre', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN052', N'Hồ Thị Kim', N'Châu', N'Nữ', CAST(N'1981-09-11' AS Date), N'Đồng Tháp', N'852809786                     ', N'Khmer', N'Không', N'Đồng Tháp', N'Hồng Ngự', N'Trường Chinh, Q.Tân Bình, Tân Bình', N'1                             ', N'0937267844                    ', N'1', N'Độc thân', CAST(N'2017-03-26' AS Date), N'1', N'Đại Học', N'HSL01', N'CV02', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'Đồng Tháp', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[CongNhan] ([MaNV], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [CMND], [DanToc], [TonGiao], [QueQuan], [DCThuongTru], [NoiOHienNay], [DienThoaiNha], [DienThoaiDD], [Email], [TTrangHonNhan], [NgayTuyenDung], [NoiLamViec], [TrinhDoVanHoa], [MaHSL], [MaCV], [MaPhuCap], [TaiKhoanNganHang], [NgayCapCMND], [NoiCapCMND], [Hinh], [TinhTrangLamViec], [QuocTich], [MaBHYT], [MaBHXH]) VALUES (N'CN053', N'Lê', N'Hải', N'Nam', CAST(N'1989-05-17' AS Date), N'Đà Nẵng', N'854960862                     ', N'Kinh', N'Tin Lành', N'Đà Nẵng', N'Hòa Vang', N'Tống Văn Trân, phường 5,Quận 11', N'1                             ', N'0927267844                    ', N'1', N'Độc thân', CAST(N'2017-04-16' AS Date), N'1', N'Dai Hoc', N'HSL01', N'CV01', N'PC03', N'1', CAST(N'2012-08-20' AS Date), N'Đà Nẵng', N'1', N'1', N'Việt Nam', N'1', N'1')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'23', CAST(N'20:54:03' AS Time), CAST(N'12:13:16' AS Time), 1, CAST(N'12:16:14' AS Time), CAST(N'2017-04-23' AS Date), N'CN001', N'1')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'Friday', CAST(N'02:42:36' AS Time), CAST(N'01:12:49' AS Time), 1, CAST(N'22:19:10' AS Time), CAST(N'2017-05-26' AS Date), N'CN001', N'CN001')
INSERT [dbo].[GioLamViec] ([MaCaLV], [Thu], [GioToi], [GioVe], [DiTre], [Tong], [Ngay/Thang/Nam], [MaNV], [MaGioLamViec]) VALUES (N'CALV1', N'Saturday', CAST(N'06:36:22' AS Time), CAST(N'00:00:00' AS Time), 0, CAST(N'00:00:00' AS Time), CAST(N'2017-05-27' AS Date), N'CN001', N'CN001')
INSERT [dbo].[HeSoLuong] ([MaHSL], [TenHeSoLuong], [HeSoLuong]) VALUES (N'HSL01', N'Hệ Số Lương 1', 16000)
INSERT [dbo].[HeSoLuong] ([MaHSL], [TenHeSoLuong], [HeSoLuong]) VALUES (N'HSL02', N'Hệ Số Lương 2', 2)
INSERT [dbo].[HeSoLuong] ([MaHSL], [TenHeSoLuong], [HeSoLuong]) VALUES (N'HSL03', N'Hệ Số Lương 3', 3)
INSERT [dbo].[HopDong] ([MaHD], [LoaiHopDong], [KyHan]) VALUES (N'HD01', N'Hợp Đồng 1', N'12')
INSERT [dbo].[HopDong] ([MaHD], [LoaiHopDong], [KyHan]) VALUES (N'HD02', N'Hợp Đồng 2', N'6')
INSERT [dbo].[HopDong] ([MaHD], [LoaiHopDong], [KyHan]) VALUES (N'HD03', N'Hợp Đồng 3', N'3')
INSERT [dbo].[HopDong] ([MaHD], [LoaiHopDong], [KyHan]) VALUES (N'HD04', N'Hợp Đồng 4', N'1')
INSERT [dbo].[Lich] ([MaNV], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20], [21], [22], [23], [24], [25], [26], [27], [28], [29], [30], [31], [Thang], [Nam]) VALUES (N'CN001', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2017)
INSERT [dbo].[Luong] ([Thang], [Nam], [MaNV], [MaHSL], [MaPhuCap], [GioLamViec], [Luong]) VALUES (5, 2017, N'CN001', N'1', N'300000.00', CAST(N'22:24:20' AS Time), 652000)
INSERT [dbo].[PhuCap] ([MaPhuCap], [TenPhucCap], [SoTienPhuCap]) VALUES (N'PC01', N'Tiền Xăng', 300000)
INSERT [dbo].[PhuCap] ([MaPhuCap], [TenPhucCap], [SoTienPhuCap]) VALUES (N'PC02', N'Tiền Làm Ngoài Giờ', 300000)
INSERT [dbo].[PhuCap] ([MaPhuCap], [TenPhucCap], [SoTienPhuCap]) VALUES (N'PC03', N'Tiền Ăn Trưa Chiều', 500000)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [PhanQuyen]) VALUES (N'admin', N'admin', N'1')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [PhanQuyen]) VALUES (N'user1', N'user1', N'2')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [PhanQuyen]) VALUES (N'user2', N'user2', N'2')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [PhanQuyen]) VALUES (N'usernv1', N'usernv1', N'3')
ALTER TABLE [dbo].[CongNhan]  WITH CHECK ADD  CONSTRAINT [FK_CongNhan_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[CongNhan] CHECK CONSTRAINT [FK_CongNhan_ChucVu]
GO
ALTER TABLE [dbo].[CongNhan]  WITH CHECK ADD  CONSTRAINT [FK_CongNhan_HeSoLuong] FOREIGN KEY([MaHSL])
REFERENCES [dbo].[HeSoLuong] ([MaHSL])
GO
ALTER TABLE [dbo].[CongNhan] CHECK CONSTRAINT [FK_CongNhan_HeSoLuong]
GO
ALTER TABLE [dbo].[CongNhan]  WITH CHECK ADD  CONSTRAINT [FK_CongNhan_PhuCap] FOREIGN KEY([MaPhuCap])
REFERENCES [dbo].[PhuCap] ([MaPhuCap])
GO
ALTER TABLE [dbo].[CongNhan] CHECK CONSTRAINT [FK_CongNhan_PhuCap]
GO
ALTER TABLE [dbo].[KyHopDong]  WITH CHECK ADD  CONSTRAINT [FK_KyHopDong_HopDong] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HopDong] ([MaHD])
GO
ALTER TABLE [dbo].[KyHopDong] CHECK CONSTRAINT [FK_KyHopDong_HopDong]
GO
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD  CONSTRAINT [FK_Luong_CongNhan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[CongNhan] ([MaNV])
GO
ALTER TABLE [dbo].[Luong] CHECK CONSTRAINT [FK_Luong_CongNhan]
GO
/****** Object:  StoredProcedure [dbo].[addcalamviec]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addcalamviec]
	@maclv nvarchar(10),
	@tencalamviec nvarchar(50),
	@giobatdau time(0),
	@gioketthuc time(0)
as
begin
	if not exists (SELECT MaCaLV FROM CaLamViec WHERE MaCaLV=@maclv)
		insert into CaLamViec values(@maclv,@tencalamviec,@giobatdau,@gioketthuc)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[addchucvu]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addchucvu]
	@macv nvarchar(10),
	@tenchucvu nvarchar(50)
as
begin
	if not exists (SELECT MaCV FROM ChucVu WHERE MaCV=@macv)
		insert into ChucVu values(@macv,@tenchucvu)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[addcongnhan]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addcongnhan]
			@macn nvarchar(10),
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
			@dienthoaidd nchar(30),
            @email nvarchar(50),
            @ttranghonnhan nvarchar(50),
            @ngaytuyendung date,
            @noilamviec nvarchar(50),
            @trinhdovanhoa nvarchar(50),
            @mahesoluong nvarchar(10),
            @machucvu nvarchar(10),
			@maphucap nvarchar(10),
			@taikhoangnganhang nvarchar(50),
            @ngaycapcmnd date,
            @noicapcmnd nvarchar(50),
			@hinh nvarchar(50),
            @tinhtranglamviec nvarchar(20),
            @quoctich nvarchar(50),
			@mabhyt nvarchar(50),
			@mabhxh nvarchar(50)
as
begin
	if not exists (SELECT MaNV FROM CongNhan WHERE MaNV=@macn)
	insert into CongNhan values(@macn,@ho,@ten,@gioitinh,@ngaysinh,@noisinh,@cmnd,@dantoc,@tongiao,@quequan,@dcthuongtru,@noiohiennay,@dienthoainha,@dienthoaidd,@email,@ttranghonnhan,@ngaytuyendung,@noilamviec,@trinhdovanhoa,@mahesoluong,@machucvu,@maphucap,@taikhoangnganhang,@ngaycapcmnd,@noicapcmnd,@hinh,@tinhtranglamviec,@quoctich,@mabhyt,@mabhxh)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[AddGioLamViec]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddGioLamViec]
	@macalamviec nvarchar(10),
	@giotoi time(0),
	@giove time(0),
	@thu nvarchar(10),
	@ditre bit,
	@tong time(0),
	@ngaythangnam date,
	@macn nvarchar(10),
	@magiolamviec nvarchar(10)
as
begin
	if not exists (SELECT MaGioLamViec FROM GioLamViec WHERE MaCaLV=@macalamviec AND MaGioLamViec=@magiolamviec AND [Ngay/Thang/Nam]=[Ngay/Thang/Nam])
		insert into GioLamViec(MaCaLV,Thu,GioToi,GioVe,DiTre,Tong,[Ngay/Thang/Nam],MaNV,MaGioLamViec) values(@macalamviec,@thu,@giotoi,@giove,@ditre,@tong,@ngaythangnam,@macn,@magiolamviec)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[addhesoluong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addhesoluong]
	@mahsl nvarchar(10),
	@tenhesoluong nvarchar(50),
	@hesoluong int
as
begin
	if not exists (SELECT MaHSL FROM HeSoLuong WHERE MaHSL=@mahsl)
		insert into HeSoLuong values(@mahsl,@tenhesoluong,@hesoluong)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[addhopdong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addhopdong]
	@mahd nvarchar(10),
	@loaihopdong nvarchar(50),
	@kyhan nvarchar(50)
as
begin
	if not exists (SELECT MaHD FROM HopDong WHERE MaHD=@mahd)
		insert into HopDong values(@mahd,@loaihopdong,@kyhan)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[addkyhopdong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addkyhopdong]
	@mahd nvarchar(10),
	@tungay date,
	@denngay date,
	@ngaykyhd date,
	@dieukhoan nvarchar(50),
	@macn nvarchar(10)
as
begin
	if not exists (SELECT MaHD FROM KyHopDong WHERE MaHD=@mahd AND TuNgay=@tungay AND MaNV=@macn)
		insert into KyHopDong values(@mahd,@tungay,@denngay,@ngaykyhd,@dieukhoan,@macn)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[addlich]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addlich]
	@macn nvarchar(10),
	@ngay date
as
begin
	if not exists (SELECT Thang FROM Lich WHERE Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay))
	begin
		insert into Lich(MaNV,Thang,Nam) values(@macn,DATEPART(MONTH,@ngay),DATEPART(YEAR,@ngay))	
		if(DAY(@ngay)=1)
			update Lich set [1]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=2)
			update Lich set [2]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=3)
			update Lich set [3]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=4)
			update Lich set [4]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=5)
			update Lich set [5]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=6)
			update Lich set [6]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=7)
			update Lich set [7]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=8)
			update Lich set [8]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=9)
			update Lich set [9]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=10)
			update Lich set [10]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=11)
			update Lich set [11]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=12)
			update Lich set [12]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=13)
			update Lich set [13]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=14)
			update Lich set [14]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=15)
			update Lich set [15]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=16)
			update Lich set [16]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=17)
			update Lich set [17]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=18)
			update Lich set [18]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=19)
			update Lich set [19]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=20)
			update Lich set [20]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=21)
			update Lich set [21]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=22)
			update Lich set [22]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=23)
			update Lich set [23]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=24)
			update Lich set [24]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=25)
			update Lich set [25]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=26)
			update Lich set [26]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=27)
			update Lich set [27]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=28)
			update Lich set [28]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=29)
			update Lich set [29]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=30)
			update Lich set [30]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
		if(DAY(@ngay)=31)
			update Lich set [31]=1 WHERE MaNV=@macn AND Thang=DATEPART(MONTH,@ngay) AND Nam=DATEPART(YEAR,@ngay)
	end
	else
	print N'update không được'
end
GO
/****** Object:  StoredProcedure [dbo].[addluong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addluong]
	@macn nvarchar(10),
	@ngay date
as
begin
declare @hesoluong int=(SELECT HeSoLuong FROM HeSoLuong,CongNhan WHERE HeSoLuong.MaHSL=CongNhan.MaHSL AND CongNhan.MaNV=@macn)
declare @phucap money=(SELECT SoTienPhuCap FROM PhuCap,CongNhan WHERE PhuCap.MaPhuCap=CongNhan.MaPhuCap AND CongNhan.MaNV=@macn)
	if not exists (SELECT MaNV FROM Luong)
	begin
		declare @giolamviec time=(SELECT cast(dateadd(millisecond,sum(datediff
(millisecond,0,cast(Tong as datetime))),0) as time) FROM GioLamViec,CongNhan WHERE GioLamViec.MaNV=CongNhan.MaNV AND DATEPART(MONTH,[Ngay/Thang/Nam])=DATEPART(MONTH,@ngay) AND GioLamViec.MaNV=@macn)
		insert into Luong values(DATEPART(MONTH,@ngay),DATEPART(YEAR,@ngay),@macn,@hesoluong,@phucap,@giolamviec,@hesoluong*(DATEPART(HOUR,@giolamviec)+DATEPART(MINUTE,@giolamviec)/60)+@phucap)
	end
	else
	begin
		declare @giolamviec1 time=(SELECT cast(dateadd(millisecond,sum(datediff
(millisecond,0,cast(Tong as datetime))),0) as time) FROM GioLamViec,CongNhan WHERE GioLamViec.MaNV=CongNhan.MaNV AND DATEPART(MONTH,[Ngay/Thang/Nam])=DATEPART(MONTH,@ngay) AND GioLamViec.MaNV=@macn)
		update Luong set GioLamViec=@giolamviec1,Luong=@hesoluong*(DATEPART(HOUR,@giolamviec1)+DATEPART(MINUTE,@giolamviec1)/60)+@phucap WHERE MaNV=@macn
	end
end
GO
/****** Object:  StoredProcedure [dbo].[addphucap]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addphucap]
	@maphucap nvarchar(10),
	@tenphucap nvarchar(50),
	@sotienphucap int
as
begin
	if not exists (SELECT MaPhuCap FROM PhuCap WHERE MaPhuCap=@maphucap)
		insert into PhuCap values(@maphucap,@tenphucap,@sotienphucap)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[addtaikhoan]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addtaikhoan]
	@tentaikhoan nvarchar(50),
	@matkhau nvarchar(50),
	@phanquyen nvarchar(50)
as
begin
	if not exists (SELECT TenTaiKhoan FROM TaiKhoan WHERE TenTaiKhoan=@tentaikhoan)
		insert into TaiKhoan values(@tentaikhoan,@matkhau,@phanquyen)
	else
	print N'add không được'
end
GO
/****** Object:  StoredProcedure [dbo].[deletecalamviec]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletecalamviec]
	@maclv nvarchar(10)
as
begin
	if exists (SELECT MaCaLV FROM CaLamViec WHERE MaCaLV=@maclv)
		delete CaLamViec WHERE MaCaLV=@maclv
	else
	print N'delete không được'
end
GO
/****** Object:  StoredProcedure [dbo].[deletechucvu]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletechucvu]
	@macv nvarchar(10)
as
begin
	if exists (SELECT MaCV FROM ChucVu WHERE MaCV=@macv)
		delete ChucVu WHERE MaCV=@macv
	else
	print N'delete không được'
end
GO
/****** Object:  StoredProcedure [dbo].[deletecongnhan]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletecongnhan]
	@macn nvarchar(10)
as
begin
	if exists (SELECT MaNV FROM CongNhan WHERE MaNV=@macn)
	begin
		if exists (SELECT MaNV FROM GioLamViec WHERE MaNV=@macn)
		delete GioLamViec where MaNV=@macn
		if exists (SELECT MaNV FROM KyHopDong WHERE MaNV=@macn)
		delete KyHopDong where MaNV=@macn
		if exists (SELECT MaNV FROM Lich WHERE MaNV=@macn)
		delete Lich where MaNV=@macn
		if exists (SELECT MaNV FROM Luong WHERE MaNV=@macn)
		delete Luong where MaNV=@macn
		delete CongNhan where MaNV=@macn
	end
	else
	print N'delete không được'
end

GO
/****** Object:  StoredProcedure [dbo].[deletehesoluong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletehesoluong]
	@mahsl nvarchar(10)
as
begin
	if exists (SELECT MaHSL FROM HeSoLuong WHERE MaHSL=@mahsl)
		delete HeSoLuong WHERE MaHSL=@mahsl
	else
	print N'delete không được'
end
GO
/****** Object:  StoredProcedure [dbo].[deletehopdong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletehopdong]
	@mahd nvarchar(10)
as
begin
	if exists (SELECT MaHD FROM HopDong WHERE MaHD=@mahd)
		delete HopDong WHERE MaHD=@mahd
	else
	print N'delete không được'
end
GO
/****** Object:  StoredProcedure [dbo].[deletekyhopdong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletekyhopdong]
	@mahd nvarchar(10),
	@macn nvarchar(10)
as
begin
	if exists (SELECT MaHD FROM KyHopDong WHERE MaHD=@mahd AND MaNV=@macn)
		delete KyHopDong WHERE MaHD=@mahd AND MaNV=@macn
	else
	print N'delete không được'
end
GO
/****** Object:  StoredProcedure [dbo].[deletephucap]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletephucap]
	@maphucap nvarchar(10)
as
begin
	if  exists (SELECT MaPhuCap FROM PhuCap WHERE MaPhuCap=@maphucap)
		delete PhuCap WHERE MaPhuCap=@maphucap
	else
	print N'delete không được'
end
GO
/****** Object:  StoredProcedure [dbo].[deletetaikhoan]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletetaikhoan]
	@tentaikhoan nvarchar(50)
as
begin
	if exists (SELECT TenTaiKhoan FROM TaiKhoan WHERE TenTaiKhoan=@tentaikhoan)
		delete TaiKhoan WHERE TenTaiKhoan=@tentaikhoan
	else
	print N'delete không được'
end
GO
/****** Object:  StoredProcedure [dbo].[updatecalamviec]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatecalamviec]
	@maclv nvarchar(10),
	@tencalamviec nvarchar(50),
	@giobatdau time(0),
	@gioketthuc time(0)
as
begin
	if exists (SELECT MaCaLV FROM CaLamViec WHERE MaCaLV=@maclv)
		update CaLamViec set TenCa=@tencalamviec,GioBatDau=@giobatdau,GioKetThuc=@gioketthuc WHERE MaCaLV=@maclv
	else
	print N'update không được'
end
GO
/****** Object:  StoredProcedure [dbo].[updatechucvu]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updatechucvu]
	@macv nvarchar(10),
	@tenchucvu nvarchar(50)
as
begin
	if exists (SELECT MaCV FROM ChucVu WHERE MaCV=@macv)
		update ChucVu set TenChucVu=@tenchucvu WHERE MaCV=@macv
	else
	print N'update không được'
end
GO
/****** Object:  StoredProcedure [dbo].[updatecongnhan]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatecongnhan]
			@macn nvarchar(10),
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
			@dienthoaidd nchar(30),
            @email nvarchar(50),
            @ttranghonnhan nvarchar(50),
            @ngaytuyendung date,
            @noilamviec nvarchar(50),
            @trinhdovanhoa nvarchar(50),
            @mahesoluong nvarchar(10),
            @machucvu nvarchar(10),
			@maphucap nvarchar(10),
			@taikhoangnganhang nvarchar(50),
            @ngaycapcmnd date,
            @noicapcmnd nvarchar(50),
			@hinh nvarchar(50),
            @tinhtranglamviec nvarchar(20),
            @quoctich nvarchar(50),
			@mabhyt nvarchar(50),
			@mabhxh nvarchar(50)
as
begin
	if exists (SELECT MaNV FROM CongNhan WHERE MaNV=@macn)
	update CongNhan set Ho=@ho,Ten=@ten,GioiTinh=@gioitinh,NgaySinh=@ngaysinh,NoiSinh=@noisinh,CMND=@cmnd,DanToc=@dantoc,TonGiao=@tongiao,QueQuan=@quequan,DCThuongTru=@dcthuongtru,NoiOHienNay=@noiohiennay,DienThoaiNha=@dienthoainha,DienThoaiDD=@dienthoaidd,Email=@email,TTrangHonNhan=@ttranghonnhan,NgayTuyenDung=@ngaytuyendung,TrinhDoVanHoa=@trinhdovanhoa,MaHSL=@mahesoluong,MaCV=@machucvu,MaPhuCap=@maphucap,TaiKhoanNganHang=@taikhoangnganhang,NgayCapCMND=@ngaycapcmnd,NoiCapCMND=@noicapcmnd,Hinh=@hinh,TinhTrangLamViec=@tinhtranglamviec,QuocTich=@quoctich,MaBHXH=@mabhxh,MaBHYT=@mabhyt where MaCV=@macn
	else
	print N'update không được'
end

GO
/****** Object:  StoredProcedure [dbo].[updategiolamviec]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updategiolamviec]
	@macalamviec nvarchar(10),
	@giove time(0),
	@ngay date,
	@magiolamviec nvarchar(10)
as
begin
	if exists (SELECT MaGioLamViec FROM GioLamViec WHERE MaCaLV=@macalamviec AND MaGioLamViec=@magiolamviec AND [Ngay/Thang/Nam]=[Ngay/Thang/Nam])
	update GioLamViec set GioVe=@giove,Tong=CONVERT(TIME,CONVERT(DATETIME,GioVe)-CONVERT(DATETIME,GioToi)) where MaCaLV=@macalamviec AND MaCaLV=@macalamviec AND MaGioLamViec=@magiolamviec
	else
	print N'update không được'
end
GO
/****** Object:  StoredProcedure [dbo].[updatehesoluong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatehesoluong]
	@mahsl nvarchar(10),
	@tenhesoluong nvarchar(50),
	@hesoluong int
as
begin
	if exists (SELECT MaHSL FROM HeSoLuong WHERE MaHSL=@mahsl)
		update HeSoLuong set TenHeSoLuong=@tenhesoluong,HeSoLuong=@hesoluong WHERE MaHSL=@mahsl
	else
	print N'update không được'
end
GO
/****** Object:  StoredProcedure [dbo].[updatehopdong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatehopdong]
	@mahd nvarchar(10),
	@loaihopdong nvarchar(50),
	@kyhan nvarchar(50)
as
begin
	if exists (SELECT MaHD FROM HopDong WHERE MaHD=@mahd)
		update HopDong set LoaiHopDong=@loaihopdong,KyHan=@kyhan WHERE MaHD=@mahd
	else
	print N'update không được'
end
GO
/****** Object:  StoredProcedure [dbo].[updatekyhopdong]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatekyhopdong]
	@mahd nvarchar(10),
	@tungay date,
	@denngay date,
	@ngaykyhd date,
	@dieukhoan nvarchar(50),
	@macn nvarchar(10)
as
begin
	if exists (SELECT MaHD FROM KyHopDong WHERE MaHD=@mahd AND TuNgay=@tungay AND MaNV=@macn)
	update KyHopDong set TuNgay=@tungay,DenNgay=@denngay,NgayKyHD=@ngaykyhd,DieuKhoan=@dieukhoan WHERE MaHD=@mahd AND MaNV=@macn
	else
	print N'update không được'
end
GO
/****** Object:  StoredProcedure [dbo].[updatephucap]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatephucap]
	@maphucap nvarchar(10),
	@tenphucap nvarchar(50),
	@sotienphucap int
as
begin
	if  exists (SELECT MaPhuCap FROM PhuCap WHERE MaPhuCap=@maphucap)
		update PhuCap set TenPhucCap=@tenphucap,SoTienPhuCap=@sotienphucap WHERE MaPhuCap=@maphucap
	else
	print N'update không được'
end
GO
/****** Object:  StoredProcedure [dbo].[updatetaikhoan]    Script Date: 5/28/2017 12:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatetaikhoan]
	@tentaikhoan nvarchar(50),
	@matkhau nvarchar(50),
	@phanquyen nvarchar(50)
as
begin
	if exists (SELECT TenTaiKhoan FROM TaiKhoan WHERE TenTaiKhoan=@tentaikhoan)
		update TaiKhoan set MatKhau=@matkhau,PhanQuyen=@phanquyen WHERE TenTaiKhoan=@tentaikhoan
	else
	print N'update không được'
end
GO
USE [master]
GO
ALTER DATABASE [QLCN] SET  READ_WRITE 
GO
