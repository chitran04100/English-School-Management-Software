USE [QLTTAN]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 20-Oct-20 9:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[malophoc] [bigint] NOT NULL,
	[mahocvien] [varchar](50) NOT NULL,
	[diemlan1] [float] NULL,
	[makhoahoc] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV]    Script Date: 20-Oct-20 9:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[magiaovien] [int] IDENTITY(1,1) NOT NULL,
	[ho] [nvarchar](10) NOT NULL,
	[tendem] [nvarchar](20) NULL,
	[ten] [nvarchar](10) NOT NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [tinyint] NULL,
	[diachi] [nvarchar](150) NULL,
	[dienthoai] [varchar](30) NULL,
	[email] [varchar](150) NULL,
	[bangcap] [nvarchar](10) NULL,
	[diem] [nvarchar](10) NULL,
	[matkhau] [varchar](50) NULL,
 CONSTRAINT [PK_GV] PRIMARY KEY CLUSTERED 
(
	[magiaovien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocPhi]    Script Date: 20-Oct-20 9:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhi](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[mahp] [int] IDENTITY(1,1) NOT NULL,
	[mahocvien] [varchar](50) NULL,
	[makhoahoc] [bigint] NULL,
	[hocphi] [int] NULL,
	[sotiennop] [int] NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[ngaynop] [date] NULL,
 CONSTRAINT [PK_HocPhi] PRIMARY KEY CLUSTERED 
(
	[mahp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocVien]    Script Date: 20-Oct-20 9:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocVien](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[mahocvien] [varchar](50) NOT NULL,
	[ho] [nvarchar](10) NOT NULL,
	[tendem] [nvarchar](20) NULL,
	[ten] [nvarchar](10) NOT NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [tinyint] NULL,
	[diachi] [nvarchar](150) NULL,
	[dienthoai] [varchar](30) NULL,
	[email] [varchar](150) NULL,
	[matkhau] [varchar](50) NULL,
 CONSTRAINT [PK_HocVien] PRIMARY KEY CLUSTERED 
(
	[mahocvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 20-Oct-20 9:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[makhoahoc] [bigint] IDENTITY(1,1) NOT NULL,
	[tenkhoahoc] [nvarchar](150) NULL,
	[trinhdo] [nvarchar](30) NULL,
	[hocphi] [int] NULL,
	[thoigian] [nvarchar](30) NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[makhoahoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 20-Oct-20 9:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[ngaytao] [datetime] NULL,
	[nguoinguoitao] [varchar](30) NULL,
	[ngaycapnhat] [nchar](10) NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[malophoc] [bigint] IDENTITY(1,1) NOT NULL,
	[makhoahoc] [bigint] NULL,
	[magiaovien] [int] NULL,
	[lichhoc] [nvarchar](30) NULL,
	[ngaybatdau] [date] NULL,
	[ngayketthuc] [date] NULL,
	[daketthuc] [nvarchar](30) NULL,
 CONSTRAINT [PK_LopHoc] PRIMARY KEY CLUSTERED 
(
	[malophoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 20-Oct-20 9:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[tentaikhoan] [varchar](50) NOT NULL,
	[matkhau] [varchar](250) NULL,
 CONSTRAINT [PK_Taikhoan] PRIMARY KEY CLUSTERED 
(
	[tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T21:14:12.327' AS DateTime), N'admin', CAST(N'2020-10-20T21:14:12.327' AS DateTime), N'admin', 36, N'HV1239', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T21:14:24.087' AS DateTime), N'admin', CAST(N'2020-10-20T21:14:24.087' AS DateTime), N'admin', 35, N'HV1185', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 39, N'HV1103', 85, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 47, N'HV1105', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 40, N'HV1107', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 39, N'HV1109', 80, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 37, N'HV1113', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 47, N'HV1115', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 37, N'HV1117', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 47, N'HV1119', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 38, N'HV1123', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.660' AS DateTime), N'admin', 48, N'HV1125', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 35, N'HV1127', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 40, N'HV1129', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 65, N'HV1317', 80, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 38, N'HV1135', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 40, N'HV1137', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 38, N'HV1139', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 45, N'HV1145', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 47, N'HV1147', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 38, N'HV1149', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 46, N'HV1153', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 45, N'HV1155', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.663' AS DateTime), N'admin', 56, N'HV1157', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 46, N'HV1163', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 32, N'HV1323', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 39, N'HV1167', 75, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 38, N'HV1169', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 48, N'HV1173', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 36, N'HV1175', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 48, N'HV1177', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 28, N'HV1327', 80, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 49, N'HV1183', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 49, N'HV1185', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.667' AS DateTime), N'admin', 35, N'HV1187', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.670' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.670' AS DateTime), N'admin', 39, N'HV1189', 50, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.670' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.670' AS DateTime), N'admin', 46, N'HV1193', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:47:21.670' AS DateTime), N'admin', CAST(N'2020-10-20T20:47:21.670' AS DateTime), N'admin', 40, N'HV1195', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.740' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.740' AS DateTime), N'admin', 56, N'HV1197', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.740' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.740' AS DateTime), N'admin', 45, N'HV1199', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.740' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.740' AS DateTime), N'admin', 48, N'HV1203', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 49, N'HV1205', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 35, N'HV1207', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 35, N'HV1209', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 40, N'HV1210', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 45, N'HV1212', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 48, N'HV1213', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 48, N'HV1214', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 56, N'HV1216', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 37, N'HV1217', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 48, N'HV1218', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 39, N'HV1219', 65, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 45, N'HV1220', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 40, N'HV1222', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.743' AS DateTime), N'admin', 35, N'HV1223', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 37, N'HV1225', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 26, N'HV1227', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 39, N'HV1229', 100, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 40, N'HV1233', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 46, N'HV1235', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 48, N'HV1237', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 35, N'HV1239', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 37, N'HV1243', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 46, N'HV1245', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 26, N'HV1247', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 48, N'HV1249', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 48, N'HV1253', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.747' AS DateTime), N'admin', 35, N'HV1255', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 37, N'HV1257', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 56, N'HV1259', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 56, N'HV1263', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 38, N'HV1265', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 26, N'HV1267', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 40, N'HV1269', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 45, N'HV1273', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 56, N'HV1275', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 39, N'HV1277', 95, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 45, N'HV1279', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 46, N'HV1283', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 37, N'HV1285', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 46, N'HV1287', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.750' AS DateTime), N'admin', 46, N'HV1289', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 37, N'HV1293', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 36, N'HV1295', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 37, N'HV1297', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 37, N'HV1299', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 38, N'HV1303', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 47, N'HV1305', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 39, N'HV1307', 100, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 26, N'HV1309', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 38, N'HV1313', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 37, N'HV1315', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 40, N'HV1317', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 47, N'HV1319', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.753' AS DateTime), N'admin', 46, N'HV1323', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.757' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.757' AS DateTime), N'admin', 39, N'HV1325', 95, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.757' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.757' AS DateTime), N'admin', 26, N'HV1327', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.757' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.757' AS DateTime), N'admin', 56, N'HV1103', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.757' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.757' AS DateTime), N'admin', 46, N'HV1105', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 49, N'HV1107', 0, 8)
GO
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 56, N'HV1109', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 36, N'HV1113', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 46, N'HV1115', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 36, N'HV1117', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 59, N'HV1119', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 53, N'HV1123', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 47, N'HV1125', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:23.760' AS DateTime), N'admin', 40, N'HV1127', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:38.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:38.963' AS DateTime), N'admin', 49, N'HV1129', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:38.997' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:38.997' AS DateTime), N'admin', 59, N'HV1133', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:38.997' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:38.997' AS DateTime), N'admin', 53, N'HV1135', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:38.997' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:38.997' AS DateTime), N'admin', 49, N'HV1137', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 53, N'HV1139', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 39, N'HV1145', 65, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 59, N'HV1147', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 53, N'HV1149', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 45, N'HV1153', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 39, N'HV1155', 70, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 26, N'HV1157', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 45, N'HV1163', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 59, N'HV1165', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 56, N'HV1167', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.010' AS DateTime), N'admin', 53, N'HV1169', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.013' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.013' AS DateTime), N'admin', 47, N'HV1173', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.013' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.013' AS DateTime), N'admin', 35, N'HV1175', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.023' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.023' AS DateTime), N'admin', 47, N'HV1177', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.023' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.023' AS DateTime), N'admin', 59, N'HV1179', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 48, N'HV1183', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 48, N'HV1185', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 40, N'HV1187', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 56, N'HV1189', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 45, N'HV1193', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 49, N'HV1195', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 26, N'HV1197', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 44, N'HV1199', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 47, N'HV1203', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 48, N'HV1205', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 50, N'HV1207', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 50, N'HV1209', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 49, N'HV1210', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 44, N'HV1212', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 47, N'HV1213', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.027' AS DateTime), N'admin', 60, N'HV1214', 80, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 26, N'HV1216', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 36, N'HV1217', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 60, N'HV1218', 80, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 27, N'HV1219', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 44, N'HV1220', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 49, N'HV1222', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 50, N'HV1223', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 36, N'HV1225', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 59, N'HV1227', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 27, N'HV1229', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 49, N'HV1233', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 45, N'HV1235', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 60, N'HV1237', 80, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 50, N'HV1239', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 36, N'HV1243', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 45, N'HV1245', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 59, N'HV1247', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.030' AS DateTime), N'admin', 60, N'HV1249', 80, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.053' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.053' AS DateTime), N'admin', 60, N'HV1253', 80, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 50, N'HV1255', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 36, N'HV1257', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 26, N'HV1259', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 26, N'HV1263', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 53, N'HV1265', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 59, N'HV1267', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 49, N'HV1269', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 44, N'HV1273', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 26, N'HV1275', 0, 1)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.063' AS DateTime), N'admin', 27, N'HV1277', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 44, N'HV1279', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 45, N'HV1283', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 36, N'HV1285', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 58, N'HV1287', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 58, N'HV1289', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 36, N'HV1293', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 35, N'HV1295', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 36, N'HV1297', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 36, N'HV1299', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 53, N'HV1303', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 59, N'HV1305', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 27, N'HV1307', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.067' AS DateTime), N'admin', 59, N'HV1309', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 53, N'HV1313', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 36, N'HV1315', 0, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 49, N'HV1317', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 59, N'HV1319', 0, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 58, N'HV1323', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 27, N'HV1325', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 58, N'HV1103', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 48, N'HV1105', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 35, N'HV1107', 0, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 58, N'HV1109', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 38, N'HV1113', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 32, N'HV1115', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 38, N'HV1117', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 32, N'HV1119', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 35, N'HV1123', 0, 10)
GO
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 33, N'HV1125', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 64, N'HV1129', 65, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.070' AS DateTime), N'admin', 27, N'HV1133', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', 64, N'HV1135', 80, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', 64, N'HV1137', 85, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', 64, N'HV1139', 80, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', 72, N'HV1145', 80, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:39.073' AS DateTime), N'admin', 32, N'HV1147', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 64, N'HV1149', 90, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 60, N'HV1153', 40, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 72, N'HV1155', 80, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 44, N'HV1157', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 60, N'HV1163', 85, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 27, N'HV1165', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 58, N'HV1167', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 64, N'HV1169', 80, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 33, N'HV1173', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 53, N'HV1175', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 33, N'HV1177', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 27, N'HV1179', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 50, N'HV1183', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 50, N'HV1185', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 58, N'HV1189', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 60, N'HV1193', 90, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.960' AS DateTime), N'admin', 64, N'HV1195', 90, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 44, N'HV1197', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 72, N'HV1199', 100, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 33, N'HV1203', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 50, N'HV1205', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 64, N'HV1210', 60, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 72, N'HV1212', 80, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 33, N'HV1213', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 33, N'HV1214', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 44, N'HV1216', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 38, N'HV1217', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 33, N'HV1218', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 58, N'HV1219', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 72, N'HV1220', 100, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 64, N'HV1222', 80, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 54, N'HV1225', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 27, N'HV1227', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.963' AS DateTime), N'admin', 58, N'HV1229', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 64, N'HV1233', 100, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 60, N'HV1235', 70, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 33, N'HV1237', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 54, N'HV1243', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 60, N'HV1245', 100, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 27, N'HV1247', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 33, N'HV1249', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 33, N'HV1253', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 54, N'HV1257', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 44, N'HV1259', 0, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 28, N'HV1263', 75, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 64, N'HV1265', 100, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 27, N'HV1267', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 64, N'HV1269', 80, 10)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 72, N'HV1273', 100, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.967' AS DateTime), N'admin', 28, N'HV1275', 50, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 58, N'HV1277', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 72, N'HV1279', 80, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 31, N'HV1283', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 54, N'HV1285', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 31, N'HV1287', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 31, N'HV1289', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 54, N'HV1293', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 53, N'HV1295', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 54, N'HV1297', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 54, N'HV1299', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 32, N'HV1305', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 27, N'HV1309', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 54, N'HV1315', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 32, N'HV1319', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 31, N'HV1323', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 27, N'HV1327', 0, 2)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 72, N'HV1103', 70, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 33, N'HV1105', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 65, N'HV1107', 80, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 72, N'HV1109', 80, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.970' AS DateTime), N'admin', 50, N'HV1113', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 33, N'HV1115', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 50, N'HV1117', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 63, N'HV1123', 100, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 63, N'HV1125', 95, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 53, N'HV1127', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 65, N'HV1129', 80, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 28, N'HV1133', 65, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 63, N'HV1135', 90, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 65, N'HV1137', 90, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 63, N'HV1139', 85, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 31, N'HV1145', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 63, N'HV1149', 80, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 32, N'HV1153', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 31, N'HV1155', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 32, N'HV1163', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.973' AS DateTime), N'admin', 28, N'HV1165', 90, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 72, N'HV1167', 80, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 63, N'HV1169', 70, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 63, N'HV1173', 80, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 54, N'HV1175', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 63, N'HV1177', 70, 9)
GO
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 28, N'HV1179', 65, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 53, N'HV1187', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 72, N'HV1189', 90, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 32, N'HV1193', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.977' AS DateTime), N'admin', 65, N'HV1195', 100, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.980' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.980' AS DateTime), N'admin', 31, N'HV1199', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.980' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.980' AS DateTime), N'admin', 63, N'HV1203', 80, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:48:52.980' AS DateTime), N'admin', CAST(N'2020-10-20T20:48:52.980' AS DateTime), N'admin', 53, N'HV1207', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.437' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.437' AS DateTime), N'admin', 53, N'HV1209', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.437' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.437' AS DateTime), N'admin', 65, N'HV1210', 85, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 31, N'HV1212', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 63, N'HV1213', 75, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 63, N'HV1214', 60, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 63, N'HV1217', 80, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 63, N'HV1218', 80, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 72, N'HV1219', 95, 5)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 31, N'HV1220', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 65, N'HV1222', 95, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 53, N'HV1223', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 63, N'HV1225', 80, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 28, N'HV1227', 80, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 65, N'HV1233', 65, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 32, N'HV1235', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 34, N'HV1237', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.440' AS DateTime), N'admin', 37, N'HV1239', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 34, N'HV1243', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 32, N'HV1245', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 28, N'HV1247', 85, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 34, N'HV1249', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 34, N'HV1253', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 37, N'HV1255', 0, 12)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 34, N'HV1257', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 34, N'HV1265', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.443' AS DateTime), N'admin', 28, N'HV1267', 100, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 65, N'HV1269', 50, 11)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 31, N'HV1273', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 31, N'HV1279', 0, 6)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 32, N'HV1283', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 34, N'HV1285', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 32, N'HV1287', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 32, N'HV1289', 0, 7)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 34, N'HV1293', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 54, N'HV1295', 0, 13)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 34, N'HV1297', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 34, N'HV1299', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 34, N'HV1303', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 28, N'HV1309', 60, 3)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 34, N'HV1313', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', CAST(N'2020-10-20T20:49:09.447' AS DateTime), N'admin', 34, N'HV1315', 0, 9)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T21:04:31.657' AS DateTime), N'admin', CAST(N'2020-10-20T21:04:31.657' AS DateTime), N'admin', 33, N'HV1147', 0, 8)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T21:04:40.723' AS DateTime), N'admin', CAST(N'2020-10-20T21:04:40.723' AS DateTime), N'admin', 58, N'HV1307', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T21:04:44.273' AS DateTime), N'admin', CAST(N'2020-10-20T21:04:44.273' AS DateTime), N'admin', 45, N'HV1325', 0, 4)
INSERT [dbo].[Diem] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [mahocvien], [diemlan1], [makhoahoc]) VALUES (CAST(N'2020-10-20T21:04:48.147' AS DateTime), N'admin', CAST(N'2020-10-20T21:04:48.147' AS DateTime), N'admin', 45, N'HV1216', 0, 4)
SET IDENTITY_INSERT [dbo].[GV] ON 

INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-09T15:57:52.993' AS DateTime), N'admin', CAST(N'2020-10-10T12:56:20.407' AS DateTime), N'admin', 1, N'Nguyễn', N'Ngọc', N'Tinh', CAST(N'1988-12-09' AS Date), 1, N'Tố 3, phường Ngọc Hòa, tỉnh Bình Dương', N'0967245999', N'ngoctu9988@gmail.com', N'IETLS', N'7.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-09T16:10:14.010' AS DateTime), N'admin', CAST(N'2020-10-09T16:10:14.010' AS DateTime), N'admin', 4, N'Phạm', N'Trung', N'Tiến', CAST(N'1992-11-14' AS Date), 1, N'4 Trần Hưng Đạo, Q. Hoàn Kiếm, Hà Nội', N'0903415827', N'trungtien158@gmail.com', N'TOEFT', N'90', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-09T16:10:14.010' AS DateTime), N'admin', CAST(N'2020-10-12T23:02:20.857' AS DateTime), N'admin', 6, N'Đại', N'Chính', N'Nghĩa', CAST(N'1990-12-02' AS Date), 1, N'41 Phan Chu Trinh, Q. Hoàn Kiếm, Hà Nội', N'0903416820', N'dainghia168@gmail.com', N'IELTS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-09T16:10:53.560' AS DateTime), N'admin', CAST(N'2020-10-11T10:56:33.277' AS DateTime), N'admin', 7, N'Trần', N'Văn', N'Hải', CAST(N'1989-06-16' AS Date), 1, N'243A La Thành, Q. Đống Đa, Hà Nội', N'0903417045', N'vanhai170@gmail.com', N'IELTS', N'8', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-09T16:10:53.560' AS DateTime), N'admin', CAST(N'2020-10-12T23:02:26.763' AS DateTime), N'admin', 8, N'Trần', N'Trường', N'Sơn', CAST(N'1990-08-26' AS Date), 1, N'Lô 2B, Khu Công Nghiệp Phú Minh, Phú Diễn,H. Từ Liêm, Hà Nội', N'0903417243', N'truongson172@gmail.com', N'TOEFT', N'114', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-09T16:10:53.560' AS DateTime), N'admin', CAST(N'2020-10-11T10:56:10.507' AS DateTime), N'admin', 9, N'Vũ', N'Thị', N'Nghĩa', CAST(N'1993-02-24' AS Date), 0, N'28/178 Thái Hà, Q. Đống Đa, Hà Nội', N'0903417256', N'thinghia172@gmail.com', N'IELTS', N'7', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-11T10:41:38.970' AS DateTime), N'admin', CAST(N'2020-10-12T23:03:30.060' AS DateTime), N'admin', 11, N'Nguyễn', N'Ngọc', N'Tú', CAST(N'1990-12-12' AS Date), 0, N'Phú Nhuận, HCM', N'0964378176', N'ngoctu@gmail.com', N'IELTS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-11T10:55:10.497' AS DateTime), N'admin', CAST(N'2020-10-12T23:03:25.017' AS DateTime), N'admin', 12, N'Nguyễn', N'Xuân', N'Phương', CAST(N'1987-12-12' AS Date), 1, N'32 Ngõ 49,Huỳnh Thúc Kháng, P. Láng Hạ, Q. Đống Đa, Hà Nội', N'0948327878', N'xuanphuong@gmail.com', N'TOEFT', N'110', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-11T10:56:21.290' AS DateTime), N'admin', CAST(N'2020-10-12T23:03:19.760' AS DateTime), N'admin', 13, N'Trần', N'Ngọc ', N'Hương', CAST(N'1973-01-01' AS Date), 0, N'Phòng 1602, Khu Đô Thị Mới Trung Hòa-Nhân Chính, 24T1 X. Nhân Chính, Q. Cầu Giấy, Hà Nội', N'0926372871', N'ngochuong@gmail.com', N'TOEFT', N'90', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-12T23:06:07.333' AS DateTime), N'admin', CAST(N'2020-10-12T23:06:07.333' AS DateTime), N'admin', 14, N'Phương', N'Thiện ', N'Văn', CAST(N'1993-07-07' AS Date), 0, N'Phòng 504, Tầng5, 115 Lê Duẩn, Q. Hoàn Kiếm, Hà Nội', N'0126783622', N'thienvan@gmail.com', N'IELTS', N'8.0', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-14T10:07:11.367' AS DateTime), N'admin', CAST(N'2020-10-20T16:09:21.400' AS DateTime), N'admin', 15, N'Trần', N'', N'Minh', CAST(N'1989-12-12' AS Date), 0, N'Gia Lai', N'0382118982', N'minhtran@gmail.com', N'IETLS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-18T15:33:42.980' AS DateTime), N'admin', CAST(N'2020-10-18T15:33:42.980' AS DateTime), N'admin', 28, N'Lê', N'Nhã', N'Minh', CAST(N'1983-01-12' AS Date), 1, N'Gò Vấp, HCMC', N'09423894', N'nhaminh@gmail.com', N'IETLS', N'8.0', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T16:10:02.757' AS DateTime), N'admin', CAST(N'2020-10-20T16:57:25.360' AS DateTime), N'admin', 29, N'Vũ', N'Minh', N'Hà', CAST(N'1990-02-01' AS Date), 1, N'Gò Vấp, HCM', N'092847238', N'minhha@gmail.com', N'IELTS', N'8.0', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T16:10:41.713' AS DateTime), N'admin', CAST(N'2020-10-20T16:10:41.713' AS DateTime), N'admin', 30, N'Trần', N'Minh', N'Chí', CAST(N'1993-12-09' AS Date), 1, N'Bình Thạnh, HCM', N'0943847812', N'minhchi@gmail.com', N'IETLS', N'7.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.083' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.083' AS DateTime), N'admin', 32, N'Lê', N'Hoàng', N'Sơn', CAST(N'1990-12-21' AS Date), 1, N'615 KP2,Tên Lửa, P.BTĐ B', N'0902075767', N'son90@gmail.com', N'IELTS', N'8', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.087' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.087' AS DateTime), N'admin', 33, N'Phan', N'Thị Trúc', N'Vy', CAST(N'1995-09-11' AS Date), 0, N'6 Trần Huy Liệu,P.12', N'0902076976', N'vy95@gmail.com', N'IELTS', N'8', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.087' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.087' AS DateTime), N'admin', 34, N'Trương', N'Thị', N'Minh', CAST(N'1991-03-08' AS Date), 0, N'19 Đường 8A, P.BTĐ B', N'0902277829', N'minh91@gmail.com', N'IELTS', N'7', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.087' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.087' AS DateTime), N'admin', 35, N'Trần', N'Thị Ánh', N'Nguyệt', CAST(N'1993-02-02' AS Date), 0, N'265 Dương Đình Hội KP3 P.Tăng Nhơn Phú B', N'0902300279', N'nguyet93@gmail.com', N'IELTS', N'7', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.090' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.090' AS DateTime), N'admin', 36, N'Lê', N'Tuấn', N'Kiệt', CAST(N'1992-06-07' AS Date), 1, N'128/4 Kp3 P.Hiệp Thành', N'0902310456', N'kiet92@gmail.com', N'IELTS', N'7', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.090' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.090' AS DateTime), N'admin', 37, N'Phạm', N'Thị', N'Xoa', CAST(N'1987-10-29' AS Date), 0, N'274 Ngô Quyền, P.08', N'0902313123', N'xoa87@gmail.com', N'IELTS', N'7', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.090' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.090' AS DateTime), N'admin', 38, N'Nguyễn', N'Đoàn', N'Quân', CAST(N'1991-12-10' AS Date), 1, N'3-5 Lô A Khu Chung Cư Hồng Linh X.Bình Hưng', N'0902329009', N'quon91@gmail.com', N'IELTS', N'7', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.090' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.090' AS DateTime), N'admin', 39, N'Võ', N'Thị', N'Thi', CAST(N'1987-07-30' AS Date), 0, N'52/17/2 Nguyễn Thị Thập P. Bỉnh Thuận ', N'0902373620', N'thi87@gmail.com', N'IELTS', N'7', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.093' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.093' AS DateTime), N'admin', 40, N'Trần', N'Anh', N'Tuấn', CAST(N'1990-06-08' AS Date), 1, N'269A Tân Hương, P.Tân Quý', N'0902382328', N'tuan90@gmail.com', N'IELTS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.093' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.093' AS DateTime), N'admin', 41, N'Hà', N'Thị Thúy', N'Ngọc', CAST(N'1989-04-30' AS Date), 0, N'1188 Phạm Thế Hiển P.05', N'0902404069', N'ngoc89@gmail.com', N'IELTS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.093' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.093' AS DateTime), N'admin', 42, N'Tôn', N'Thất', N'Phong', CAST(N'1989-12-28' AS Date), 1, N'35 Khu A6 Tổ 17 Kp4 P.Tân Hưng Thuận', N'0902404419', N'phong89@gmail.com', N'IELTS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.093' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.093' AS DateTime), N'admin', 43, N'Huỳnh', N'Chiêu', N'Hoàng', CAST(N'1987-11-14' AS Date), 1, N'180B Lê Văn Sỹ,P.10', N'0902464986', N'hoàng87@gmail.com', N'IELTS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.097' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.097' AS DateTime), N'admin', 44, N'Diệp', N'Văn', N'Công', CAST(N'1990-04-06' AS Date), 1, N'140 Trần Đại Nghĩa P.TTA', N'0902488989', N'cung90@gmail.com', N'IELTS', N'8', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.097' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.097' AS DateTime), N'admin', 45, N'Trần', N'Mộng', N'Thúy', CAST(N'1990-10-12' AS Date), 0, N'A2-1205 căn hộ Cantavil, KP5, P. AP', N'0902501690', N'thyy90@gmail.com', N'IELTS', N'8', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.097' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.097' AS DateTime), N'admin', 46, N'Chu', N'Kim', N'Giao', CAST(N'1993-02-10' AS Date), 1, N'152 Đặng Văn Ngữ', N'0902511611', N'giao93@gmail.com', N'IELTS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.100' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.100' AS DateTime), N'admin', 47, N'Lê', N'Thị Lan', N'Phương', CAST(N'1987-04-29' AS Date), 0, N'64/10/7 Cống Lở P15', N'0902515216', N'phuong87@gmail.com', N'IELTS', N'8.5', N'123')
INSERT [dbo].[GV] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [magiaovien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [bangcap], [diem], [matkhau]) VALUES (CAST(N'2020-10-20T18:04:06.100' AS DateTime), N'admin', CAST(N'2020-10-20T18:04:06.100' AS DateTime), N'admin', 48, N'Nguyễn', N'Văn', N'Lẻ', CAST(N'1991-08-28' AS Date), 1, N'C36/23 ấp 3 X.Hưng Long', N'0902533826', N'le91@gmail.com', N'IELTS', N'8.5', N'123')
SET IDENTITY_INSERT [dbo].[GV] OFF
SET IDENTITY_INSERT [dbo].[HocPhi] ON 

INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 83, N'HV1101', 1, 3000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 84, N'HV1103', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-02-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 85, N'HV1105', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-03-02' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 86, N'HV1107', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-05-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 87, N'HV1109', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-02-12' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 88, N'HV1111', 8, 9000000, 0, N'Hoàn trả học phí', CAST(N'2020-02-29' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 89, N'HV1113', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 90, N'HV1115', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-04-30' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 91, N'HV1117', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-10' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.460' AS DateTime), N'admin', 92, N'HV1119', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-02-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T21:16:05.867' AS DateTime), N'admin', 93, N'HV1121', 4, 4200000, 0, N'Hẹn đóng học phí 50% vào chủ nhật, 50% còn lại trả', CAST(N'2020-10-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 94, N'HV1123', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 95, N'HV1125', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 96, N'HV1127', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-04-25' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 97, N'HV1129', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 98, N'HV1131', 13, 7200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 99, N'HV1133', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 100, N'HV1135', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-01-16' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 101, N'HV1137', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-29' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 102, N'HV1139', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-01-19' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 103, N'HV1141', 8, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.463' AS DateTime), N'admin', 104, N'HV1145', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-04-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 105, N'HV1147', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 106, N'HV1149', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-26' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 107, N'HV1151', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 108, N'HV1153', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 109, N'HV1155', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-01-21' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 110, N'HV1157', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 111, N'HV1161', 11, 10000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 112, N'HV1163', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 113, N'HV1165', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-03-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 114, N'HV1167', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-04-18' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 115, N'HV1169', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-01-26' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 116, N'HV1171', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 117, N'HV1173', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-16' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 118, N'HV1175', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-03-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 119, N'HV1177', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 120, N'HV1179', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-01-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.467' AS DateTime), N'admin', 121, N'HV1181', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 122, N'HV1183', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 123, N'HV1185', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 124, N'HV1187', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 125, N'HV1189', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 126, N'HV1191', 1, 3000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 127, N'HV1193', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 128, N'HV1195', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 129, N'HV1197', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-03-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 130, N'HV1199', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 131, N'HV1201', 2, 3500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 132, N'HV1203', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 133, N'HV1205', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 134, N'HV1207', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 135, N'HV1209', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 136, N'HV1210', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-02-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 137, N'HV1211', 9, 5500000, 0, N'Hoàn trả học phí', CAST(N'2020-04-21' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 138, N'HV1212', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 139, N'HV1213', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 140, N'HV1214', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 141, N'HV1216', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-02-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 142, N'HV1217', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 143, N'HV1218', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 144, N'HV1219', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-04-22' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.470' AS DateTime), N'admin', 145, N'HV1220', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 146, N'HV1222', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 147, N'HV1223', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-04-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 148, N'HV1225', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 149, N'HV1227', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-05-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 150, N'HV1229', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 151, N'HV1231', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 152, N'HV1233', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 153, N'HV1235', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 154, N'HV1237', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-12' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 155, N'HV1239', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 156, N'HV1241', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 157, N'HV1243', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 158, N'HV1245', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-04-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 159, N'HV1247', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-03-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 160, N'HV1249', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 161, N'HV1251', 9, 5500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 162, N'HV1253', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.473' AS DateTime), N'admin', 163, N'HV1255', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 164, N'HV1257', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 165, N'HV1259', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 166, N'HV1261', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 167, N'HV1263', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 168, N'HV1265', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 169, N'HV1267', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-04-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 170, N'HV1269', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 171, N'HV1271', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 172, N'HV1273', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-03-30' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 173, N'HV1275', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-04-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 174, N'HV1277', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 175, N'HV1279', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-01-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 176, N'HV1281', 10, 5600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 177, N'HV1283', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 178, N'HV1285', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-01-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 179, N'HV1287', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-02-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 180, N'HV1289', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-01-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.477' AS DateTime), N'admin', 181, N'HV1291', 12, 7000000, 0, N'Chưa đóng học phí', NULL)
GO
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 182, N'HV1293', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 183, N'HV1295', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-03-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 184, N'HV1297', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-01-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 185, N'HV1299', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 186, N'HV1301', 9, 5500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 187, N'HV1303', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-02-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 188, N'HV1305', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-03-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 189, N'HV1307', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 190, N'HV1309', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-03-18' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 191, N'HV1311', 4, 4200000, 0, N'Hoàn trả học phí', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 192, N'HV1313', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-04-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 193, N'HV1315', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-05-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 194, N'HV1317', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-02-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 195, N'HV1319', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 196, N'HV1321', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 197, N'HV1323', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 198, N'HV1325', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-02-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:02.480' AS DateTime), N'admin', 199, N'HV1327', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.467' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.467' AS DateTime), N'admin', 200, N'HV1101', 2, 3500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 201, N'HV1103', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-02-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 202, N'HV1105', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-02' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 203, N'HV1107', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 204, N'HV1109', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-02-12' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 205, N'HV1111', 7, 9000000, 0, N'Hoàn trả học phí', CAST(N'2020-02-29' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 206, N'HV1113', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 207, N'HV1115', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-04-30' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 208, N'HV1117', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-03-10' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 209, N'HV1119', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-02-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 210, N'HV1121', 3, 3800000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 211, N'HV1123', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 212, N'HV1125', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-03-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 213, N'HV1127', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-25' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 214, N'HV1129', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 215, N'HV1131', 12, 7000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 216, N'HV1133', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.470' AS DateTime), N'admin', 217, N'HV1135', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-01-16' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 218, N'HV1137', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-29' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 219, N'HV1139', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-01-19' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 220, N'HV1141', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 221, N'HV1145', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-04-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 222, N'HV1147', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 223, N'HV1149', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-26' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 224, N'HV1151', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 225, N'HV1153', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 226, N'HV1155', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-01-21' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 227, N'HV1157', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 228, N'HV1161', 10, 5600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.473' AS DateTime), N'admin', 229, N'HV1163', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-03-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 230, N'HV1165', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 231, N'HV1167', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-04-18' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 232, N'HV1169', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-01-26' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 233, N'HV1171', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 234, N'HV1173', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-04-16' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 235, N'HV1175', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-03-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 236, N'HV1177', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 237, N'HV1179', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-01-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 238, N'HV1181', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 239, N'HV1183', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 240, N'HV1185', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 241, N'HV1187', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 242, N'HV1189', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.477' AS DateTime), N'admin', 243, N'HV1191', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 244, N'HV1193', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 245, N'HV1195', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 246, N'HV1197', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-03-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 247, N'HV1199', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 248, N'HV1201', 1, 3000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 249, N'HV1203', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 250, N'HV1205', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 251, N'HV1207', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 252, N'HV1209', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 253, N'HV1210', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 254, N'HV1211', 8, 9000000, 0, N'Hoàn trả học phí', CAST(N'2020-04-21' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 255, N'HV1212', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 256, N'HV1213', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-02-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 257, N'HV1214', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-05-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 258, N'HV1216', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-02-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 259, N'HV1217', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 260, N'HV1218', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-03-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 261, N'HV1219', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-04-22' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 262, N'HV1220', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.480' AS DateTime), N'admin', 263, N'HV1222', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 264, N'HV1223', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 265, N'HV1225', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 266, N'HV1227', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-05-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 267, N'HV1229', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 268, N'HV1231', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 269, N'HV1233', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 270, N'HV1235', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 271, N'HV1237', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-05-12' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 272, N'HV1239', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 273, N'HV1241', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 274, N'HV1243', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-03-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 275, N'HV1245', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-04-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 276, N'HV1247', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 277, N'HV1249', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 278, N'HV1251', 8, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 279, N'HV1253', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-01-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 280, N'HV1255', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 281, N'HV1257', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-03-24' AS Date))
GO
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.483' AS DateTime), N'admin', 282, N'HV1259', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 283, N'HV1261', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 284, N'HV1263', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 285, N'HV1265', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 286, N'HV1267', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-04-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 287, N'HV1269', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 288, N'HV1271', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 289, N'HV1273', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-30' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 290, N'HV1275', 1, 3000000, 3000000, N'Đã nộp tiền', CAST(N'2020-04-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 291, N'HV1277', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-03-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 292, N'HV1279', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-01-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 293, N'HV1281', 9, 5500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 294, N'HV1283', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 295, N'HV1285', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-01-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 296, N'HV1287', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-02-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 297, N'HV1289', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-01-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 298, N'HV1291', 11, 10000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 299, N'HV1293', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.487' AS DateTime), N'admin', 300, N'HV1295', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-03-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 301, N'HV1297', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-01-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 302, N'HV1299', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 303, N'HV1301', 8, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 304, N'HV1303', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-02-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 305, N'HV1305', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 306, N'HV1307', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 307, N'HV1309', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-18' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 308, N'HV1311', 3, 3800000, 0, N'Hoàn trả học phí', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 309, N'HV1313', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-04-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 310, N'HV1315', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-05-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 311, N'HV1317', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 312, N'HV1319', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 313, N'HV1321', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 314, N'HV1323', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 315, N'HV1325', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-02-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:13.490' AS DateTime), N'admin', 316, N'HV1327', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', 317, N'HV1101', 3, 3800000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', 318, N'HV1103', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-02-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', 319, N'HV1105', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-02' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', 320, N'HV1107', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-05-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', 321, N'HV1109', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-02-12' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', 322, N'HV1111', 9, 5500000, 0, N'Hoàn trả học phí', CAST(N'2020-02-29' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.100' AS DateTime), N'admin', 323, N'HV1113', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 324, N'HV1115', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-30' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 325, N'HV1117', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-10' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 326, N'HV1119', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 327, N'HV1121', 5, 4500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 328, N'HV1123', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-03-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 329, N'HV1125', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 330, N'HV1127', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-04-25' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 331, N'HV1129', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-01-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 332, N'HV1131', 10, 5600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 333, N'HV1133', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 334, N'HV1135', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-01-16' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.103' AS DateTime), N'admin', 335, N'HV1137', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-03-29' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 336, N'HV1139', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-01-19' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 337, N'HV1141', 9, 5500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 338, N'HV1145', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-04-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 339, N'HV1147', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 340, N'HV1149', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-03-26' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 341, N'HV1151', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 342, N'HV1153', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 343, N'HV1155', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-01-21' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 344, N'HV1157', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 345, N'HV1161', 12, 7000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 346, N'HV1163', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-03-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 347, N'HV1165', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-03-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 348, N'HV1167', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-04-18' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 349, N'HV1169', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-01-26' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.107' AS DateTime), N'admin', 350, N'HV1171', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 351, N'HV1173', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-16' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 352, N'HV1175', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 353, N'HV1177', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 354, N'HV1179', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-01-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 355, N'HV1181', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 356, N'HV1183', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 357, N'HV1185', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 358, N'HV1187', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 359, N'HV1189', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 360, N'HV1191', 2, 3500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 361, N'HV1193', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 362, N'HV1195', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 363, N'HV1197', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 364, N'HV1199', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 365, N'HV1201', 3, 3800000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 366, N'HV1203', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 367, N'HV1205', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 368, N'HV1207', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 369, N'HV1209', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 370, N'HV1210', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-02-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 371, N'HV1211', 10, 5600000, 0, N'Hoàn trả học phí', CAST(N'2020-04-21' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.110' AS DateTime), N'admin', 372, N'HV1212', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 373, N'HV1213', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 374, N'HV1214', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 375, N'HV1216', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-02-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 376, N'HV1217', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 377, N'HV1218', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 378, N'HV1219', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-04-22' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 379, N'HV1220', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 380, N'HV1222', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-04-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 381, N'HV1223', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-04-11' AS Date))
GO
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 382, N'HV1225', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 383, N'HV1227', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-05-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 384, N'HV1229', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.113' AS DateTime), N'admin', 385, N'HV1231', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 386, N'HV1233', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-01-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 387, N'HV1235', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 388, N'HV1237', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-12' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 389, N'HV1239', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 390, N'HV1241', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 391, N'HV1243', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 392, N'HV1245', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-04-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 393, N'HV1247', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-03-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 394, N'HV1249', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 395, N'HV1251', 10, 5600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 396, N'HV1253', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 397, N'HV1255', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 398, N'HV1257', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 399, N'HV1259', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.117' AS DateTime), N'admin', 400, N'HV1261', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 401, N'HV1263', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 402, N'HV1265', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 403, N'HV1267', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-04-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 404, N'HV1269', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 405, N'HV1271', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 406, N'HV1273', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-30' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 407, N'HV1275', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-04-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 408, N'HV1277', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-03-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 409, N'HV1279', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-01-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 410, N'HV1281', 11, 10000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 411, N'HV1283', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 412, N'HV1285', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-01-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 413, N'HV1287', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-02-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 414, N'HV1289', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-01-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 415, N'HV1291', 13, 7200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 416, N'HV1293', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 417, N'HV1295', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-03-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 418, N'HV1297', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-01-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 419, N'HV1299', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 420, N'HV1301', 10, 5600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 421, N'HV1303', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-02-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 422, N'HV1305', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 423, N'HV1307', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.120' AS DateTime), N'admin', 424, N'HV1309', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-03-18' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 425, N'HV1311', 5, 4500000, 0, N'Hoàn trả học phí', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 426, N'HV1313', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-04-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 427, N'HV1315', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-05-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 428, N'HV1317', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-02-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 429, N'HV1319', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 430, N'HV1321', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 431, N'HV1323', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 432, N'HV1325', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-02-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:25.123' AS DateTime), N'admin', 433, N'HV1327', 2, 3500000, 3500000, N'Đã nộp tiền', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.837' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.837' AS DateTime), N'admin', 434, N'HV1101', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.837' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.837' AS DateTime), N'admin', 435, N'HV1103', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-02-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.837' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.837' AS DateTime), N'admin', 436, N'HV1105', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-02' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.837' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.837' AS DateTime), N'admin', 437, N'HV1107', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-05-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 438, N'HV1109', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-02-12' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 439, N'HV1111', 10, 5600000, 0, N'Hoàn trả học phí', CAST(N'2020-02-29' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 440, N'HV1113', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 441, N'HV1115', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-30' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 442, N'HV1117', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-10' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 443, N'HV1119', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 444, N'HV1121', 6, 4600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 445, N'HV1123', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 446, N'HV1125', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 447, N'HV1127', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-04-25' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 448, N'HV1129', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-01-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.840' AS DateTime), N'admin', 449, N'HV1131', 9, 5500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', 450, N'HV1133', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', 451, N'HV1135', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-16' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', 452, N'HV1137', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-03-29' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', 453, N'HV1139', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-19' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', 454, N'HV1141', 10, 5600000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', 455, N'HV1145', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-04-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.843' AS DateTime), N'admin', 456, N'HV1147', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 457, N'HV1149', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-26' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 458, N'HV1151', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 459, N'HV1153', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 460, N'HV1155', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-01-21' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 461, N'HV1157', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 462, N'HV1161', 13, 7200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 463, N'HV1163', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 464, N'HV1165', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 465, N'HV1167', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-04-18' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 466, N'HV1169', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-26' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 467, N'HV1171', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 468, N'HV1173', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-16' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.847' AS DateTime), N'admin', 469, N'HV1175', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 470, N'HV1177', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 471, N'HV1179', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-01-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 472, N'HV1181', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 473, N'HV1183', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-01-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 474, N'HV1185', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 475, N'HV1187', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 476, N'HV1189', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 477, N'HV1191', 3, 3800000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 478, N'HV1193', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 479, N'HV1195', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 480, N'HV1197', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-03-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 481, N'HV1199', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-02-05' AS Date))
GO
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 482, N'HV1201', 4, 4200000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 483, N'HV1203', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 484, N'HV1205', 10, 5600000, 5600000, N'Đã nộp tiền', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 485, N'HV1207', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 486, N'HV1209', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 487, N'HV1210', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-02-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 488, N'HV1211', 11, 10000000, 0, N'Hoàn trả học phí', CAST(N'2020-04-21' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.850' AS DateTime), N'admin', 489, N'HV1212', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 490, N'HV1213', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-02-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 491, N'HV1214', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-05-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 492, N'HV1216', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-02-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 493, N'HV1217', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 494, N'HV1218', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-20' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 495, N'HV1219', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-04-22' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 496, N'HV1220', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 497, N'HV1222', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-04-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 498, N'HV1223', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-04-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 499, N'HV1225', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 500, N'HV1227', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-05-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.853' AS DateTime), N'admin', 501, N'HV1229', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 502, N'HV1231', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 503, N'HV1233', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-01-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 504, N'HV1235', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 505, N'HV1237', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-05-12' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 506, N'HV1239', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 507, N'HV1241', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 508, N'HV1243', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-01' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 509, N'HV1245', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 510, N'HV1247', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 511, N'HV1249', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 512, N'HV1251', 11, 10000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 513, N'HV1253', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 514, N'HV1255', 12, 7000000, 7000000, N'Đã nộp tiền', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 515, N'HV1257', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-03-24' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 516, N'HV1259', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.857' AS DateTime), N'admin', 517, N'HV1261', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 518, N'HV1263', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 519, N'HV1265', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 520, N'HV1267', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-04-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 521, N'HV1269', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 522, N'HV1271', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 523, N'HV1273', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-03-30' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 524, N'HV1275', 4, 4200000, 4200000, N'Đã nộp tiền', CAST(N'2020-04-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 525, N'HV1277', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-03-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 526, N'HV1279', 6, 4600000, 4600000, N'Đã nộp tiền', CAST(N'2020-01-05' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 527, N'HV1281', 12, 7000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 528, N'HV1283', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 529, N'HV1285', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 530, N'HV1287', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-02-08' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 531, N'HV1289', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-01-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 532, N'HV1291', 9, 5500000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 533, N'HV1293', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 534, N'HV1295', 13, 7200000, 7200000, N'Đã nộp tiền', CAST(N'2020-03-28' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 535, N'HV1297', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-01-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 536, N'HV1299', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.860' AS DateTime), N'admin', 537, N'HV1301', 11, 10000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 538, N'HV1303', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-02-03' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 539, N'HV1305', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-03-23' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 540, N'HV1307', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 541, N'HV1309', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-18' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 542, N'HV1311', 6, 4600000, 0, N'Hoàn trả học phí', CAST(N'2020-04-07' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 543, N'HV1313', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-04-15' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 544, N'HV1315', 9, 5500000, 5500000, N'Đã nộp tiền', CAST(N'2020-05-11' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 545, N'HV1317', 11, 10000000, 10000000, N'Đã nộp tiền', CAST(N'2020-02-04' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 546, N'HV1319', 8, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-05-09' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 547, N'HV1321', 7, 9000000, 0, N'Chưa đóng học phí', NULL)
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 548, N'HV1323', 7, 9000000, 9000000, N'Đã nộp tiền', CAST(N'2020-04-17' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 549, N'HV1325', 5, 4500000, 4500000, N'Đã nộp tiền', CAST(N'2020-02-13' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', CAST(N'2020-10-20T20:05:33.863' AS DateTime), N'admin', 550, N'HV1327', 3, 3800000, 3800000, N'Đã nộp tiền', CAST(N'2020-03-14' AS Date))
INSERT [dbo].[HocPhi] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahp], [mahocvien], [makhoahoc], [hocphi], [sotiennop], [tinhtrang], [ngaynop]) VALUES (CAST(N'2020-10-20T21:07:21.983' AS DateTime), N'admin', CAST(N'2020-10-20T21:07:21.983' AS DateTime), N'admin', 551, N'HV1321', 11, 10000000, NULL, N'Chưa đóng học phí', NULL)
SET IDENTITY_INSERT [dbo].[HocPhi] OFF
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:44:44.340' AS DateTime), N'admin', CAST(N'2020-10-09T16:44:44.340' AS DateTime), N'admin', N'HV1101', N'Nguyễn', N'', N'Bách', CAST(N'2005-12-18' AS Date), 1, N'SO 122 DUONG LAC TRUNG, P.VINH TUY,Q.HBT, TP HA NOI', N'0988559096', N'xuanbach96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:48:18.777' AS DateTime), N'admin', CAST(N'2020-10-09T16:48:18.777' AS DateTime), N'admin', N'HV1103', N'Trần', N'', N'Nhi', CAST(N'2004-04-27' AS Date), 0, N'SO 7 NGO 283 DOI CAN, LIEU GIAI, BADINH, HA NOI', N'0988564006', N'vantrang06@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:48:33.553' AS DateTime), N'admin', CAST(N'2020-10-09T16:48:33.553' AS DateTime), N'admin', N'HV1105', N'Trịnh', N'Thúy', N'Hồng', CAST(N'2000-08-13' AS Date), 0, N'52 NGO HUY VAN, TON DUC THANG, DONGDA HA NOI', N'0988566986', N'thuyhong86@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.120' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.120' AS DateTime), N'admin', N'HV1107', N'Nguyễn', N'Xuân', N'An', CAST(N'2005-12-18' AS Date), 1, N'SO 122 DUONG LAC TRUNG, P.VINH TUY,Q.HBT, TP HA NOI', N'0988559096', N'xuanbach96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.120' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.120' AS DateTime), N'admin', N'HV1109', N'Nguyễn', N'Văn', N'Tráng', CAST(N'2004-04-27' AS Date), 1, N'SO 7 NGO 283 DOI CAN, LIEU GIAI, BADINH, HA NOI', N'0988564006', N'vantrang06@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.120' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.120' AS DateTime), N'admin', N'HV1111', N'Vũ', N'Văn', N'Thủy', CAST(N'2000-08-13' AS Date), 0, N'52 NGO HUY VAN, TON DUC THANG, DONGDA HA NOI', N'0988566986', N'thuyhong86@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1113', N'Phan', N'Chu', N'Cường', CAST(N'2005-08-21' AS Date), 0, N'SO 28B,NGO 132,DUONG CAU GIAY PHUONG QUAN HOA QUAN CAU GIAY HA NOI', N'0988567895', N'phancuong95@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1115', N'Tiêu', N'Thu', N'Hà', CAST(N'1995-01-19' AS Date), 0, N'SO63/2 NGO 2 NGUYEN VIET XUANKHUONG MAI QUAN THANH XUAN HN', N'0988569868', N'tieuha68@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1117', N'Nguyễn', N'Xuân', N'Thủy', CAST(N'2001-02-25' AS Date), 0, N'90-100 NGHI TAM YEN PHU TAY HO HANOI', N'0988591948', N'xuanthuy48@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1119', N'Nguyễn', N'Công', N'Minh', CAST(N'1995-11-01' AS Date), 1, N'TANG 12,SO 27 LAC TRUNG,HAI BATRUNG,HA NOI', N'0988593505', N'cungminh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1121', N'Trần', N'Quốc', N'Hùng', CAST(N'1997-03-15' AS Date), 1, N'153 PHO TRAN DANG NINH PHUONG DICHVONG QUAN CAU GIAY HA NOI', N'0988593516', N'quochung09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1123', N'Mai', N'Trọng', N'Thịnh', CAST(N'1996-12-09' AS Date), 1, N'30K3, PHO NGUYEN PHONG SAC,NGHIA TAN, CAU GIAY, HA NOI', N'0988593518', N'trongthinh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1125', N'Nguyễn', N'Công', N'Hải', CAST(N'1999-06-26' AS Date), 1, N'XOM MIT, THON DONG NGAN XA DONG HOIHUYEN DONG ANH TPHN', N'0988599433', N'cunghai09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1127', N'Nguyễn', N'Thanh', N'Bình', CAST(N'2000-02-14' AS Date), 1, N'P111 TAP THE A25 NGHIA TAN CAU GIAYHA NOI VIET NAM', N'0988629041', N'thanhbonh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1129', N'Nguyễn', N'Kim', N'Phượng', CAST(N'1996-10-01' AS Date), 0, N'SN 12,KHU TTTM DONG ANH-DONG ANH-HN', N'0988653388', N'kimphuong09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1131', N'Vương', N'Thị', N'Luyện', CAST(N'2003-04-04' AS Date), 0, N'SO 300 DOI CAN CONG VI BA DINH HN', N'0988702668', N'thiluyen09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1133', N'Nguyễn', N'Mạnh', N'Cường', CAST(N'2002-05-01' AS Date), 1, N'P1003, TOA NHA 25 LANG HA, THANHCONG, BA DINH, HA NOI', N'0988707075', N'manhcuong09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1135', N'Phí', N'Văn', N'Hoan', CAST(N'2004-09-26' AS Date), 1, N'LO KHE LIEN HA DONG ANH HA NOINAM', N'0988707374', N'vanhoan09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1137', N'Đỗ', N'Duy', N'Quang', CAST(N'1998-08-31' AS Date), 1, N'55 XUAN DIEU TAY HO HA NOI', N'0988710768', N'duyquang09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.123' AS DateTime), N'admin', N'HV1139', N'Nguyễn', N'Đức', N'Cường', CAST(N'1999-09-24' AS Date), 1, N'P604 TOA NHA SAVINA 1 DINH LE HOANKIEM HA NOI VIET NAM', N'0988718197', N'duccuong09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1141', N'Nguyễn', N'Văn', N'Mạch', CAST(N'1995-06-22' AS Date), 1, N'SO 16 A1-TAP THE VAT GIA CHINH PHUNHAN CHINH, THANH XUAN, HN', N'0988723757', N'vanmach09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1145', N'Phan', N'Viết', N'Hoàn', CAST(N'2005-02-26' AS Date), 1, N'TO 10 P. PHUC LOI Q. LONG BIEN HANOI VIET NAM', N'0988759181', N'viethoan09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1147', N'Đinh', N'Đoan', N'Hùng', CAST(N'1996-11-14' AS Date), 1, N'SO 33 HEM 14 NGACH 46 NGO 122 KIMGIANG, HA NOI, VIET NAM', N'0988761305', N'doanhung09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1149', N'Lê', N'Thu', N'Hằng', CAST(N'1998-03-16' AS Date), 0, N'23 NGO 393 GIAI PHONG,THANH XUAN,HN', N'0988768638', N'thuhang09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1151', N'Nguyễn', N'Ngọc', N'Minh', CAST(N'2003-10-09' AS Date), 0, N'269 HOANG QUOC VIET NGHIA TAN CAU GIAY HA NOI', N'0988771268', N'ngocminh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1153', N'Lê', N'Ngọc', N'Thưởng', CAST(N'1996-02-07' AS Date), 0, N'P16-N4 TT 108 VINH TUY-HBT-HA NOINOI-VIET NAM', N'0988772256', N'ngocthuong09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1155', N'Nguyễn', N'Thị Lan', N'Anh', CAST(N'2000-11-19' AS Date), 0, N'XOM 3 XUAN PHUONG TU LIEM HA NOIVIETNAM', N'0988773969', N'lananh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1157', N'Bùi', N'Kim', N'Nga', CAST(N'2000-05-07' AS Date), 0, N'SO 26 DUONG CAU TIEN PHUONG THINHLIET QUAN HOANG MAI HANOI', N'0988832268', N'kimnga09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1161', N'Nguyễn', N'Thanh', N'Hoàn', CAST(N'2000-10-27' AS Date), 1, N'139 NGO46 NGUYEN TRAI THUONG DINHTHANH XUAN HA NOI', N'0988876666', N'thanhhoan09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1163', N'Phạm', N'Ngọc', N'Long', CAST(N'2001-11-10' AS Date), 1, N'P509A CAU THANG 3 NHA C1 TAP THE NGHIA TAN, P.NGHIA TAN, Q.CAU GIAYHN', N'0988882513', N'ngoclong09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1165', N'Nguyễn', N'Huy', N'Hoàng', CAST(N'1998-08-15' AS Date), 1, N'SO 6 TT THUY SAN NHAN CHINH THANHXUAN HA NOI', N'0988883727', N'huyhoang09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1167', N'Chu', N'Tiến', N'Quang', CAST(N'2005-04-23' AS Date), 1, N'21 NGO SAN QUAN,P.KHAM THIEN,DONGDA, HA NOI', N'0988887230', N'tienquang09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.127' AS DateTime), N'admin', N'HV1169', N'Trần', N'Huệ', N'Linh', CAST(N'2004-12-28' AS Date), 0, N'54/115 HONG HA PHUC XA BA DINH HANOI', N'0988887768', N'huelinh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1171', N'Nguyễn', N'Thị Minh', N'Hồng', CAST(N'2003-12-10' AS Date), 0, N'613 HOA LO XUAN PHUONG TU LIEM HANOI', N'0988893435', N'minhhong09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1173', N'Trần', N'Xuân', N'Anh', CAST(N'1996-03-29' AS Date), 0, N'SO 67/84 PHO NGOC KHANH, P.GIANG VOQ. BA DINH, HA NOI', N'0988895568', N'xuananh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1175', N'Đỗ', N'Quang', N'Toàn', CAST(N'2002-07-23' AS Date), 1, N'99-PHAM HUNG-TU LIEM-THANH PHO HANOI', N'0988897719', N'quangtoan09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1177', N'Nguyễn', N'Minh', N'Anh', CAST(N'2000-08-21' AS Date), 1, N'SO 02 TAN XUAN, XA XUAN DINH, HUYENTU LIEM, HA NOI', N'0988899958', N'minhan09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1179', N'Phạm', N'Văn', N'Nghĩa', CAST(N'1997-01-03' AS Date), 1, N'XOM CHO DAI MO TU LIEM HA NOIVIETNAM', N'09889907888', N'vannghia09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1181', N'Trần', N'Mạnh', N'Hùng', CAST(N'2005-03-06' AS Date), 1, N'458 KHUONG DINH, HA DINH, THANHXUAN, HA NOI', N'0989082868', N'manhhung09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1183', N'Trần', N'', N'Công', CAST(N'1997-05-06' AS Date), 1, N'SO 2, NGO 93, NGACH 20, HOANG VANTHAI, KHUONG TRUNG ,THANH XUAN, HN', N'0989090516', N'cung09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1185', N'Nguyễn', N'', N'Hà', CAST(N'2004-01-13' AS Date), 0, N'TO6, THACH BAN, LONG BIEN, HA NOIVIET NAM', N'0989090920', N'ha478209@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.130' AS DateTime), N'admin', N'HV1187', N'Nguyễn', N'Văn', N'Bính', CAST(N'1999-03-05' AS Date), 1, N'SO 5/B3,TO 50 MAI DICH, CAU GIAY HN', N'0989094599', N'vanbong09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1189', N'Nguyễn', N'Thị Ngọc', N'Sánh', CAST(N'1997-08-01' AS Date), 0, N'No49 Hai Bà Trưng, Hà Nội, Việt Nam', N'0989142818', N'ngocsonh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1191', N'Nguyễn', N'Thế', N'Quyết', CAST(N'2005-08-06' AS Date), 1, N'502 NHA C KHU 7 HA VINH PHUC CONGVI BA DINH HN', N'0989145156', N'thequyet09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1193', N'Nguyễn', N'Thị', N'Huyền', CAST(N'2003-11-04' AS Date), 0, N'40A YEN PHU TRUC BACH BA DINH HA NOI VIET NAM', N'0989186867', N'thihuyen09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1195', N'Trần', N'Quốc', N'Khánh', CAST(N'2004-01-04' AS Date), 1, N'SN295/3 NGO QUYNH P QUYNH LOI HBTHA NOI', N'0989189868', N'quockhonh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1197', N'Bùi', N'Thanh', N'Hải', CAST(N'2000-09-18' AS Date), 1, N'P 1406 TOA NHA 198 NGUYEN TUAN P.NHAN CHINH Q. THANH XUAN HN', N'0989191937', N'thanhhai09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1199', N'Phạm', N'Thị Thanh', N'Bình', CAST(N'2002-07-24' AS Date), 0, N'19/6 NGUYEN TRAI, KHUONG TRUNG,THANH XUAN, HA NOI', N'0989193414', N'thanhbonh09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1201', N'Đào', N'Lệ', N'Hà', CAST(N'1997-03-18' AS Date), 0, N'150 PHUC TAN, HOAN KIEM,HN', N'0989200692', N'lehha2893409@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1203', N'Trần', N'Phi', N'Tùng', CAST(N'2004-07-18' AS Date), 1, N'NGO 126, DUONG HOANG QUOC VIET,QUAN NGHIA TAN, CAU GIAY, HA NOI', N'0989323366', N'phitung09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1205', N'Ngô', N'Thu', N'Hằng', CAST(N'2003-11-21' AS Date), 0, N'102-KHUAT DUY TIEN-NHAN CHINH-THANHXUAN-HA NOI', N'0989556688', N'thuhang09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1207', N'Nguyễn', N'Viết', N'Hà', CAST(N'2000-01-02' AS Date), 0, N'CO DIEN HAI BOI DONG ANH HA NOI', N'0989568516', N'viethann09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', CAST(N'2020-10-09T16:51:12.133' AS DateTime), N'admin', N'HV1209', N'Nguyễn', N'Quang', N'Thái', CAST(N'2000-09-01' AS Date), 1, N'SO 92 DUONG K1 CUM 6 PHU DIEN TU LIEM HA NOI', N'0989585866', N'quangthoi09@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T22:03:20.590' AS DateTime), N'admin', CAST(N'2020-10-09T22:03:20.590' AS DateTime), N'admin', N'HV1210', N'Trần', N'Tú', N'Uyên', CAST(N'2001-09-12' AS Date), 0, N'Gia Lai', N'0333333333', N'uyentutran1@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-09T22:03:45.570' AS DateTime), N'admin', CAST(N'2020-10-09T22:03:45.570' AS DateTime), N'admin', N'HV1211', N'Trần', N'Linh', N'Châu', CAST(N'1999-10-04' AS Date), 0, N'Gia Lai', N'0967245473', N'chitran04100@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-10T09:30:39.450' AS DateTime), N'admin', CAST(N'2020-10-10T09:30:39.450' AS DateTime), N'admin', N'HV1212', N'Mai', N'Thị Kim', N'Hương', CAST(N'1965-11-01' AS Date), 0, N'Tổ 8, phường 1, HCMC', N'092384729', N'huogn@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-10T09:31:09.173' AS DateTime), N'admin', CAST(N'2020-10-10T09:31:09.173' AS DateTime), N'admin', N'HV1213', N'Trần', N'Đức ', N'Vỹ', CAST(N'2001-12-31' AS Date), 0, N'Tổ 8, Phường 3, Hà Nội', N'096748911', N'ducvy@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-10T09:32:48.307' AS DateTime), N'admin', CAST(N'2020-10-10T09:32:48.307' AS DateTime), N'admin', N'HV1214', N'Vũ', N'Trần Như', N'Ý', CAST(N'1993-11-11' AS Date), 0, N'Thôn Phú Xuân, tỉnh Đồng Nai', N'0943478923', N'nhuydongnai@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-10T10:26:37.460' AS DateTime), N'admin', CAST(N'2020-10-10T10:26:37.460' AS DateTime), N'admin', N'HV1216', N'Trần', N'Linh', N'Chi', CAST(N'2012-12-12' AS Date), 0, N'Đường Số 20, Phường 5, Quận Gò Vấp, HCM', N'094376482', N'chitran@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-11T10:39:47.887' AS DateTime), N'admin', CAST(N'2020-10-11T10:39:47.887' AS DateTime), N'admin', N'HV1217', N'Trần', N'Đức', N'An', CAST(N'2019-11-12' AS Date), 0, N'Gia Lai', N'012764378', N'ducan@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-11T11:03:18.153' AS DateTime), N'admin', CAST(N'2020-10-11T11:03:18.153' AS DateTime), N'admin', N'HV1218', N'Vũ', N'Nhuận', N'Thông', CAST(N'2012-12-12' AS Date), 0, N'Kong Chro, Gia Lai', N'072179898', N'nhuanthong@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-12T22:58:28.437' AS DateTime), N'admin', CAST(N'2020-10-12T22:58:28.437' AS DateTime), N'admin', N'HV1219', N'Vũ', N'Hà', N'Anh', CAST(N'2000-04-12' AS Date), 0, N'Phú Nhuận, HCM', N'094378486', N'haancute@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-14T10:06:10.947' AS DateTime), N'admin', CAST(N'2020-10-14T10:06:10.947' AS DateTime), N'admin', N'HV1220', N'Trần', N'Thị', N'Lam', CAST(N'2000-12-12' AS Date), 0, N'Gia Lai', N'098127318', N'lam@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-18T15:32:22.237' AS DateTime), N'admin', CAST(N'2020-10-18T15:32:22.237' AS DateTime), N'admin', N'HV1222', N'Vũ', N'Đình', N'Nhuệ', CAST(N'2004-01-12' AS Date), 1, N'Phú Nhuận, HCMC', N'094873889', N'nhue04@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T16:08:37.680' AS DateTime), N'admin', CAST(N'2020-10-20T16:08:37.680' AS DateTime), N'admin', N'HV1223', N'Nguyễn', N'Vũ Hà', N'Như', CAST(N'2001-09-12' AS Date), 0, N'Tổ 8, phường 3, Phú Nhuận, HCM', N'094873832', N'hanhu@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.880' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.880' AS DateTime), N'admin', N'HV1225', N'Nguyễn', N'Xuân', N'Bách', CAST(N'2005-12-18' AS Date), 1, N'SO 122 DUONG LAC TRUNG, P.VINH TUY,Q.HBT, TP HA NOI', N'0988559096', N'xuanbach96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.880' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.880' AS DateTime), N'admin', N'HV1227', N'Lê', N'Văn', N'Toán', CAST(N'2005-06-11' AS Date), 1, N'84 Ter C/X Đô Thành', N'0988559096', N'toon05@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.880' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.880' AS DateTime), N'admin', N'HV1229', N'Huỳnh', N'Thị Cẩm', N'Tú', CAST(N'1997-06-30' AS Date), 0, N'7 Hoa Sữa,P.07', N'0988564006', N'ty97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.883' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.883' AS DateTime), N'admin', N'HV1231', N'Lai', N'Quốc', N'Cơ', CAST(N'1996-09-19' AS Date), 0, N'82 ỷ Lan', N'0988566986', N'co96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.883' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.883' AS DateTime), N'admin', N'HV1233', N'Dương', N'Ngọc', N'Thủy', CAST(N'2003-08-30' AS Date), 1, N'F8/69E ấp 6', N'0988567895', N'thuy03@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.883' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.883' AS DateTime), N'admin', N'HV1235', N'Nguyễn', N'Thành', N'Tuấn', CAST(N'2000-07-09' AS Date), 1, N'9E1-14 Sky Garden 3 Phú Mỹ Hưng P.Tân Phong', N'0988569868', N'tuan00@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.887' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.887' AS DateTime), N'admin', N'HV1237', N'Phạm', N'Thị', N'Phượng', CAST(N'1997-12-06' AS Date), 1, N'100 Dương Đình Hội KP6 P.Phước Long B', N'0988591948', N'phuong97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.887' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.887' AS DateTime), N'admin', N'HV1239', N'Lê', N'Hồng', N'Xuyến', CAST(N'1996-08-26' AS Date), 0, N'E18/2 ấp 5 X.Vĩnh Lộc B', N'0988593505', N'xuyen96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.890' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.890' AS DateTime), N'admin', N'HV1241', N'Huỳnh', N'Thị Như', N'An', CAST(N'1997-10-01' AS Date), 0, N'169A Tân Kỳ Tân Quý', N'0988593516', N'an97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.890' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.890' AS DateTime), N'admin', N'HV1243', N'Đoàn', N'Tuyết', N'Mai', CAST(N'2004-05-25' AS Date), 1, N'7B KP23 ĐS18 P.BHH A', N'0988593518', N'mai04@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.890' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.890' AS DateTime), N'admin', N'HV1245', N'Lê', N'Văn', N'Hiệu', CAST(N'2000-12-31' AS Date), 1, N'1199/8 Phạm Thế Hiển P.05', N'0988599433', N'hieu00@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.890' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.890' AS DateTime), N'admin', N'HV1247', N'Vũ', N'Quang', N'Trọng', CAST(N'1998-03-25' AS Date), 0, N'595A TL10, P.BTĐ B', N'0988629041', N'trong98@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.893' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.893' AS DateTime), N'admin', N'HV1249', N'Phú', N'Vạn', N'Dũng', CAST(N'2000-10-24' AS Date), 0, N'25C Đình Nghi Xuân P.BTĐ', N'0988653388', N'dung00@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.893' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.893' AS DateTime), N'admin', N'HV1251', N'Đinh', N'Văn', N'Khánh', CAST(N'2002-09-14' AS Date), 1, N'29 Đường Thảo Điền', N'0988702668', N'khonh02@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.893' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.893' AS DateTime), N'admin', N'HV1253', N'Nguyễn', N'Hữu', N'Hoà', CAST(N'2005-02-24' AS Date), 1, N'156 Lê Sát, P. Tân Quý', N'0988707075', N'hoà05@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.897' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.897' AS DateTime), N'admin', N'HV1255', N'Võ', N'Thanh', N'Vân', CAST(N'1995-12-06' AS Date), 0, N'B12Đ/44F Đường Liên ấp 123 X.Vĩnh Lộc B', N'0988707374', N'von95@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.900' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.900' AS DateTime), N'admin', N'HV1257', N'Đặng', N'Văn', N'Hòa', CAST(N'1995-05-25' AS Date), 1, N'34 Nguyễn ảnh Thủ KP2 P. Hiệp Thành', N'0988710768', N'hua95@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.900' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.900' AS DateTime), N'admin', N'HV1259', N'Trần', N'Văn', N'Thi', CAST(N'1999-10-24' AS Date), 1, N'314 Hồ Học Lãm KP3, P.AL', N'0988718197', N'thi99@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.900' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.900' AS DateTime), N'admin', N'HV1261', N'Lương', N'Ngọc Loan', N'Anh', CAST(N'1999-06-27' AS Date), 0, N'437 Hoàng Văn Thụ, P.04', N'0988723757', N'anh99@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.900' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.900' AS DateTime), N'admin', N'HV1263', N'Trần', N'Thị Bảo', N'Sa', CAST(N'1998-06-14' AS Date), 0, N'815/4/9 KP8, HL2 P.BTĐ A', N'0988750889', N'sa98@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.903' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.903' AS DateTime), N'admin', N'HV1265', N'Lê', N'Thị Thu', N'Hồng', CAST(N'2000-06-21' AS Date), 0, N'63A TCH 21 Tổ 15 KP7 P. Tân Chánh Hiệp', N'0988759181', N'hong00@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.903' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.903' AS DateTime), N'admin', N'HV1267', N'Nguyễn', N'Thị', N'Lùng', CAST(N'2003-08-16' AS Date), 1, N'206 Nam Kỳ Khởi Nghĩa , Phường 6 , Quận 3', N'0988761305', N'lung03@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.903' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.903' AS DateTime), N'admin', N'HV1269', N'Bùi', N'Thị Trúc', N'Mai', CAST(N'1995-10-22' AS Date), 1, N'178 Võ Văn Tần , Phường 5 , Quận 3', N'0988768638', N'mai95@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.903' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.903' AS DateTime), N'admin', N'HV1271', N'NGuyễn', N'Thị Cẩm', N'Nhung', CAST(N'2002-02-17' AS Date), 0, N'81 Quang Trung KP1 P.Hiệp Phú', N'0988771268', N'nhung02@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.910' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.910' AS DateTime), N'admin', N'HV1273', N'Võ', N'Thị Thu', N'Trang', CAST(N'2001-11-04' AS Date), 0, N'205A/9 ấp 1 X.An Phú Tây', N'0988772256', N'trang01@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.910' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.910' AS DateTime), N'admin', N'HV1275', N'Lê', N'Vinh', N'Quang', CAST(N'1996-11-30' AS Date), 0, N'281 An Dương Vương P,.AL', N'0988773969', N'quang96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.910' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.910' AS DateTime), N'admin', N'HV1277', N'NGuyễn', N'Lan', N'Phương', CAST(N'1999-04-28' AS Date), 0, N'D12/49 ấp 4 X.Bình Chánh', N'0988832268', N'phuong99@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.913' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.913' AS DateTime), N'admin', N'HV1279', N'Nguyễn', N'Văn', N'Sơn', CAST(N'1996-10-06' AS Date), 0, N'88 Trần Quang Diệu , Phường 14 , Quận 3', N'0988838384', N'son96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.913' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.913' AS DateTime), N'admin', N'HV1281', N'Phạm', N'Lâm Thụy Bích', N'Thục', CAST(N'1997-02-28' AS Date), 1, N'613 Tân Kỳ Tân Quý', N'0988876666', N'thuc97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.913' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.913' AS DateTime), N'admin', N'HV1283', N'Phan', N'Thị Hồng', N'Anh', CAST(N'2005-08-16' AS Date), 1, N'320/46 Chiến Lược, P.BTĐ A', N'0988882513', N'anh05@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.917' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.917' AS DateTime), N'admin', N'HV1285', N'Huỳnh', N'Kiến', N'Luân', CAST(N'1995-01-22' AS Date), 0, N'448 Nguyễn Thị Định, P. Bình Trưng Tây', N'0988883727', N'luon95@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.917' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.917' AS DateTime), N'admin', N'HV1287', N'Nguyễn', N'Lê Phương', N'Dung', CAST(N'2005-07-19' AS Date), 1, N'59 Phạm Văn Hai P01', N'0988887230', N'dung05@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', N'HV1289', N'Phan', N'Thanh', N'Cảnh', CAST(N'2001-05-30' AS Date), 0, N'461 QL1A, P.BHH', N'0988887768', N'canh01@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', N'HV1291', N'Hứa', N'Ngọc Giáng', N'Sinh', CAST(N'1996-09-21' AS Date), 1, N'88/8 Nguyễn Văn Qùy P. Phú Thuận ', N'0988893435', N'sinh96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', N'HV1293', N'Phan', N'Thị', N'Hà', CAST(N'1998-05-28' AS Date), 0, N'454 Huỳnh Tấn Phát P. Bình Thuận ', N'0988895568', N'hà98@gmail.com', N'0')
GO
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', N'HV1295', N'Trần', N'Thị', N'Khuyên', CAST(N'1999-11-27' AS Date), 0, N'885 Lũy Bán Bích, P.Tân Thành', N'0988897719', N'khuyon99@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.920' AS DateTime), N'admin', N'HV1297', N'Bùi', N'Thanh', N'Quang', CAST(N'1998-10-22' AS Date), 1, N'25/1 Hoàng Việt P04', N'0988899958', N'quang98@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.923' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.923' AS DateTime), N'admin', N'HV1299', N'Đinh', N'Thị Kim', N'Anh', CAST(N'2000-07-14' AS Date), 0, N'17/18/15/14/12 KP9, Đường LK5-6 P.BHH B', N'09889907888', N'anh00@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.923' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.923' AS DateTime), N'admin', N'HV1301', N'Mai', N'Nguyễn Thế', N'Khôi', CAST(N'2000-06-04' AS Date), 1, N'405/11A Trường Chinh P14', N'0989082868', N'khui00@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.923' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.923' AS DateTime), N'admin', N'HV1303', N'Phan', N'Thùy', N'Linh', CAST(N'2000-02-23' AS Date), 0, N'53 Rạch Bùng Binh , Phường 9 , Quận 3', N'0989090516', N'linh00@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.927' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.927' AS DateTime), N'admin', N'HV1305', N'Đặng', N'Thị', N'Lan', CAST(N'1997-10-13' AS Date), 1, N'D8/242 ấp 4 X.Đa Phước', N'0989090920', N'lan97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.927' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.927' AS DateTime), N'admin', N'HV1307', N'Giang', N'Diệu', N'Cường', CAST(N'1995-06-16' AS Date), 1, N'400 Tân Hoà Đông P.BTĐ', N'0989094599', N'cuong95@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.927' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.927' AS DateTime), N'admin', N'HV1309', N'Huỳnh', N'Ngọc', N'Nga', CAST(N'1997-06-27' AS Date), 0, N'190 Nguyễn Hồng Đào P14', N'0989142818', N'nga97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1311', N'Vũ', N'Hữu', N'Hiệp', CAST(N'1997-03-20' AS Date), 0, N'221A Phú Thọ Hòa, P. Phú Thọ Hòa', N'0989145156', N'hiep97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1313', N'Hoàng', N'Văn', N'Chiến', CAST(N'1997-07-06' AS Date), 0, N'208/26/74 KP8 Đường Số 5 P.BHH', N'0989186867', N'chien97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1315', N'Huỳnh', N'Ngọc', N'ánh', CAST(N'1996-11-01' AS Date), 0, N'1068 Tổ 7 Kp1A Nguyễn Văn Quá P.Đông Hưng Thuận', N'0989189868', N'onh96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1317', N'Đào', N'', N'Phung', CAST(N'1996-05-17' AS Date), 0, N'1012 Lạc Long Quân P08', N'0989191937', N'phung96@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1319', N'Phan', N'Ngọc', N'Trinh', CAST(N'1999-06-09' AS Date), 1, N'34 Cầu Xéo', N'0989193414', N'trinh99@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1321', N'Nguyễn', N'Trúc', N'Lâm', CAST(N'1997-04-02' AS Date), 1, N'21 Long Hưng P07', N'0989200692', N'lom97@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1323', N'Huỳnh', N'Văn', N'Bé', CAST(N'2003-02-03' AS Date), 1, N'10 Hồ Bắc, P. Tây Thạnh', N'0989323366', N'bo03@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1325', N'Phạm', N'Minh', N'Toàn', CAST(N'1995-10-29' AS Date), 0, N'40 Kim Biên P.13', N'0989556688', N'toàn95@gmail.com', N'0')
INSERT [dbo].[HocVien] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [mahocvien], [ho], [tendem], [ten], [ngaysinh], [gioitinh], [diachi], [dienthoai], [email], [matkhau]) VALUES (CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', CAST(N'2020-10-20T18:14:20.930' AS DateTime), N'admin', N'HV1327', N'Trần', N'Văn', N'Tín', CAST(N'1998-02-06' AS Date), 1, N'22 Bình Giã P13', N'0989568516', N'ton98@gmail.com', N'0')
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON 

INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.143' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.143' AS DateTime), N'admin', 1, N'Kids 1', N'Basic', 3000000, N'24')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.147' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.147' AS DateTime), N'admin', 2, N'Kids 2', N'Basic', 3500000, N'24')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 3, N'Kids 3', N'Basic', 3800000, N'24')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 4, N'Teen 1', N'Elementary', 4200000, N'24')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 5, N'Teen 2', N'Elementary', 4500000, N'24')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 6, N'Teen 3', N'Elementary', 4600000, N'24')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 7, N'Speaking', N'Upper Intermediate', 9000000, N'45')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 8, N'Writing', N'Upper Intermediate', 9000000, N'45')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 9, N'Pre A', N'Intermediate', 5500000, N'27')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 10, N'Pre B', N'Intermediate', 5600000, N'27')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 11, N'Advanced', N'Upper Intermediate', 10000000, N'45')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 12, N'Listening', N'Upper Intermediate', 7000000, N'30')
INSERT [dbo].[KhoaHoc] ([ngaytao], [nguoitao], [ngaycapnhat], [nguoicapnhat], [makhoahoc], [tenkhoahoc], [trinhdo], [hocphi], [thoigian]) VALUES (CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', CAST(N'2020-10-09T16:16:50.150' AS DateTime), N'admin', 13, N'Reading', N'Upper Intermediate', 7200000, N'30')
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF
SET IDENTITY_INSERT [dbo].[LopHoc] ON 

INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T13:57:24.950' AS DateTime), N'admin', N'Oct 20 202', N'admin', 26, 1, 7, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-02-12' AS Date), CAST(N'2020-04-29' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T13:57:55.190' AS DateTime), N'admin', N'Oct 20 202', N'admin', 27, 2, 11, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-06-06' AS Date), CAST(N'2020-10-20' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T13:58:20.800' AS DateTime), N'admin', N'Oct 20 202', N'admin', 28, 3, 6, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-06-24' AS Date), CAST(N'2020-08-13' AS Date), N'Lớp đã kết thúc')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T14:15:38.670' AS DateTime), N'admin', N'Oct 20 202', N'admin', 31, 6, 9, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-07-27' AS Date), CAST(N'2020-10-20' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T14:16:04.477' AS DateTime), N'admin', N'Oct 20 202', N'admin', 32, 7, 8, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2019-12-12' AS Date), CAST(N'2020-03-11' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T14:16:25.397' AS DateTime), N'admin', N'Oct 20 202', N'admin', 33, 8, 11, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-07-12' AS Date), CAST(N'2020-10-14' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T14:16:50.010' AS DateTime), N'admin', N'Oct 20 202', N'admin', 34, 9, 14, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-08-08' AS Date), CAST(N'2020-10-14' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T14:17:11.930' AS DateTime), N'admin', N'Oct 20 202', N'admin', 35, 10, 12, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-08-12' AS Date), CAST(N'2020-10-27' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T14:17:36.883' AS DateTime), N'admin', N'Oct 20 202', N'admin', 36, 11, 15, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-04-05' AS Date), CAST(N'2020-06-24' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T14:18:03.727' AS DateTime), N'admin', N'Oct 20 202', N'admin', 37, 12, 7, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-03-03' AS Date), CAST(N'2020-05-12' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-14T14:18:38.307' AS DateTime), N'admin', N'Oct 20 202', N'admin', 38, 13, 13, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-02-18' AS Date), CAST(N'2020-04-29' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-17T00:01:10.070' AS DateTime), N'admin', N'Oct 20 202', N'admin', 39, 3, 8, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-01-20' AS Date), CAST(N'2020-03-11' AS Date), N'Lớp đã kết thúc')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T16:13:19.570' AS DateTime), N'admin', N'Oct 20 202', N'admin', 40, 9, 15, N'Thứ 2, 4, 6 (7-9pm)', CAST(N'2020-02-01' AS Date), CAST(N'2020-06-04' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.493' AS DateTime), N'admin', N'Oct 20 202', N'admin', 44, 3, 6, N'Thứ 7, Chủ nhật (9-11am)', CAST(N'2020-03-21' AS Date), CAST(N'2020-07-19' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.493' AS DateTime), N'admin', N'Oct 20 202', N'admin', 45, 4, 7, N'Thứ 7, Chủ nhật (1-3pm)', CAST(N'2020-06-01' AS Date), CAST(N'2020-09-29' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.493' AS DateTime), N'admin', N'Oct 20 202', N'admin', 46, 5, 8, N'Thứ 7, Chủ nhật (3-5pm)', CAST(N'2020-03-29' AS Date), CAST(N'2020-07-27' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.493' AS DateTime), N'admin', N'Oct 20 202', N'admin', 47, 6, 9, N'Thứ 7, Chủ nhật (7-9pm)', CAST(N'2020-01-27' AS Date), CAST(N'2020-05-26' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.497' AS DateTime), N'admin', N'Oct 20 202', N'admin', 48, 7, 11, N'Thứ 3, 5, 7 (7-9pm)', CAST(N'2020-04-11' AS Date), CAST(N'2020-08-09' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.497' AS DateTime), N'admin', N'Oct 20 202', N'admin', 49, 8, 12, N'Thứ 7, Chủ nhật (7-9am)', CAST(N'2020-05-13' AS Date), CAST(N'2020-09-10' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.497' AS DateTime), N'admin', N'Oct 20 202', N'admin', 50, 9, 13, N'Thứ 7, Chủ nhật (9-11am)', CAST(N'2020-05-12' AS Date), CAST(N'2020-09-09' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.497' AS DateTime), N'admin', N'Oct 20 202', N'admin', 53, 12, 28, N'Thứ 7, Chủ nhật (7-9pm)', CAST(N'2020-01-15' AS Date), CAST(N'2020-05-14' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.497' AS DateTime), N'admin', N'Oct 20 202', N'admin', 54, 13, 29, N'Thứ 3, 5, 7 (7-9pm)', CAST(N'2020-01-20' AS Date), CAST(N'2020-05-19' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.497' AS DateTime), N'admin', N'Oct 20 202', N'admin', 56, 2, 32, N'Thứ 7, Chủ nhật (9-11am)', CAST(N'2020-04-16' AS Date), CAST(N'2020-08-14' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.500' AS DateTime), N'admin', N'Oct 20 202', N'admin', 58, 4, 34, N'Thứ 7, Chủ nhật (3-5pm)', CAST(N'2020-03-03' AS Date), CAST(N'2020-07-01' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.500' AS DateTime), N'admin', N'Oct 20 202', N'admin', 59, 5, 35, N'Thứ 7, Chủ nhật (7-9pm)', CAST(N'2020-02-19' AS Date), CAST(N'2020-06-18' AS Date), N'Lớp đang mở')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.500' AS DateTime), N'admin', N'Oct 20 202', N'admin', 60, 6, 36, N'Thứ 3, 5, 7 (7-9pm)', CAST(N'2020-01-14' AS Date), CAST(N'2020-05-13' AS Date), N'Lớp đã kết thúc')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.500' AS DateTime), N'admin', N'Oct 20 202', N'admin', 63, 9, 39, N'Thứ 7, Chủ nhật (1-3pm)', CAST(N'2020-01-31' AS Date), CAST(N'2020-05-30' AS Date), N'Lớp đã kết thúc')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.500' AS DateTime), N'admin', N'Oct 20 202', N'admin', 64, 10, 40, N'Thứ 7, Chủ nhật (3-5pm)', CAST(N'2020-04-16' AS Date), CAST(N'2020-08-14' AS Date), N'Lớp đã kết thúc')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.500' AS DateTime), N'admin', N'Oct 20 202', N'admin', 65, 11, 41, N'Thứ 7, Chủ nhật (7-9pm)', CAST(N'2020-04-09' AS Date), CAST(N'2020-08-07' AS Date), N'Lớp đã kết thúc')
INSERT [dbo].[LopHoc] ([ngaytao], [nguoinguoitao], [ngaycapnhat], [nguoicapnhat], [malophoc], [makhoahoc], [magiaovien], [lichhoc], [ngaybatdau], [ngayketthuc], [daketthuc]) VALUES (CAST(N'2020-10-20T18:32:56.500' AS DateTime), N'admin', N'Oct 20 202', N'admin', 72, 5, 48, N'Thứ 3, 5, 7 (7-9pm)', CAST(N'2020-05-27' AS Date), CAST(N'2020-09-24' AS Date), N'Lớp đã kết thúc')
SET IDENTITY_INSERT [dbo].[LopHoc] OFF
INSERT [dbo].[Taikhoan] ([tentaikhoan], [matkhau]) VALUES (N'admin', N'0')
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[Diem] ADD  CONSTRAINT [DF_Diem_diemlan1]  DEFAULT ((0)) FOR [diemlan1]
GO
ALTER TABLE [dbo].[GV] ADD  CONSTRAINT [DF_GV_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[GV] ADD  CONSTRAINT [DF_GV_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[GV] ADD  CONSTRAINT [DF_GV_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[GV] ADD  CONSTRAINT [DF_GV_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[GV] ADD  CONSTRAINT [DF_GV_matkhau]  DEFAULT ((123)) FOR [matkhau]
GO
ALTER TABLE [dbo].[HocPhi] ADD  CONSTRAINT [DF_HocPhi_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[HocPhi] ADD  CONSTRAINT [DF_HocPhi_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[HocPhi] ADD  CONSTRAINT [DF_HocPhi_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[HocPhi] ADD  CONSTRAINT [DF_HocPhi_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[HocVien] ADD  CONSTRAINT [DF_HocVien_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[HocVien] ADD  CONSTRAINT [DF_HocVien_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[HocVien] ADD  CONSTRAINT [DF_HocVien_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[HocVien] ADD  CONSTRAINT [DF_HocVien_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[HocVien] ADD  CONSTRAINT [DF__HocVien__matkhau__0A9D95DB]  DEFAULT ((0)) FOR [matkhau]
GO
ALTER TABLE [dbo].[KhoaHoc] ADD  CONSTRAINT [DF_KhoaHoc_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[KhoaHoc] ADD  CONSTRAINT [DF_KhoaHoc_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[KhoaHoc] ADD  CONSTRAINT [DF_KhoaHoc_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[KhoaHoc] ADD  CONSTRAINT [DF_KhoaHoc_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[LopHoc] ADD  CONSTRAINT [DF_LopHoc_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[LopHoc] ADD  CONSTRAINT [DF_LopHoc_nguoinguoitao]  DEFAULT ('admin') FOR [nguoinguoitao]
GO
ALTER TABLE [dbo].[LopHoc] ADD  CONSTRAINT [DF_LopHoc_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[LopHoc] ADD  CONSTRAINT [DF_LopHoc_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_HocVien] FOREIGN KEY([mahocvien])
REFERENCES [dbo].[HocVien] ([mahocvien])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_HocVien]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_LopHoc] FOREIGN KEY([malophoc])
REFERENCES [dbo].[LopHoc] ([malophoc])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_LopHoc]
GO
ALTER TABLE [dbo].[HocPhi]  WITH CHECK ADD  CONSTRAINT [FK_HocPhi_HocVien] FOREIGN KEY([mahocvien])
REFERENCES [dbo].[HocVien] ([mahocvien])
GO
ALTER TABLE [dbo].[HocPhi] CHECK CONSTRAINT [FK_HocPhi_HocVien]
GO
ALTER TABLE [dbo].[HocPhi]  WITH CHECK ADD  CONSTRAINT [FK_HocPhi_KhoaHoc] FOREIGN KEY([makhoahoc])
REFERENCES [dbo].[KhoaHoc] ([makhoahoc])
GO
ALTER TABLE [dbo].[HocPhi] CHECK CONSTRAINT [FK_HocPhi_KhoaHoc]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_GV] FOREIGN KEY([magiaovien])
REFERENCES [dbo].[GV] ([magiaovien])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_GV]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_KhoaHoc] FOREIGN KEY([makhoahoc])
REFERENCES [dbo].[KhoaHoc] ([makhoahoc])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_KhoaHoc]
GO
/****** Object:  StoredProcedure [dbo].[AllLopHoc]    Script Date: 20-Oct-20 9:35:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AllLopHoc]
(@tukhoa nvarchar(50))
as
begin
	select 
		l.malophoc,
		k.tenkhoahoc,
		case 
			when len(trim(g.tendem)) >0 then
				concat (g.ho,' ', g.tendem,' ', g.ten)
			else CONCAT (g.ho,' ', g.ten) end as gv,
		l.lichhoc,
		l.ngaybatdau,
		l.ngayketthuc,
		l.daketthuc 

	from LopHoc l
	inner join GV g on l.magiaovien = g.magiaovien
	inner join KhoaHoc k on l.makhoahoc = k.makhoahoc
	where lower(k.tenkhoahoc) like '%'+lower(trim(@tukhoa)) + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[AllLopHocSX]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AllLopHocSX]
(@tukhoa nvarchar(50))
as
begin
	select 
		l.malophoc,
		k.tenkhoahoc,
		case 
			when len(trim(g.tendem)) >0 then
				concat (g.ho,' ', g.tendem,' ', g.ten)
			else CONCAT (g.ho,' ', g.ten) end as gv,
		l.lichhoc,
		l.ngaybatdau,
		l.ngayketthuc,
		l.daketthuc 

	from LopHoc l
	inner join GV g on l.magiaovien = g.magiaovien
	inner join KhoaHoc k on l.makhoahoc = k.makhoahoc
	where lower(k.tenkhoahoc) like '%'+lower(trim(@tukhoa)) + '%'
	and daketthuc =N'Lớp đã kết thúc'
end
GO
/****** Object:  StoredProcedure [dbo].[CapNhatDiem]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CapNhatDiem]
@malophoc varchar(50),
@mahocvien varchar(50),
@diem float
as
begin
	update Diem
	set diemlan1 = @diem
	where malophoc = @malophoc
	and mahocvien = @mahocvien

	if @@ROWCOUNT > 0 return 1 else return 0;
	end
GO
/****** Object:  StoredProcedure [dbo].[CheckHocPhi]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CheckHocPhi]
@mahocvien varchar(30),
@makhoahoc bigint,
@sotiennop int,
@tinhtrang nvarchar(50),
@ngaynop date

as
	begin
		update HocPhi
		set 
			ngaycapnhat = GETDATE(),
			sotiennop = @sotiennop,
			tinhtrang = @tinhtrang,
			ngaynop = @ngaynop
		where mahocvien = @mahocvien
		and makhoahoc = @makhoahoc
	end
GO
/****** Object:  StoredProcedure [dbo].[DangKyHocLai]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DangKyHocLai]

	@Mahocvien varchar(50),
	@Makhoahoc int
	

As
Begin
	declare @Hocphi int;
	select @Hocphi = hocphi 
	from KhoaHoc 
	where makhoahoc=@Makhoahoc;

	
	insert into HocPhi (makhoahoc, mahocvien, hocphi, tinhtrang)
	values (@Makhoahoc, @Mahocvien, @Hocphi, N'Học lại')

	if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;

END
GO
/****** Object:  StoredProcedure [dbo].[DangKyKH]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DangKyKH]

	@Mahocvien varchar(50),
	@Makhoahoc int,
	@Hocphi int,
	@Sotiennop int,
	@Tinhtrang nvarchar(50),
	@Ngaynop date

As

Begin
	Update HocPhi
	Set 

		makhoahoc = @Makhoahoc,
		hocphi = @Hocphi,
		sotiennop = @Sotiennop,
		tinhtrang = @Tinhtrang,
		ngaynop = @Ngaynop
		
	where mahocvien = @Mahocvien

END
GO
/****** Object:  StoredProcedure [dbo].[DangKyKH1]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DangKyKH1]

	@Mahocvien varchar(50),
	@Makhoahoc int
	

As
Begin
	declare @Hocphi int;
	select @Hocphi = hocphi 
	from KhoaHoc 
	where makhoahoc=@Makhoahoc;

	
	insert into HocPhi (makhoahoc, mahocvien, hocphi, tinhtrang)
	values (@Makhoahoc, @Mahocvien, @Hocphi, N'Chưa đóng học phí')

	if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;

END
GO
/****** Object:  StoredProcedure [dbo].[dangnhap]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dangnhap]
@loaitaikhoan varchar(10),
@taikhoan varchar(50),
@matkhau varchar(50)
as
begin
if  @loaitaikhoan = 'admin' 
select * 
from Taikhoan
where tentaikhoan = @taikhoan
and matkhau = @matkhau
 
 else if @loaitaikhoan = 'gv' 
select * 
from GV
where CONVERT(varchar(50), magiaovien) = @taikhoan
and matkhau = @matkhau

 else if @loaitaikhoan = 'hv' 
select * 
from HocVien
where mahocvien = @taikhoan
and matkhau = @matkhau;
end
GO
/****** Object:  StoredProcedure [dbo].[deleteGV]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteGV]
@tukhoa int
as
delete from GV where magiaovien = @tukhoa

if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;
GO
/****** Object:  StoredProcedure [dbo].[deleteHV]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteHV]
@tukhoa nvarchar(30)
as
delete from HocVien where mahocvien = @tukhoa

if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;
GO
/****** Object:  StoredProcedure [dbo].[deleteKH]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteKH]
@tukhoa bigint
as
delete from KhoaHoc where makhoahoc = @tukhoa

if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;
GO
/****** Object:  StoredProcedure [dbo].[DoiMK]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DoiMK]
	@loaitaikhoan nvarchar(10),
	@taikhoan varchar(50),
	@matkhaucu varchar(50),
	@matkhaumoi1 varchar(50)
as
begin
	if @loaitaikhoan = 'admin' 
		begin
			update taikhoan
			set matkhau = @matkhaumoi1
			where tentaikhoan = @taikhoan and matkhau = @matkhaucu
		end

	else if @loaitaikhoan = 'gv' 
		begin 
			update GV
			set matkhau = @matkhaumoi1
			where cast(magiaovien as varchar(50)) = @taikhoan and matkhau = @matkhaucu
		end
	else if @loaitaikhoan = 'hv' 
		begin
			update HocVien
			set matkhau = @matkhaumoi1
			where mahocvien = @taikhoan and matkhau = @matkhaucu 
		end
end

GO
/****** Object:  StoredProcedure [dbo].[DSHocVienHocLai]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DSHocVienHocLai]
@tukhoa varchar(30)
as
select 
	d.mahocvien,
	case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten
from Diem d 
inner join LopHoc l on d.malophoc = l.malophoc
inner join HocVien hv on d.mahocvien = hv.mahocvien
where diemlan1 < 75
and daketthuc = N'Lớp đã kết thúc'
and d.malophoc like @tukhoa
GO
/****** Object:  StoredProcedure [dbo].[DSHocVienHocLaitimkiem]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DSHocVienHocLaitimkiem]
@tukhoa nvarchar(30)
as
select 
	d.mahocvien,
	case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten,
		l.malophoc,
		d.diemlan1
from Diem d 
inner join LopHoc l on d.malophoc = l.malophoc
inner join HocVien hv on d.mahocvien = hv.mahocvien
where diemlan1 < 75
and daketthuc = N'Lớp đã kết thúc'
and (lower(ho) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(tendem) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(ten) like '%'+lower(trim(@tukhoa)) + '%')
GO
/****** Object:  StoredProcedure [dbo].[DSHVchuacoLop]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DSHVchuacoLop]
		@tukhoa nvarchar(50),
		@timkiem nvarchar(50)
		as
		select 	distinct 
				hv.mahocvien,
					case 
						when len(trim(hv.tendem)) >0 then
						concat (hv.ho,' ', hv.tendem,' ', hv.ten)
					else CONCAT (hv.ho,' ', hv.ten) end as tenhocvien,
					k.makhoahoc,
					k.tenkhoahoc
		
		from HocPhi hp
		inner join HocVien hv on hp.mahocvien = hv.mahocvien
		inner join KhoaHoc k on hp.makhoahoc = k.makhoahoc
		
		where (hp.tinhtrang = N'Đã nộp tiền'
		or hp.tinhtrang = N'Học lại')
		and k.makhoahoc like @tukhoa
		and
		concat( hp.mahocvien,  hp.makhoahoc) 
		not in ( select concat(d.mahocvien , l.makhoahoc )
		from Diem d inner join LopHoc l
		on d.malophoc = l.malophoc)
		and (lower(ho) like '%'+lower(trim(@timkiem)) + '%'
		or lower(tendem) like '%'+lower(trim(@timkiem)) + '%'
		or lower(ten) like '%'+lower(trim(@timkiem)) + '%')
		order by tenhocvien
GO
/****** Object:  StoredProcedure [dbo].[DSHVchuacoLop1maKH]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DSHVchuacoLop1maKH]
		@tukhoa nvarchar(50)

		as
		select distinct 
					
					hv.mahocvien,
					k.makhoahoc,
					case 
						when len(trim(hv.tendem)) >0 then
						concat (hv.ho,' ', hv.tendem,' ', hv.ten)
					else CONCAT (hv.ho,' ', hv.ten) end as tenhocvien,
					k.tenkhoahoc
		from HocPhi hp
		inner join HocVien hv on hp.mahocvien = hv.mahocvien
		inner join KhoaHoc k on hp.makhoahoc = k.makhoahoc
		where (hp.tinhtrang = N'Đã nộp tiền'
		or hp.tinhtrang = N'Học lại')
		and
		concat( hp.mahocvien,  hp.makhoahoc) 
		not in ( select concat(d.mahocvien , l.makhoahoc)
				from Diem d inner join LopHoc l
				on d.malophoc = l.malophoc)
		and (lower(ho) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(tendem) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(ten) like '%'+lower(trim(@tukhoa)) + '%')
		

		order by tenhocvien
GO
/****** Object:  StoredProcedure [dbo].[DSKHchuaDK]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DSKHchuaDK]
@mahocvien varchar(30)
as
begin
select distinct
makhoahoc,
tenkhoahoc, 
trinhdo,
hocphi,
thoigian

from KhoaHoc

where makhoahoc not in 
	(select k.makhoahoc 
	from Hocphi hp 
	inner join Khoahoc k on hp.makhoahoc = k.makhoahoc
	where mahocvien = @mahocvien
	);
end
GO
/****** Object:  StoredProcedure [dbo].[DSLop]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DSLop]
@tukhoa nvarchar(50),
@timkiem nvarchar(50)
as
	select distinct
	hv.mahocvien,
		case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten,
		hv.diachi,
		hv.dienthoai,
			d.diemlan1
	from Diem d 
	inner join HocVien hv on d.mahocvien = hv.mahocvien
	where d.malophoc like @tukhoa
	and (lower(ho) like '%'+lower(trim(@timkiem)) + '%'
		or lower(tendem) like '%'+lower(trim(@timkiem)) + '%'
		or lower(ten) like '%'+lower(trim(@timkiem)) + '%')
GO
/****** Object:  StoredProcedure [dbo].[DSLopBegin]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[DSLopBegin]
@tukhoa nvarchar
as
	select distinct
		case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten,
		hv.diachi,
		hv.dienthoai,
		d.diemlan1,
		hv.mahocvien
	from Diem d 
	inner join HocVien hv on d.mahocvien = hv.mahocvien
	where lower(ho) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(tendem) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(ten) like '%'+lower(trim(@tukhoa)) + '%'
GO
/****** Object:  StoredProcedure [dbo].[DSLopChuaDK]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DSLopChuaDK]
@mahocvien varchar(30)
as
begin
select 
l.malophoc,
k.makhoahoc,
k.tenkhoahoc,
k.trinhdo,
case 
			when len(trim(g.tendem)) >0 then
				concat (g.ho,' ', g.tendem,' ', g.ten)
			else CONCAT (g.ho,' ', g.ten) end as gv,
l.lichhoc
from  LopHoc l
inner join GV g on l.magiaovien = g.magiaovien
inner join KhoaHoc k on l.makhoahoc = k.makhoahoc

where l.daketthuc = 0 -- lay cac lop dang mo
and l.malophoc not in (select malophoc from Diem where mahocvien = @mahocvien);
end
GO
/****** Object:  StoredProcedure [dbo].[InsertLopHoc]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertLopHoc]
	@makhoahoc bigint,
	@magiaovien int,
	@lichhoc nvarchar(30),
	@ngaybatdau date,
	@ngayketthuc date,
	@daketthuc nvarchar(30)
as
	begin
		insert into LopHoc(makhoahoc, magiaovien, lichhoc, ngaybatdau, ngayketthuc, daketthuc)
		values (@makhoahoc, @magiaovien, @lichhoc, @ngaybatdau, @ngayketthuc, @daketthuc)
		if @@ROWCOUNT >0 begin return 1 end
		else begin return 0 end ;
end
GO
/****** Object:  StoredProcedure [dbo].[KhoaHocDaDK]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[KhoaHocDaDK]
@mahocvien varchar(30)
as
begin
select distinct

k.makhoahoc,
k.tenkhoahoc, 
k.trinhdo,
k.hocphi,
k.thoigian

from Hocphi hp 
inner join Khoahoc k on hp.makhoahoc = k.makhoahoc
where hp.mahocvien = @mahocvien
end
GO
/****** Object:  StoredProcedure [dbo].[LoadDSHocLai]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

		Create procedure [dbo].[LoadDSHocLai]
@mahocvien varchar(30)
as
begin
select distinct
k.makhoahoc,
tenkhoahoc, 
trinhdo,
hocphi,
thoigian

from Diem d 
inner join LopHoc l on d.malophoc = l.malophoc
inner join HocVien hv on d.mahocvien = hv.mahocvien
inner join KhoaHoc k on d.makhoahoc = k.makhoahoc

where diemlan1 < 75
and daketthuc = N'Lớp đã kết thúc'
and d.mahocvien like @mahocvien
end
GO
/****** Object:  StoredProcedure [dbo].[MonDaDK]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MonDaDK]
@mahocvien varchar(30)
as
begin
select 
l.malophoc,
k.tenkhoahoc,
k.trinhdo,
case 
			when len(trim(g.tendem)) >0 then
				concat (g.ho,' ', g.tendem,' ', g.ten)
			else CONCAT (g.ho,' ', g.ten) end as gv,
l.lichhoc


from Diem d
inner join LopHoc l on d.malophoc = l.malophoc
inner join KhoaHoc k on l.makhoahoc = k.makhoahoc
inner join GV g on l.magiaovien = g.magiaovien

where d.mahocvien = @mahocvien
end
GO
/****** Object:  StoredProcedure [dbo].[SelectAllGiaoVien]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllGiaoVien]
	(@tukhoa nvarchar(50) )--tim kiem hoc vien dua vao tu khoa
-- 1 : ma hoc vien
-- 2 : ho, ten dem, ten
-- 3 : so dien thoai
AS
	select
		magiaovien,
		case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten,
		CONVERT(varchar(10),ngaysinh,103) as nsinh,
		case
			when gioitinh = 1 then N'Nam'
			else N'Nữ'
		end as gt,
		diachi,
		dienthoai,
		email,
		bangcap,
		diem
	from GV
	where 
		lower(ho) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(tendem) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(ten) like '%'+lower(trim(@tukhoa)) + '%'
		or dienthoai like '%'+lower(trim(@tukhoa)) + '%'
		or email like '%'+lower(trim(@tukhoa)) + '%'
	order by ten;
GO
/****** Object:  StoredProcedure [dbo].[SelectAllHocPhi]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectAllHocPhi]
@tukhoa nvarchar(50)
as
select 

	hv.mahocvien,
	case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten,
	kh.makhoahoc,
	tenkhoahoc,
	hp.hocphi,
	sotiennop,
	tinhtrang,
	ngaynop
from HocPhi hp
inner join HocVien hv on hp.mahocvien = hv.mahocvien
inner join KhoaHoc kh on hp.makhoahoc = kh.makhoahoc
where lower(ho) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(tendem) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(ten) like '%'+lower(trim(@tukhoa)) + '%'

GO
/****** Object:  StoredProcedure [dbo].[SelectAllHocPhichuanop]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectAllHocPhichuanop]
@tukhoa nvarchar(50)
as
select 
	hv.mahocvien,
	case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten,
	kh.makhoahoc,
	tenkhoahoc,
	hp.hocphi,
	sotiennop,
	tinhtrang,
	ngaynop
from HocPhi hp
inner join HocVien hv on hp.mahocvien = hv.mahocvien
inner join KhoaHoc kh on hp.makhoahoc = kh.makhoahoc
where	(tinhtrang not like N'Đã nộp tiền' 
		and tinhtrang not like N'Học lại')
		
		and (lower(ho) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(tendem) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(ten) like '%'+lower(trim(@tukhoa)) + '%')
GO
/****** Object:  StoredProcedure [dbo].[SelectAllHocVien1]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllHocVien1]
	(@tukhoa nvarchar(50) )--tim kiem hoc vien dua vao tu khoa
-- 1 : ma hoc vien
-- 2 : ho, ten dem, ten
-- 3 : so dien thoai
AS
	select
		mahocvien,
		case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten,
		CONVERT(varchar(10),ngaysinh,103) as nsinh,
		case
			when gioitinh = 1 then N'Nam'
			else N'Nữ'
		end as gt,
		diachi,
		dienthoai,
		email
	from HocVien
	where 
		lower(ho) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(tendem) like '%'+lower(trim(@tukhoa)) + '%'
		or lower(ten) like '%'+lower(trim(@tukhoa)) + '%'
		or dienthoai like '%'+lower(trim(@tukhoa)) + '%'
		or email like '%'+lower(trim(@tukhoa)) + '%'
	order by ten;
GO
/****** Object:  StoredProcedure [dbo].[SelectAllKhoaHoc]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllKhoaHoc]
	(@tukhoa nvarchar(50) )
AS
	select
		makhoahoc,
		tenkhoahoc,
		trinhdo,
		hocphi,
		thoigian
	from KhoaHoc
	where 
		lower(tenkhoahoc) like '%'+lower(trim(@tukhoa)) + '%'
		
	order by makhoahoc;
GO
/****** Object:  StoredProcedure [dbo].[SelectAllLopHoc]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllLopHoc]
@makhoahoc bigint
AS
	select distinct
		l.malophoc,
		l.lichhoc

	from LopHoc l
	

	where makhoahoc = @makhoahoc
GO
/****** Object:  StoredProcedure [dbo].[SelectGV]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SelectGV]
	@Magiaovien varchar(50)
AS
Begin
	Select
		ho,
		tendem,
		ten,
		CONVERT(varchar(10), ngaysinh, 103) as nsinh,
		gioitinh,
		diachi,
		dienthoai,
		email,
		bangcap,
		diem
	from GV
	Where magiaovien = @magiaovien;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectHocPhi]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectHocPhi]
@mahocvien varchar(30),
@makhoahoc bigint
as
select 
	hv.mahocvien,
	case
			when len(tendem) > 0 then
				concat(ho,' ',tendem,' ',ten)
			else concat(ho,' ',ten)
		end as hoten,
	kh.makhoahoc
	tenkhoahoc,
	hp.hocphi,
	hp.sotiennop,
	hp.tinhtrang,
	hp.ngaynop

from HocPhi hp
inner join HocVien hv on hp.mahocvien = hv.mahocvien
inner join KhoaHoc kh on hp.makhoahoc = kh.makhoahoc
where hp.mahocvien = @mahocvien
and hp.makhoahoc = @makhoahoc


GO
/****** Object:  StoredProcedure [dbo].[SelectHV]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectHV]
	@Mahocvien varchar(50)
AS
Begin
	Select
		ho,
		tendem,
		ten,
		CONVERT(varchar(10), ngaysinh, 103) as nsinh,
		gioitinh,
		diachi,
		dienthoai,
		email
	from HocVien
	Where mahocvien = @mahocvien;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectHVcanDKLop]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectHVcanDKLop]
@mahocvien nvarchar(50),
@makhoahoc bigint

as
		select 	distinct 
				hv.mahocvien,
					case 
						when len(trim(hv.tendem)) >0 then
						concat (hv.ho,' ', hv.tendem,' ', hv.ten)
					else CONCAT (hv.ho,' ', hv.ten) end as tenhocvien,
					k.makhoahoc,
					k.tenkhoahoc,
					l.lichhoc,
					l.malophoc
		
		from HocPhi hp
		inner join HocVien hv on hp.mahocvien = hv.mahocvien
		inner join KhoaHoc k on hp.makhoahoc = k.makhoahoc
		inner join LopHoc l on hp.makhoahoc = l.makhoahoc
		
		where (hp.tinhtrang = N'Đã nộp tiền'
		or hp.tinhtrang = N'Học lại')
		and k.makhoahoc = @makhoahoc
		and hp.mahocvien = @mahocvien
		and
		concat( hp.mahocvien,  hp.makhoahoc) 
		not in ( select concat(d.mahocvien , l.makhoahoc )
		from Diem d inner join LopHoc l
		on d.malophoc = l.malophoc)
		order by tenhocvien
GO
/****** Object:  StoredProcedure [dbo].[SelectKH]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectKH]
	@Makhoahoc varchar(50)
AS
Begin
	Select
		tenkhoahoc,
		trinhdo,
		hocphi,
		thoigian
		
	from KhoaHoc
	Where makhoahoc = @Makhoahoc;
END
GO
/****** Object:  StoredProcedure [dbo].[selectLichHoc]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectLichHoc]
@malop int
as
	select *
	from LopHoc
	where malophoc = @malop
GO
/****** Object:  StoredProcedure [dbo].[SelectLopHoc]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectLopHoc]
	@malophoc bigint

as
	begin
	select k.tenkhoahoc, g.magiaovien, k.makhoahoc, l.lichhoc, l.ngaybatdau, l.ngayketthuc,l.daketthuc 
	from LopHoc l
	inner join GV g on l.magiaovien = g.magiaovien
	inner join KhoaHoc k on l.makhoahoc = k.makhoahoc
	where malophoc = @malophoc;
end
GO
/****** Object:  StoredProcedure [dbo].[SelectLopHocSX]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectLopHocSX]
@makhoahoc bigint
AS
	select distinct
		l.malophoc,
		l.lichhoc

	from LopHoc l
	

	where makhoahoc = @makhoahoc
	and daketthuc = N'Lớp đang mở'
GO
/****** Object:  StoredProcedure [dbo].[SXLopHoc]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SXLopHoc]

	@Mahocvien varchar(50),
	@Makhoahoc int,
	@malophoc int
	
As
Begin
	
	
	insert into Diem (mahocvien, makhoahoc, malophoc)
	values (@Mahocvien, @Makhoahoc,  @malophoc)

	if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;

END
GO
/****** Object:  StoredProcedure [dbo].[ThemGV]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ThemGV]
	
	@Ho nvarchar(10),
	@Tendem nvarchar(20),
	@Ten nvarchar(10),
	@Ngaysinh date,
	@Gioitinh tinyint,
	@Diachi nvarchar(150),
	@Dienthoai varchar(30),
	@Email varchar(150),
	@Bangcap nvarchar(10),
	@Diem nvarchar(10)
As

Begin
	Insert into GV
	(

		ho,
		tendem,
		ten,
		ngaysinh,
		gioitinh,
		diachi,
		dienthoai,
		email,
		bangcap,
		diem
	)
	Values
	( 

	@Ho, @Tendem, @Ten,
	@Ngaysinh, 
	@Gioitinh,
	@Diachi,
	@Dienthoai,
	@Email,
	@Bangcap,
	@Diem
	);

	if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;

END
GO
/****** Object:  StoredProcedure [dbo].[ThemHV]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[ThemHV]
	@Ho nvarchar(10),
	@Tendem nvarchar(20),
	@Ten nvarchar(10),
	@Ngaysinh date,
	@Gioitinh tinyint,
	@Diachi nvarchar(150),
	@Dienthoai varchar(30),
	@Email varchar(150)
As

Begin
	Insert into HocVien
	(
		mahocvien,
		ho,
		tendem,
		ten,
		ngaysinh,
		gioitinh,
		diachi,
		dienthoai,
		email
	)
	Values
	( 
	'HV'+CAST(Next value for HVseq as varchar(30)),
	@Ho, @Tendem, @Ten,
	@Ngaysinh, 
	@Gioitinh,
	@Diachi,
	@Dienthoai,
	@Email
	);

	if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;

END
GO
/****** Object:  StoredProcedure [dbo].[ThemKH]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ThemKH]
	@Tenkhoahoc nvarchar(150),
	@Trinhdo nvarchar(30),
	@Hocphi int,
	@Thoigian nvarchar(30)
As

Begin
	Insert into KhoaHoc
	(
		tenkhoahoc,
		trinhdo,
		hocphi,
		thoigian
	)
	Values
	( 
	@Tenkhoahoc,
	@Trinhdo,
	@Hocphi,
	@Thoigian
	);

	if @@ROWCOUNT> 0 begin return 1 end 
	else begin return 0 end;

END
GO
/****** Object:  StoredProcedure [dbo].[Tinhtranglophoc]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Tinhtranglophoc]
(@tukhoa nvarchar(50) )
as
	select distinct Daketthuc
	from LopHoc
	where lower(daketthuc) like '%'+lower(trim(@tukhoa)) + '%'
GO
/****** Object:  StoredProcedure [dbo].[tracuudiem]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[tracuudiem]
	@mahocvien varchar(50),
	@tukhoa nvarchar(50)
as 
	begin
	set @tukhoa = LOWER(@tukhoa);
	select 
		l.malophoc,
		k.tenkhoahoc,
		case when len(g.tendem) >0 then concat(g.ho,' ',g.tendem,' ',g.ten)
		else concat (g.ho,' ',g.ten) end as tengv,
		d.diemlan1
	
	from Diem d
	inner join LopHoc l  on d.malophoc = l.malophoc
	inner join KhoaHoc k on l.makhoahoc = k.makhoahoc
	inner join GV g on l.magiaovien = g.magiaovien
	where l.daketthuc = N'Lớp đang mở'
	and d.mahocvien like @mahocvien
	and lower(k.tenkhoahoc) like '%'+lower(trim(@tukhoa)) + '%';

	if @@ROWCOUNT > 0 return 1 else return 0;
	
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateGV]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateGV] 
	@Magiaovien varchar(50),
	@Ho nvarchar(10),
	@Tendem nvarchar(20),
	@Ten nvarchar(10),
	@Ngaysinh date,
	@Gioitinh tinyint,
	@Diachi nvarchar(150),
	@Dienthoai varchar(30),
	@Email varchar(150),
	@Bangcap nvarchar(10),
	@Diem nvarchar(10)
As

Begin
	Update GV
	Set 

		ngaycapnhat = GETDATE(),
		ho = @Ho,
		tendem = @Tendem,
		ten = @Ten,
		ngaysinh = @Ngaysinh,
		gioitinh = @Gioitinh,
		diachi = @Diachi,
		dienthoai = @Dienthoai,
		email = @Email,
		bangcap = @Bangcap,
		diem = @Diem
	where magiaovien = @Magiaovien;

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateHV]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateHV] 
	@Mahocvien varchar(50),
	@Ho nvarchar(10),
	@Tendem nvarchar(20),
	@Ten nvarchar(10),
	@Ngaysinh date,
	@Gioitinh tinyint,
	@Diachi nvarchar(150),
	@Dienthoai varchar(30),
	@Email varchar(150)
As

Begin
	Update Hocvien
	Set 
		
		ho = @Ho,
		tendem = @Tendem,
		ten = @Ten,
		ngaysinh = @Ngaysinh,
		gioitinh = @Gioitinh,
		diachi = @Diachi,
		dienthoai = @Dienthoai,
		email = @Email
	where mahocvien = @Mahocvien;

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateKH]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateKH] 
	@Makhoahoc int,
	@Tenkhoahoc nvarchar(150),
	@Trinhdo nvarchar(30),
	@Hocphi int,
	@Thoigian nvarchar(30)
As

Begin
	Update KhoaHoc
	Set 
		tenkhoahoc = @Tenkhoahoc,
		trinhdo = @Trinhdo,
		hocphi = @Hocphi,
		thoigian = @Thoigian
	
	where makhoahoc = @Makhoahoc;

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateLopHoc]    Script Date: 20-Oct-20 9:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateLopHoc]
	@malophoc bigint,
	@makhoahoc bigint,
	@magiaovien int,
	@lichhoc nvarchar(30),
	@ngaybatdau date,
	@ngayketthuc date,
	@daketthuc nvarchar(30)
as
	begin
	update LopHoc
	set 
		ngaycapnhat = GETDATE(),
		makhoahoc = @makhoahoc,
		magiaovien = @magiaovien,
		lichhoc = @lichhoc,
		ngaybatdau = @ngaybatdau,
		ngayketthuc = @ngayketthuc,
		daketthuc = @daketthuc
		where malophoc = @malophoc;
		
		if @@ROWCOUNT >0 return 1 else return 0 ;
		end 

GO
