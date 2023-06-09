CREATE DATABASE QUANLYTHUOC
USE [QUANLYTHUOC]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhapHang]    Script Date: 5/17/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhapHang](
	[ID_PN] [int] NOT NULL,
	[ID_NCC] [int] NOT NULL,
	[ID_Thuoc] [int] NOT NULL,
	[SoLuongNhap] [int] NULL,
	[GiaNhap] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[ID_PN] ASC,
	[ID_NCC] ASC,
	[ID_Thuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_HoaDon]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HoaDon](
	[ID_MACT] [int] NOT NULL,
	[ID_HD] [int] NOT NULL,
	[ID_Thuoc] [int] NOT NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[ThanhTien] [nvarchar](50) NULL,
 CONSTRAINT [PK_CT_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID_MACT] ASC,
	[ID_HD] ASC,
	[ID_Thuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID_HD] [int] NOT NULL,
	[ID_ND] [int] NOT NULL,
	[ID_KH] [int] NULL,
	[NgayLap] [datetime] NOT NULL,
	[TongTien] [float] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID_KH] [int] NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNguoiDung]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNguoiDung](
	[ID_LND] [int] NOT NULL,
	[TenLND] [nvarchar](50) NOT NULL,
	[LUONGCB] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiNguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID_LND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThuoc]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThuoc](
	[ID_LT] [int] NOT NULL,
	[TenLT] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiThuoc] PRIMARY KEY CLUSTERED 
(
	[ID_LT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID_ND] [int] NOT NULL,
	[ID_LND] [int] NOT NULL,
	[HoTen] [nvarchar](255) NULL,
	[SDT] [varchar](13) NULL,
	[GioiTinh] [nvarchar](13) NULL,
	[NgaySinh] [date] NULL,
	[HinhAnh] [varchar](50) NULL,
	[CaLamViec] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](30) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID_ND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[ID_NCC] [int] NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Gmail] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[ID_NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapHang]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapHang](
	[ID_PN] [int] NOT NULL,
	[ID_ND] [int] NOT NULL,
	[ID_NCC] [int] NOT NULL,
	[NgayNhap] [date] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_PhieuNhapHang_1] PRIMARY KEY CLUSTERED 
(
	[ID_PN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 5/17/2023 1:07:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[ID_Thuoc] [int] NOT NULL,
	[ID_LT] [int] NOT NULL,
	[ID_NCC] [int] NOT NULL,
	[TenThuoc] [nvarchar](50) NULL,
	[NgaySanXuat] [date] NULL,
	[HanSuDung] [date] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [float] NULL,
	[DonGia] [float] NULL,
	[SoLuongNhap] [int] NULL,
	[HinhAnh] [nvarchar] (50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Thuoc] PRIMARY KEY CLUSTERED 
(
	[ID_Thuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapHang_NhaCungCap] FOREIGN KEY([ID_NCC])
REFERENCES [dbo].[NhaCungCap] ([ID_NCC])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapHang] CHECK CONSTRAINT [FK_ChiTietPhieuNhapHang_NhaCungCap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapHang_PhieuNhapHang] FOREIGN KEY([ID_PN])
REFERENCES [dbo].[PhieuNhapHang] ([ID_PN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapHang] CHECK CONSTRAINT [FK_ChiTietPhieuNhapHang_PhieuNhapHang]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapHang_Thuoc] FOREIGN KEY([ID_Thuoc])
REFERENCES [dbo].[Thuoc] ([ID_Thuoc])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapHang] CHECK CONSTRAINT [FK_ChiTietPhieuNhapHang_Thuoc]
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CT_HoaDon_HoaDon] FOREIGN KEY([ID_HD])
REFERENCES [dbo].[HoaDon] ([ID_HD])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CT_HoaDon_HoaDon]
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CT_HoaDon_Thuoc] FOREIGN KEY([ID_Thuoc])
REFERENCES [dbo].[Thuoc] ([ID_Thuoc])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CT_HoaDon_Thuoc]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([ID_KH])
REFERENCES [dbo].[KhachHang] ([ID_KH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([ID_ND])
REFERENCES [dbo].[NguoiDung] ([ID_ND])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NguoiDung]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_LoaiNguoiDung] FOREIGN KEY([ID_LND])
REFERENCES [dbo].[LoaiNguoiDung] ([ID_LND])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_LoaiNguoiDung]
GO
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapHang_NguoiDung] FOREIGN KEY([ID_PN])
REFERENCES [dbo].[NguoiDung] ([ID_ND])
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK_PhieuNhapHang_NguoiDung]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_LoaiThuoc] FOREIGN KEY([ID_LT])
REFERENCES [dbo].[LoaiThuoc] ([ID_LT])
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_LoaiThuoc]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_NhaCungCap] FOREIGN KEY([ID_NCC])
REFERENCES [dbo].[NhaCungCap] ([ID_NCC])
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_NhaCungCap]
GO
