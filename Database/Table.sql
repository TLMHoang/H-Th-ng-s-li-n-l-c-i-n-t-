CREATE DATABASE HeThongSoLienLac
GO

USE HeThongSoLienLac
GO

CREATE TABLE TaiKhoanTruong
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TaiKhoan VARCHAR(100),
	MatKhau VARCHAR(500)
)
GO	

CREATE TABLE TaiKhoanPH
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TaiKhoan VARCHAR(100),
	MatKhau VARCHAR(500)

)
GO

CREATE TABLE MonHoc
(
	ID INT PRIMARY KEY,
	TenMon NVARCHAR(200)
)
GO

CREATE TABLE Lop
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TenLop NVARCHAR(50)
)
GO

CREATE TABLE ThongTinGV
(
	IDTKT INT PRIMARY KEY,
	TenGV NVARCHAR(200),
	IDMonHoc INT,
	IDLop INT,

	FOREIGN KEY (IDTKT) REFERENCES dbo.TaiKhoanTruong(ID),
	FOREIGN KEY (IDMonHoc) REFERENCES dbo.MonHoc(ID),
	FOREIGN KEY (IDLop) REFERENCES dbo.Lop(ID)
)
GO

CREATE TABLE ThongTinHS
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Ten NVARCHAR(200),
	NgaySinh DATETIME,
	GioiTinh BIT,
	NoiSinh NVARCHAR(250),
	DanhToc NVARCHAR(100),
	TonGiao NVARCHAR(100),
	IDLop INT,
	IDTaiKhoan INT,
	TenMe NVARCHAR(150),
	SDTMe VARCHAR(12),
	TenBo NVARCHAR(150),
	SDTBo VARCHAR(12),

	FOREIGN KEY (IDTaiKhoan) REFERENCES dbo.TaiKhoanPH(ID),
	FOREIGN KEY (IDLop) REFERENCES dbo.Lop(ID)
)
GO

CREATE TABLE DiemDanh
(
	STT INT IDENTITY(1,1) PRIMARY KEY,
	IDHocSinh INT,
	NghiTu DATETIME,
	NghiDen DATETIME,
	SoNgayNghi INT,
	Phep BIT DEFAULT 0,

	FOREIGN KEY (IDHocSinh) REFERENCES dbo.ThongTinHS(ID)
)
GO

CREATE TABLE XinPhep
(
	STT INT IDENTITY(1,1) PRIMARY KEY,
	IDHocSinh INT,
	NghiTu DATETIME,
	NghiDen DATETIME,
	SoNgayNghi INT,

	FOREIGN KEY (IDHocSinh) REFERENCES dbo.ThongTinHS(ID)
)
GO

CREATE TABLE CupHoc
(
	STT INT IDENTITY(1,1) PRIMARY KEY,
	IDHocSinh INT,
	Ngay DATETIME,
	NghiTu INT,
	NghiDen INT,
	SoTietNghi INT,

	FOREIGN KEY (IDHocSinh) REFERENCES dbo.ThongTinHS(ID)
)
GO

CREATE TABLE HanhKiem
(
	IDHocSinh INT PRIMARY KEY,
	HocKyI NVARCHAR(20),
	HocKyII NVARCHAR(20),

	FOREIGN KEY (IDHocSinh) REFERENCES dbo.ThongTinHS(ID)
)
GO

CREATE TABLE ThoiKhoaBieu
(
	IDLop INT,
	Thu INT,
	Tiet1 NVARCHAR(40),
	Tiet2 NVARCHAR(40),
	Tiet3 NVARCHAR(40),
	Tiet4 NVARCHAR(40),
	Tiet5 NVARCHAR(40),
	Tiet6 NVARCHAR(40),
	Tiet7 NVARCHAR(40),
	Tiet8 NVARCHAR(40),
	Tiet9 NVARCHAR(40),
	Tiet10 NVARCHAR(40)
)
GO

CREATE TABLE ThongBaoTruong
(
	STT INT IDENTITY(1,1) PRIMARY KEY,
	NoiDung NVARCHAR(MAX)
)
GO	

CREATE TABLE ThongBaoLop
(
	STT INT IDENTITY(1,1) PRIMARY KEY,
	NoiDung NVARCHAR(MAX)
)
GO

CREATE TABLE ThongBaoHS
(
	STT INT IDENTITY(1,1) PRIMARY KEY,
	NoiDung NVARCHAR(MAX)
)
GO