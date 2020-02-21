CREATE DATABASE HeThongSoLienLac
GO

USE HeThongSoLienLac
GO

CREATE TABLE TaiKhoanTruong
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TaiKhoan VARCHAR(100),
	MatKhau VARCHAR(500),
	Loai BIT DEFAULT 0
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
	TenMon NVARCHAR(200),
	LoaiDiem BIT DEFAULT 1
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
	SDT VARCHAR(12),
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
	NgaySinh DATE,
	GioiTinh BIT,
	NoiSinh NVARCHAR(250),
	DanToc NVARCHAR(100),
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
	NghiTu DATE,
	NghiDen DATE,
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
	Ngay DATE,
	NghiTu INT,
	NghiDen INT,
	SoTietNghi INT,

	FOREIGN KEY (IDHocSinh) REFERENCES dbo.ThongTinHS(ID)
)
GO

CREATE TABLE HanhKiem
(
	IDHocSinh INT PRIMARY KEY,
	Loai NVARCHAR(20),
	HocKy BIT DEFAULT 0,

	FOREIGN KEY (IDHocSinh) REFERENCES dbo.ThongTinHS(ID)
)
GO

CREATE TABLE ThoiKhoaBieu
(
	IDLop INT,
	Thu INT,
	Tiet INT,
	IDMon INT,

	FOREIGN KEY (IDLop) REFERENCES  dbo.Lop(ID),
	FOREIGN KEY (IDMon) REFERENCES dbo.MonHoc(ID)
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
	IDLop INT,
	NoiDung NVARCHAR(MAX)

	FOREIGN KEY (IDLop) REFERENCES dbo.Lop(ID)
)
GO

CREATE TABLE ThongBaoHS
(
	STT INT IDENTITY(1,1) PRIMARY KEY,
	IDHocSinh INT,
	NoiDung NVARCHAR(MAX),

	FOREIGN KEY (IDHocSinh) REFERENCES dbo.ThongTinHS(ID)
)
GO
CREATE TABLE PhanCong
(
	STT INT IDENTITY(1,1) PRIMARY KEY,
	IDGiaoVien INT,
	IDLop INT,

	FOREIGN KEY (IDGiaoVien) REFERENCES dbo.TaiKhoanTruong(ID),
	FOREIGN KEY (IDLop) REFERENCES dbo.Lop(ID)
)