USE QLBanKhan
GO
/****** Object:  Database [QLBanKhan]    Script Date: 07/08/2021 2:35:50 SA ******/
CREATE DATABASE [QLBanKhan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanKhan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBanKhan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBanKhan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBanKhan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBanKhan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanKhan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanKhan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanKhan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanKhan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanKhan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanKhan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanKhan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBanKhan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanKhan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanKhan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanKhan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanKhan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanKhan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanKhan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanKhan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanKhan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBanKhan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanKhan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanKhan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanKhan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanKhan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanKhan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanKhan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanKhan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBanKhan] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanKhan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanKhan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanKhan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanKhan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanKhan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanKhan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBanKhan] SET QUERY_STORE = OFF
GO
USE [QLBanKhan]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](30) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[MaCL] [int] IDENTITY(1,1) NOT NULL,
	[TenCL] [nchar](10) NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 07/08/2021 2:35:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Sanphammoi] [bit] NULL,
	[Anhbia] [nvarchar](15) NULL,
	[Mahang] [int] NULL,
	[MaCL] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 2, 2, CAST(2000000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 10, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (14, 14, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (14, 16, 1, CAST(200000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (15, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (13, CAST(N'2021-07-28T00:10:53.090' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (14, CAST(N'2021-07-28T00:11:27.207' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (15, CAST(N'2021-07-29T09:34:27.573' AS DateTime), NULL, 16)
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'G7 Towels')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'Charlie N&L')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'Lock Towels')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Family Towels')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Fuji Towels')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] ON 

INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (1, N'Cotton')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (2, N'Bamboo')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (3, N'Modal')
SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'Nguyen van Cuong', N'Admin@gmail.com', N'0812883636', N'12345678', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Nguyen van Cuong', N'cuongtest@gmail.com', N'0812883636', N'12345678', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Cường 123', N'Khach@gmail.com', N'0812883636', N'12345678', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (2, N'Khăn Mặt Cotton G7', CAST(2000000 AS Decimal(18, 0)), 9, N'Khăn Mặt Cotton G7',  0,  N'ip3.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (5, N'Khăn Mặt Bamboo G7', CAST(2000000 AS Decimal(18, 0)), 10, N'Khăn Mặt Bamboo G7',  0,  N'ip4.jpg', 1, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (6, N'Khăn Tắm Modal G7', CAST(2000000 AS Decimal(18, 0)), 10, N'Khăn Tắm Modal G7',  0,  N'ip5.jpg', 1, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (7, N'Khăn Gội Cotton Charlie N&L', CAST(2000000 AS Decimal(18, 0)), 2, N'Khăn Gội Cotton Charlie N&L',  0,  N'ip6.jpg', 2, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (8, N'Khăn Tắm Cotton Charlie N&L', CAST(1000000 AS Decimal(18, 0)), 1, N'Khăn Tắm Cotton Charlie N&L',  0,  N'ss1.jpg', 2, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (9, N'Khăn Gội Cotton Fuji', CAST(1000000 AS Decimal(18, 0)), 1, N'Khăn Gội Cotton Fuji',  0,  N'ss2.jpg', 5, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (10, N'Khăn Mặt Bamboo Fuji', CAST(2000000 AS Decimal(18, 0)), 1, N'Khăn Mặt Bamboo Fuji',  0,  N'ss3.jpg', 5, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (11, N'Khăn Lau Cotton Family', CAST(2000000 AS Decimal(18, 0)), 2, N'Khăn Lau Cotton Fuji',  0,  N'ss4.jpg', 4, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (13, N'Khăn Spa Modal Lock', CAST(200000 AS Decimal(18, 0)), 10, N'Khăn Spa Modal Lock',  0,  N'mi4.jpg', 3, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (14, N'Khăn Spa Bamboo Lock', CAST(2000000 AS Decimal(18, 0)), 10, N'Khăn Spa Bamboo Lock',  0,  N'mi5.jpg', 3, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (15, N'Khăn Gym Cotton Lock', CAST(20000 AS Decimal(18, 0)), 10, N'Khăn Gym Cotton Lock',  0,  N'mi6.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota],  [Sanphammoi],  [Anhbia], [Mahang], [MaCL]) VALUES (16, N'Khăn Mặt Modal G7', CAST(200000 AS Decimal(18, 0)), 10, N'Mi7',  0,  N'mi7.jpg', 1, 3)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_ChatLieu] FOREIGN KEY([MaCL])
REFERENCES [dbo].[ChatLieu] ([MaCL])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_ChatLieu]
GO
USE [master]
GO
ALTER DATABASE [QLBanKhan] SET  READ_WRITE 
GO
