﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DiemHeSoMot
    {
        public int STT { get; set; }
        public int IDHocSinh { get; set; }
        public double Diem { get; set; }
        public int CotThu { get; set; }
        public byte? DiemMieng { get; set; }
        public byte? Loai { get; set; }
        public byte? HocKy { get; set; }

        public DiemHeSoMot()
        {
            STT = -1;
            IDHocSinh = -1;
            Diem = 0.0;
            CotThu = 1;
            DiemMieng = 1;
            Loai = null;
            HocKy = 0;
        }

        public DiemHeSoMot(int sTT, int iDHocSinh, float diem, int cotThu, byte diemMieng, byte loai, byte hocKy)
        {
            STT = sTT;
            IDHocSinh = iDHocSinh;
            Diem = diem;
            CotThu = cotThu;
            DiemMieng = diemMieng;
            Loai = loai;
            HocKy = hocKy;
        }

        public DiemHeSoMot(DataRow dr)
        {
            STT = Convert.IsDBNull(dr["STT"]) ? -1 : Convert.ToInt32(dr["STT"]);
            IDHocSinh = Convert.IsDBNull(dr["IDHocSinh"]) ? -1 : Convert.ToInt32(dr["IDHocSinh"]);
            Diem = Convert.ToDouble(dr["Diem"]);
            CotThu = Convert.IsDBNull(dr["CotThu"]) ? 0 : Convert.ToInt32(dr["CotThu"]);
            DiemMieng = Convert.ToByte(dr["DiemMieng"]);
            Loai = Convert.ToByte(dr["Loai"]);
            HocKy = Convert.ToByte(dr["HocKy"]);
        }
    }
}
