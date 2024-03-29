USE [QuanLyHocVien]
GO
/****** Object:  Table [dbo].[dang_nhap]    Script Date: 03/06/2021 12:11:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dang_nhap](
	[tendangnhap] [nchar](10) NULL,
	[matkhau] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoc_vien]    Script Date: 03/06/2021 12:11:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoc_vien](
	[ma_hoc_vien] [int] NOT NULL,
	[ho_ten] [varchar](225) NULL,
	[ngay_sinh] [date] NULL,
	[gioi_tinh] [bit] NULL,
	[so_dien_thoai] [varchar](50) NULL,
	[dia_chi] [nvarchar](225) NULL,
	[tinh_trang] [bit] NULL,
 CONSTRAINT [PK_hoc_vien] PRIMARY KEY CLUSTERED 
(
	[ma_hoc_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoc_vien1]    Script Date: 03/06/2021 12:11:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoc_vien1](
	[ma_hoc_vien] [int] NOT NULL,
	[ten] [nvarchar](50) NULL,
	[ngay_sinh] [date] NULL,
	[sdt] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[gioi_tinh] [nvarchar](50) NULL,
	[dia_chi] [nvarchar](50) NULL,
 CONSTRAINT [PK_hoc_vien1] PRIMARY KEY CLUSTERED 
(
	[ma_hoc_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khoa_hoc]    Script Date: 03/06/2021 12:11:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khoa_hoc](
	[ma_khoa_hoc] [int] NOT NULL,
	[ten_khoa_hoc] [nvarchar](50) NULL,
	[ten_gv] [nvarchar](50) NULL,
	[mo_ta] [nvarchar](225) NULL,
	[tong_so_hoc_vien] [int] NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ket_thuc] [date] NULL,
	[tinh_trang] [bit] NULL,
 CONSTRAINT [PK_khoa_hoc] PRIMARY KEY CLUSTERED 
(
	[ma_khoa_hoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lop_hoc]    Script Date: 03/06/2021 12:11:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lop_hoc](
	[ma_lop_hoc] [int] NOT NULL,
	[ma_khoa_hoc] [int] NOT NULL,
	[ma_hoc_vien] [int] NOT NULL,
	[ngay_dang_ky] [date] NOT NULL,
	[tinh_trang] [bit] NULL,
 CONSTRAINT [PK_lop_hoc_1] PRIMARY KEY CLUSTERED 
(
	[ma_lop_hoc] ASC,
	[ma_khoa_hoc] ASC,
	[ma_hoc_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[dang_nhap] ([tendangnhap], [matkhau]) VALUES (N'admin     ', N'admin     ')
GO
INSERT [dbo].[hoc_vien1] ([ma_hoc_vien], [ten], [ngay_sinh], [sdt], [email], [gioi_tinh], [dia_chi]) VALUES (1, N'Trần Thị Phương Nhi', CAST(N'2001-05-02' AS Date), N'0359805446', N'tranphuongnhi321@gmail.com', N'Nữ', N'KonTum')
INSERT [dbo].[hoc_vien1] ([ma_hoc_vien], [ten], [ngay_sinh], [sdt], [email], [gioi_tinh], [dia_chi]) VALUES (2, N'Nguyễn Thị Ý Nhi', CAST(N'2001-01-06' AS Date), N'09856321456', N'ynhinguyen@gmail.com', N'Nữ', N'Đà Nẵng')
INSERT [dbo].[hoc_vien1] ([ma_hoc_vien], [ten], [ngay_sinh], [sdt], [email], [gioi_tinh], [dia_chi]) VALUES (3, N'Nguyễn Thị Cẩm Linh', CAST(N'2001-07-02' AS Date), N'0987456324', N'camlingnguyen@gmail.com', N'Nữ', N'Quảng Bình')
INSERT [dbo].[hoc_vien1] ([ma_hoc_vien], [ten], [ngay_sinh], [sdt], [email], [gioi_tinh], [dia_chi]) VALUES (4, N'Lê Thị Trúc Vy', CAST(N'2001-02-04' AS Date), N'0365412589', N'trucvyle@gmail.com', N'Nữ', N'Bình Định')
INSERT [dbo].[hoc_vien1] ([ma_hoc_vien], [ten], [ngay_sinh], [sdt], [email], [gioi_tinh], [dia_chi]) VALUES (5, N'Phan Hữu Tường', CAST(N'2001-04-02' AS Date), N'0866505519', N'huutuongphan@gmail.com', N'Nam', N'Quảng Trị')
INSERT [dbo].[hoc_vien1] ([ma_hoc_vien], [ten], [ngay_sinh], [sdt], [email], [gioi_tinh], [dia_chi]) VALUES (6, N'Nguyễn Thị Cẩm Tú', CAST(N'2001-04-08' AS Date), N'0985632445', N'tu@gmail.com', N'Nữ', N'Hà Tĩnh')
GO
INSERT [dbo].[khoa_hoc] ([ma_khoa_hoc], [ten_khoa_hoc], [ten_gv], [mo_ta], [tong_so_hoc_vien], [ngay_bat_dau], [ngay_ket_thuc], [tinh_trang]) VALUES (1, N'Lập trình java', N'Đỗ Phú Huy', N'Học dễ lắm', 50, CAST(N'2020-05-02' AS Date), CAST(N'2020-07-05' AS Date), 1)
INSERT [dbo].[khoa_hoc] ([ma_khoa_hoc], [ten_khoa_hoc], [ten_gv], [mo_ta], [tong_so_hoc_vien], [ngay_bat_dau], [ngay_ket_thuc], [tinh_trang]) VALUES (2, N'Thực hành lập trình java', N'Lê Thiện Nhật Quang', N'Khó mà qua môn', 30, CAST(N'2020-05-02' AS Date), CAST(N'2020-07-02' AS Date), 1)
INSERT [dbo].[khoa_hoc] ([ma_khoa_hoc], [ten_khoa_hoc], [ten_gv], [mo_ta], [tong_so_hoc_vien], [ngay_bat_dau], [ngay_ket_thuc], [tinh_trang]) VALUES (3, N'Lập trình PHP', N'Nguyễn Văn A', N'Dễ lắm', 80, CAST(N'2021-01-06' AS Date), CAST(N'2021-09-10' AS Date), 0)
INSERT [dbo].[khoa_hoc] ([ma_khoa_hoc], [ten_khoa_hoc], [ten_gv], [mo_ta], [tong_so_hoc_vien], [ngay_bat_dau], [ngay_ket_thuc], [tinh_trang]) VALUES (4, N'Lập trình VB.Net', N'Hoàng Thị Mỹ Lệ', N'Dễ lắm', 80, CAST(N'2021-05-02' AS Date), CAST(N'2021-10-06' AS Date), 1)
GO
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (1, 1, 1, CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (2, 2, 4, CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (2, 3, 2, CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (2, 3, 3, CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (2, 4, 1, CAST(N'2020-12-10' AS Date), 1)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (3, 3, 1, CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (3, 4, 1, CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (4, 2, 5, CAST(N'2020-02-01' AS Date), 0)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (4, 4, 1, CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[lop_hoc] ([ma_lop_hoc], [ma_khoa_hoc], [ma_hoc_vien], [ngay_dang_ky], [tinh_trang]) VALUES (4, 4, 5, CAST(N'2020-02-01' AS Date), 0)
GO
ALTER TABLE [dbo].[lop_hoc]  WITH CHECK ADD  CONSTRAINT [FK_lop_hoc_hoc_vien1] FOREIGN KEY([ma_hoc_vien])
REFERENCES [dbo].[hoc_vien1] ([ma_hoc_vien])
GO
ALTER TABLE [dbo].[lop_hoc] CHECK CONSTRAINT [FK_lop_hoc_hoc_vien1]
GO
ALTER TABLE [dbo].[lop_hoc]  WITH CHECK ADD  CONSTRAINT [FK_lop_hoc_khoa_hoc] FOREIGN KEY([ma_khoa_hoc])
REFERENCES [dbo].[khoa_hoc] ([ma_khoa_hoc])
GO
ALTER TABLE [dbo].[lop_hoc] CHECK CONSTRAINT [FK_lop_hoc_khoa_hoc]
GO
