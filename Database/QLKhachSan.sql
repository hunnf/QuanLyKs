
CREATE DATABASE [QLKhachSan]
GO
ALTER DATABASE [QLKhachSan] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLKhachSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLKhachSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLKhachSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLKhachSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLKhachSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLKhachSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLKhachSan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLKhachSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLKhachSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLKhachSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLKhachSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLKhachSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLKhachSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLKhachSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLKhachSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLKhachSan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLKhachSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLKhachSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLKhachSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLKhachSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLKhachSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLKhachSan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLKhachSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLKhachSan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLKhachSan] SET  MULTI_USER 
GO
ALTER DATABASE [QLKhachSan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLKhachSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLKhachSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLKhachSan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLKhachSan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLKhachSan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLKhachSan', N'ON'
GO
ALTER DATABASE [QLKhachSan] SET QUERY_STORE = OFF
GO
USE [QLKhachSan]
GO
/****** Object:  Table [dbo].[tblctdatphong]    Script Date: 27/12/2021 6:41:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblctdatphong](
	[mapd] [nvarchar](50) NOT NULL,
	[maphong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblctdatphong] PRIMARY KEY CLUSTERED 
(
	[mapd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblctthuephong](
	[mapt] [nvarchar](50) NOT NULL,
	[maphong] [nvarchar](50) NOT NULL,
	[ngay] [nvarchar](50) NOT NULL,
	[madv] [nvarchar](50) NOT NULL,
	[soluong] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblctthuephong] PRIMARY KEY CLUSTERED 
(
	[mapt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblctvattu](
	[mavattu] [nvarchar](50) NULL,
	[malp] [nvarchar](50) NULL,
	[soluong] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbldichvu](
	[madv] [nvarchar](50) NOT NULL,
	[tendv] [nvarchar](50) NULL,
	[gia] [nvarchar](50) NULL,
	[donvitinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbldichvu] PRIMARY KEY CLUSTERED 
(
	[madv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblhoadon](
	[mahd] [nvarchar](50) NOT NULL,
	[ngaythanhtoan] [nvarchar](50) NULL,
	[tongtien] [nvarchar](50) NULL,
	[mapt] [nvarchar](50) NULL,
	[makh] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblhoadon] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkhachhang](
	[makh] [nvarchar](50) NOT NULL,
	[tenkh] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](50) NULL,
	[ngaysinh] [nvarchar](50) NULL,
	[cmnd] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblkhachhang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblloaiphong](
	[maloai] [nvarchar](50) NOT NULL,
	[songuoi] [nvarchar](50) NULL,
	[gia] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblloaiphong] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnhanvien](
	[manv] [nvarchar](50) NOT NULL,
	[tennv] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](50) NULL,
	[ngaysinh] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[chucvu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblnhanvien] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblphieudatphong](
	[mapd] [nvarchar](50) NOT NULL,
	[makh] [nvarchar](50) NULL,
	[ngayden] [nvarchar](50) NULL,
	[ngaydi] [nvarchar](50) NULL,
	[sotiendat] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[songuoi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblphieudatphong_1] PRIMARY KEY CLUSTERED 
(
	[mapd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblphieuthuephong](
	[mapt] [nvarchar](50) NOT NULL,
	[mapd] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblphieudatphong] PRIMARY KEY CLUSTERED 
(
	[mapt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblphong](
	[maphong] [nvarchar](50) NOT NULL,
	[maloai] [nvarchar](50) NULL,
	[dadat] [nvarchar](50) NULL,
	[danhan] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblphong] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltrangthaiphong](
	[maphong] [nvarchar](50) NOT NULL,
	[trangthai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbltrangthaiphong] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluser](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[chucvu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbluser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblvattu](
	[mavattu] [nvarchar](50) NOT NULL,
	[tenvattu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblvattu] PRIMARY KEY CLUSTERED 
(
	[mavattu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'', N'')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'DP001', N'A103')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD005', N'A202')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD007', N'B204')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD008', N'B204')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD009', N'B204')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD012', N'C102')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD013', N'A101')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD014', N'A104')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD015', N'A203')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD016', N'C101')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD017', N'C103')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD018', N'B201')
INSERT [dbo].[tblctdatphong] ([mapd], [maphong]) VALUES (N'PD19', N'B203')
GO
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'', N'19/12/2021 3:20:18 CH', N'1400000', N'PD004', N'KH04', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD001', N'12/12/2021', N'250000', N'PD006', N'KH01', N'admin')
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD002', N'16/12/2021', N'3000000', N'PD001', N'KH02', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD003', N'17/12/2021', N'2000000', N'PD003', N'KH05', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD004', N'19/12/2021', N'2000000', N'PD003', N'KH06', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD006', N'19/12/2021 10:26:46 SA', N'1300000', N'PD004', N'KH04', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD007', N'19/12/2021 10:28:08 SA', N'2700000', N'PD008', N'KH08', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD008', N'19/12/2021 10:29:49 SA', N'4000000', N'PD005', N'KH05', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD010', N'19/12/2021 10:56:27 SA', N'4200000', N'PD005', N'KH05', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD011', N'19/12/2021 11:19:41 SA', N'2300000', N'PD009', N'KH09', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD012', N'19/12/2021 11:46:43 SA', N'2300000', N'PD009', N'KH09', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD013', N'19/12/2021 12:22:21 CH', N'4200000', N'PD005', N'KH05', NULL)
INSERT [dbo].[tblhoadon] ([mahd], [ngaythanhtoan], [tongtien], [mapt], [makh], [username]) VALUES (N'HD014', N'27/12/2021 3:55:54 CH', N'1400000', N'PD011', N'KH11', NULL)
GO
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH01', N'Nguyễn Tiến Dũng', N'Nam', N'04/06/2001', N'124569875298', N'Phú Thọ', N'0123654789', N'admin')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH02', N'Nguyễn Viết Hiệp', N'Nam', N'03/11/2001', N'124569875298', N'Hà Nội', N'0123654789', N'admin')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH03', N'Nguyễn Thành Đạt', N'Nam', N'28/10/2001', N'124569875298', N'Hưng Yên', N'0123654789', N'')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH04', N'Nguyễn Mạnh Hùng', N'Nam', N'27/10/2001', N'124569875298', N'Phú Thọ', N'0123654789', N'')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH05', N'Trần Vũ Đại', N'Nam', N'02/10/2001', N'124569875298', N'Hưng Yên', N'0123654789', N'')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH06', N'Vũ Như Tuấn Hùng', N'Nữ', N'15/09/2001', N'124569875298', N'Hưng Yên', N'0123654789', N'')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH07', N'Đoàn Thị Phương', N'Nữ', N'18/08/2001', N'124569875298', N'Hải Phòng', N'0123654789', N'')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH08', N'Nguyễn Thị Hồng Thái', N'Nữ', N'02/09/2001', N'124569875298', N'Ninh Bình', N'0123654789', N'')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH09', N'Hoàng Việt Kim', N'Nam', N'09/05/2001', N'123456789222', N'Hà Nội', N'0123456789', N'')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH10', N'Nguyễn Xuân', N'Nam', N'09/05/2002', N'123456789222', N'Hà Nội', N'0123456789', N'Không')
INSERT [dbo].[tblkhachhang] ([makh], [tenkh], [gioitinh], [ngaysinh], [cmnd], [diachi], [sdt], [ghichu]) VALUES (N'KH11', N'Nguyễn Xuân Thanh', N'Nam', N'09/06/2001', N'123456789222', N'Hà Nội', N'0123456789', N'Không')
GO
INSERT [dbo].[tblloaiphong] ([maloai], [songuoi], [gia]) VALUES (N'Loại 1', N'2', N'150000')
INSERT [dbo].[tblloaiphong] ([maloai], [songuoi], [gia]) VALUES (N'Loại 2', N'3', N'200000')
INSERT [dbo].[tblloaiphong] ([maloai], [songuoi], [gia]) VALUES (N'Loại 3', N'4', N'300000')
INSERT [dbo].[tblloaiphong] ([maloai], [songuoi], [gia]) VALUES (N'Loại 5', N'2', N'200000')
INSERT [dbo].[tblloaiphong] ([maloai], [songuoi], [gia]) VALUES (N'Loại 6', N'3', N'300000')
INSERT [dbo].[tblloaiphong] ([maloai], [songuoi], [gia]) VALUES (N'Loại 7', N'4', N'400000')
INSERT [dbo].[tblloaiphong] ([maloai], [songuoi], [gia]) VALUES (N'Loại 8', N'4', N'500000')
GO
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'', N'', N'', N'', N'', NULL, N'', N'')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD001', N'KH01', N'12/03/2021', NULL, N'200000', NULL, NULL, N'3')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD002', N'KH02', N'11/20/2021', NULL, N'150000', NULL, NULL, N'2')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD003', N'KH03', N'12/02/2021', NULL, N'200000', NULL, NULL, N'3')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD004', N'KH04', N'12/05/2021', NULL, N'100000', NULL, NULL, N'1')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD005', N'KH05', N'11/07/2021', NULL, N'100000', NULL, NULL, NULL)
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD006', N'KH06', N'12/07/2021', NULL, N'200000', NULL, NULL, NULL)
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD007', N'KH07', N'12/11/2021', N'23/12/2021', N'200000', NULL, N'chờ', N'2')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD008', N'KH08', N'12/11/2021', N'23/12/2021', N'200000', NULL, N'chờ', N'1')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD009', N'KH09', N'12/10/2021', N'23/12/2021', N'200000', NULL, N'chờ', N'1')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD010', N'KH10', N'12/11/2021', N'', N'200000', NULL, N'chờ', N'2')
INSERT [dbo].[tblphieudatphong] ([mapd], [makh], [ngayden], [ngaydi], [sotiendat], [username], [tinhtrang], [songuoi]) VALUES (N'PD011', N'KH11', N'12/20/2021', N'', N'200000', NULL, N'chờ', N'2')
GO
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'A101', N'Loại 2', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'A102', N'Loại 2', N'0', N'1')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'A103', N'Loại 3', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'A104', N'Loại 3', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'A201', N'Loại 1', N'0', N'1')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'A202', N'Loại 1', N'0', N'1')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'A203', N'Loại 2', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'A204', N'Loại 2', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'B101', N'Loại 4', N'0', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'B102', N'Loại 4', N'0', N'1')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'B201', N'Loại 3', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'B202', N'Loại 4', N'0', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'B203', N'Loại 1', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'B204', N'Loại 2', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'C101', N'Loại 1', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'C102', N'Loại 2', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'C103', N'Loại 3', N'1', N'0')
INSERT [dbo].[tblphong] ([maphong], [maloai], [dadat], [danhan]) VALUES (N'C104', N'Loại2', N'0', N'0')
GO
INSERT [dbo].[tbluser] ([username], [password], [fullname], [chucvu]) VALUES (N'admin', N'admin', N'admin', N'Admin')
INSERT [dbo].[tbluser] ([username], [password], [fullname], [chucvu]) VALUES (N'demo', N'demo', N'quanly', N'Quản Lý')
INSERT [dbo].[tbluser] ([username], [password], [fullname], [chucvu]) VALUES (N'dung', N'dung', N'admin', N'Admin')
INSERT [dbo].[tbluser] ([username], [password], [fullname], [chucvu]) VALUES (N'hiep', N'hiep', N'quanly', N'Quản lý')
INSERT [dbo].[tbluser] ([username], [password], [fullname], [chucvu]) VALUES (N'nhanvien', N'nhanvien', N'nhanvien', N'Nhân viên')
INSERT [dbo].[tbluser] ([username], [password], [fullname], [chucvu]) VALUES (N'quanly', N'quanly', N'quanly', N'Quản Lý')
GO
/****** Object:  StoredProcedure [dbo].[CTDatPhong]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[CTDatPhong]
  @mapd nvarchar(50),
  @maphong nvarchar(50)  
AS
BEGIN
   INSERT INTO tblctdatphong(mapd, maphong)
   values(@mapd, @maphong)
END
GO
/****** Object:  StoredProcedure [dbo].[ChangePass]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ChangePass]
	@username nvarchar(50),
	@password  nvarchar(50)

AS
BEGIN
	Update tbluser
	Set
		password = @password
	WHERE
		username = @username
END
GO
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CheckLogin]
	@username as nvarchar(50),
	@password as nvarchar(50)	
AS
DECLARE @result bit
BEGIN
	SET @result = (SELECT TOP 1 COUNT(*) From [tbluser] WHERE [Username]=@username AND [Password]=@password)
	SELECT *, @result AS [Result]
	FROM tbluser
	WHERE [Username]=@username AND [Password]=@password
END
GO
/****** Object:  StoredProcedure [dbo].[DatPhong]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DatPhong]
  @mapd nvarchar(50),
  @makh nvarchar(50),
  @ngayden  nvarchar(50),
  @ngaydi nvarchar(50),
  @sotiendat nvarchar(50),
  @tinhtrang nvarchar(50),
  @songuoi nvarchar(50)  
AS
BEGIN
   INSERT INTO tblphieudatphong(mapd, makh, ngayden, ngaydi, sotiendat, tinhtrang, songuoi)
   values(@mapd, @makh, @ngayden, @ngaydi, @sotiendat, @tinhtrang, @songuoi)
END
GO
/****** Object:  StoredProcedure [dbo].[DSHoaDon]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSHoaDon] 
	
AS
BEGIN
	SELECT *, tblkhachhang.tenkh
	FROM tblhoadon

	INNER JOIN tblkhachhang ON tblkhachhang.makh = tblhoadon.makh

END
GO
/****** Object:  StoredProcedure [dbo].[DSKhachHang]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSKhachHang] 
	
AS
BEGIN
	SELECT makh as [Mã], tenkh as [Họ Tên], gioitinh as [Giới tính], ngaysinh as [Ngày sinh],
		cmnd as [CMND], diachi as [Địa chỉ], sdt as [SĐT], ghichu as [Ghi chú]
	FROM tblkhachhang
	ORDER  BY tblkhachhang.makh DESC
END
GO
/****** Object:  StoredProcedure [dbo].[dsKhachHang_SeclectAll]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[dsKhachHang_SeclectAll]
as
SELECT [makh]
      ,[tenkh]
      ,[gioitinh]
      ,[ngaysinh]
      ,[cmnd]
      ,[diachi]
      ,[sdt]
      ,[ghichu]
  FROM [dbo].[tblkhachhang]

GO
/****** Object:  StoredProcedure [dbo].[DSLoaiPhong]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSLoaiPhong] 
	
AS
BEGIN
	SELECT maloai as [Loại phòng], songuoi as [Số người], gia as [Giá]
	FROM tblloaiphong
END
GO
/****** Object:  StoredProcedure [dbo].[DSPhieuDatPhong]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSPhieuDatPhong] 
	
AS
BEGIN
	SELECT mapd as[Mã phiếu], tblkhachhang.tenkh as [Họ tên], ngayden as [Ngày đến], ngaydi as [Ngày đi], tinhtrang as [Tình trạng],
		songuoi as [Số người]
	FROM tblphieudatphong
	INNER JOIN tblkhachhang ON tblkhachhang.makh = tblphieudatphong.makh
	ORDER  BY tblphieudatphong.mapd DESC
END
GO
/****** Object:  StoredProcedure [dbo].[DSPhong]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DSPhong] 
	
AS
BEGIN
	SELECT tblphong.maphong as [Mã phòng], tblphong.maloai as [Loại phòng], tblloaiphong.songuoi as [Số người],
	tblloaiphong.gia as [Giá]
	FROM tblphong

	INNER JOIN tblloaiphong ON tblphong.maloai = tblloaiphong.maloai

END
GO
/****** Object:  StoredProcedure [dbo].[NhanPhong]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[NhanPhong]
	@maphong		nvarchar(50)	
AS

UPDATE tblphong
	SET danhan='1',
	dadat='0'
	
	WHERE maphong=@maphong
GO
/****** Object:  StoredProcedure [dbo].[SuaKH]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SuaKH]
	@makh		nvarchar(50),
	@tenkh		nvarchar(50),
	@gioitinh	nvarchar(50),
	@ngaysinh	nvarchar(50),
	@cmnd		nvarchar(50),
	@diachi		nvarchar(50),
	@sdt		nvarchar(50),
	@ghichu		nvarchar(50),
	@makhcu		nvarchar(50)
AS
UPDATE tblkhachhang
	SET makh=@makh, tenkh=@tenkh, gioitinh=@gioitinh, ngaysinh=@ngaysinh,
		cmnd=@cmnd, diachi=@diachi, sdt=@sdt, ghichu=@ghichu
	WHERE makh=@makhcu
GO
/****** Object:  StoredProcedure [dbo].[TimKH]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKH]	
	@makh nvarchar(50)	
AS
BEGIN
	SELECT *
	FROM tblkhachhang
	WHERE makh = @makh
END
GO
/****** Object:  StoredProcedure [dbo].[TimKHMa]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKHMa]	
	@makh nvarchar(50)	
AS
BEGIN
	SELECT makh as [Mã], tenkh as [Họ Tên], gioitinh as [Giới tính], ngaysinh as [Ngày sinh],
		cmnd as [CMND], diachi as [Địa chỉ], sdt as [SĐT], ghichu as [Ghi chú]
	FROM tblkhachhang
	WHERE makh LIKE '%'+ @makh + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[TimKHTen]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKHTen]	
	@tenkh nvarchar(50)	
AS
BEGIN
	SELECT makh as [Mã], tenkh as [Họ Tên], gioitinh as [Giới tính], ngaysinh as [Ngày sinh],
		cmnd as [CMND], diachi as [Địa chỉ], sdt as [SĐT], ghichu as [Ghi chú]
	FROM tblkhachhang
	WHERE tenkh LIKE '%'+ @tenkh + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[TimPhongN]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimPhongN]
	@maphieu		nvarchar(50)	
AS
BEGIN
	SELECT maphong
	FROM tblctdatphong	
	WHERE mapd=@maphieu
END
GO
/****** Object:  StoredProcedure [dbo].[TimPhongTrong]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimPhongTrong] 
	@songuoi nvarchar(50)
AS
BEGIN
	SELECT tblphong.maphong as [Phòng], tblphong.maloai as [Loại],
		tblloaiphong.songuoi as [Số người],	tblloaiphong.gia as [Giá]
	FROM tblphong
	INNER JOIN tblloaiphong ON tblphong.maloai = tblloaiphong.maloai
	WHERE tblphong.dadat = '0' AND tblphong.danhan = '0' AND tblloaiphong.songuoi >= @songuoi
END
GO
/****** Object:  StoredProcedure [dbo].[ThemKH]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemKH]
  @makh nvarchar(50),
  @tenkh nvarchar(50),
  @gioitinh  nvarchar(50),
  @ngaysinh nvarchar(50),
  @cmnd nvarchar(50),
  @diachi nvarchar(50),
  @sdt nvarchar(50),
  @ghichu nvarchar(50)
AS
BEGIN
   INSERT INTO tblkhachhang(makh, tenkh, gioitinh, ngaysinh, cmnd, diachi, sdt, ghichu)
   values(@makh, @tenkh, @gioitinh, @ngaysinh, @cmnd, @diachi, @sdt, @ghichu)
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThongKe]
AS
DECLARE @tongphong int
DECLARE @phongtrong int
DECLARE @phongdadat int
DECLARE @phongdanhan int
BEGIN
	SET @tongphong = (SELECT COUNT(*) From tblphong)
	SET @phongdadat = (SELECT COUNT(*) From tblphong WHERE tblphong.dadat='1')
	SET @phongdanhan = (SELECT COUNT(*) From tblphong WHERE tblphong.danhan='1')
	SET @phongtrong = @tongphong - (@phongdadat+ @phongdanhan) 
	SELECT  @phongtrong AS [phongtrong], @phongdadat AS [phongdadat], @phongdanhan AS [phongdanhan]
	FROM tblphong
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDatPhong]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateDatPhong]
	@maphong		nvarchar(50)	
AS
UPDATE tblphong
	SET dadat='1'
	WHERE maphong=@maphong
GO
/****** Object:  StoredProcedure [dbo].[XoaKH]    Script Date: 27/12/2021 6:41:59 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[XoaKH]
	@makh nvarchar(50)
AS
DELETE FROM tblkhachhang WHERE makh=@makh
GO
USE [master]
GO
ALTER DATABASE [QLKhachSan] SET  READ_WRITE 
GO
