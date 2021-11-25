USE [master]
GO
/****** Object:  Database [dbSimpleCRM]    Script Date: 11/26/2021 6:49:56 AM ******/
CREATE DATABASE [dbSimpleCRM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbSimpleCRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbSimpleCRM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbSimpleCRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbSimpleCRM_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbSimpleCRM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbSimpleCRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbSimpleCRM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbSimpleCRM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbSimpleCRM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbSimpleCRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbSimpleCRM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET RECOVERY FULL 
GO
ALTER DATABASE [dbSimpleCRM] SET  MULTI_USER 
GO
ALTER DATABASE [dbSimpleCRM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbSimpleCRM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbSimpleCRM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbSimpleCRM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbSimpleCRM] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbSimpleCRM', N'ON'
GO
ALTER DATABASE [dbSimpleCRM] SET QUERY_STORE = OFF
GO
USE [dbSimpleCRM]
GO
/****** Object:  Table [dbo].[dich_vu_ctrinh]    Script Date: 11/26/2021 6:49:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dich_vu_ctrinh](
	[ma_dich_vu] [nvarchar](10) NOT NULL,
	[dien_giai] [nvarchar](100) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dich_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dv_hanh_chinh]    Script Date: 11/26/2021 6:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dv_hanh_chinh](
	[ma_tinh] [nvarchar](10) NOT NULL,
	[ten_tinh] [nvarchar](100) NOT NULL,
	[ma_quan_huyen] [nvarchar](10) NOT NULL,
	[ten_quan_huyen] [nvarchar](100) NOT NULL,
	[ma_phuong_xa] [nvarchar](10) NOT NULL,
	[ten_phuong_xa] [nvarchar](100) NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[uu_tien] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tinh] ASC,
	[ma_quan_huyen] ASC,
	[ma_phuong_xa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 11/26/2021 6:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[ma_khach_hang] [nvarchar](10) NOT NULL,
	[ma_nguon] [nvarchar](10) NULL,
	[ma_nhom] [nvarchar](10) NULL,
	[ten_don_vi] [nvarchar](100) NULL,
	[qui_mo] [nvarchar](100) NULL,
	[loai_hinh] [nvarchar](100) NULL,
	[ten_nguoi_lh] [nvarchar](100) NULL,
	[gioi_tinh] [tinyint] NULL,
	[email] [nvarchar](251) NULL,
	[facebook] [nvarchar](100) NULL,
	[twitter] [nvarchar](100) NULL,
	[zalo] [nvarchar](100) NULL,
	[viber] [nvarchar](100) NULL,
	[linkedin] [nvarchar](100) NULL,
	[dia_chi] [nvarchar](100) NULL,
	[phuong_xa] [nvarchar](10) NULL,
	[quan_huyen] [nvarchar](10) NULL,
	[tinh_thanh] [nvarchar](10) NULL,
	[ghi_chu] [nvarchar](256) NULL,
	[tiem_nang] [tinyint] NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[ngay_hop_dong] [datetime] NULL,
	[gia_tri_hd] [money] NULL,
	[cap_do_kh] [nvarchar](10) NULL,
	[trang_thai] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_khach_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_cong_trinh]    Script Date: 11/26/2021 6:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_cong_trinh](
	[loai_cong_trinh] [nvarchar](10) NOT NULL,
	[dien_giai] [nvarchar](100) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[loai_cong_trinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mang_xa_hoi]    Script Date: 11/26/2021 6:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mang_xa_hoi](
	[social] [nvarchar](10) NOT NULL,
	[socialBrand] [nvarchar](100) NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[social] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguon_khach_hang]    Script Date: 11/26/2021 6:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguon_khach_hang](
	[ma_nguon] [nvarchar](10) NOT NULL,
	[dien_giai] [nvarchar](100) NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nguon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhom_khach_hang]    Script Date: 11/26/2021 6:49:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhom_khach_hang](
	[ma_nhom] [nvarchar](10) NOT NULL,
	[ten_nhom] [nvarchar](100) NOT NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dich_vu_ctrinh] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[dich_vu_ctrinh] ADD  DEFAULT (getdate()) FOR [ngay_cap_nhat]
GO
ALTER TABLE [dbo].[dv_hanh_chinh] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[dv_hanh_chinh] ADD  DEFAULT (getdate()) FOR [ngay_cap_nhat]
GO
ALTER TABLE [dbo].[dv_hanh_chinh] ADD  DEFAULT ((99)) FOR [uu_tien]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT ((1)) FOR [gioi_tinh]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (getdate()) FOR [ngay_cap_nhat]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (getdate()) FOR [ngay_hop_dong]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (NULL) FOR [gia_tri_hd]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (NULL) FOR [cap_do_kh]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (NULL) FOR [trang_thai]
GO
ALTER TABLE [dbo].[loai_cong_trinh] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[loai_cong_trinh] ADD  DEFAULT (getdate()) FOR [ngay_cap_nhat]
GO
ALTER TABLE [dbo].[mang_xa_hoi] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[mang_xa_hoi] ADD  DEFAULT (getdate()) FOR [ngay_cap_nhat]
GO
ALTER TABLE [dbo].[nguon_khach_hang] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[nguon_khach_hang] ADD  DEFAULT (getdate()) FOR [ngay_cap_nhat]
GO
ALTER TABLE [dbo].[nhom_khach_hang] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[nhom_khach_hang] ADD  DEFAULT (getdate()) FOR [ngay_cap_nhat]
GO
USE [master]
GO
ALTER DATABASE [dbSimpleCRM] SET  READ_WRITE 
GO
